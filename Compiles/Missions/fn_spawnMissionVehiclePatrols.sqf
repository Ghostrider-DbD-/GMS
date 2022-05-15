/*
	blck_fnc_spawnMissionVehiclePatrols
	by Ghostrider [GRG]
	returns [] if no groups could be created
	returns [_AI_Vehicles,_missionAI] otherwise;
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_coords","_noVehiclePatrols","_skillAI","_missionPatrolVehicles",["_useRelativePos",true],["_uniforms",[]], ["_headGear",[]],["_vests",[]],["_backpacks",[]],["_weaponList",[]],["_sideArms",[]], ["_isScubaGroup",false],["_crewCount",4]];

private["_spawnPos"];
private _vehicles = [];
private _missionAI = [];
private _abort = false;
private _patrolsThisMission = +_missionPatrolVehicles;
//diag_log format["_spawnMissionVehiclePatrols(30): _noVehiclePatrols = %1 | _patrolsThisMission = %2",_noVehiclePatrols,_patrolsThisMission];
if (_patrolsThisMission isEqualTo []) then
{
	_useRelativePos = false;
	private _spawnLocations = [_coords,_noVehiclePatrols,60,100] call blck_fnc_findPositionsAlongARadius;
	//diag_log format["_spawnMissionVehiclePatrols (35): _spawnLocations = %1",_spawnLocations];
	{

		private _veh = [_skillAI] call blck_fnc_selectPatrolVehicle;
		[format["blck_fnc_spawnMissionVehiclePatrols: _veh %1 = %2",_forEachIndex,_veh]] call blck_fnc_log;
		_patrolsThisMission pushBack [_veh, _x];
		//diag_log format["_spawnMissionVehiclePatrols(36): _v = %1 | _patrolsThisMission = %2",_v,_patrolsThisMission];
	}forEach _spawnLocations;
};
//diag_log format["_spawnMissionVehiclePatrols(42): _patrolsThisMission = %1",_patrolsThisMission];
#define configureWaypoints false
{
	_x params["_vehName","_pos"];
	if (_useRelativePos) then {_pos = _coords vectorAdd _pos};
	_pos = _pos findEmptyPosition[0,50,_vehName];	
	#define vehiclePatrolAreaDimensions [300,300]
	private _maxCrewConfigs = [_vehName,true] call BIS_fnc_crewCount;
	private _maxCrewBlck = missionNamespace getVariable[format["blck_vehCrew_%1",_skillAI],3];
	private _crewCount = _maxCrewBlck min _maxCrewConfigs;
	#define offMap [-1,-1,1]
/*
params[
	["_pos",[-1,-1,1]], 
	["_numbertospawn",0], 
	["_skillLevel","red"], 
	["_areaDimensions",[]], 
	["_uniforms",[]], 
	["_headGear",[]],
	["_vests",[]],
	["_backpacks",[]],
	["_weaponList",[]],
	["_sideArms",[]], 
	["_scuba",false]
];
*/
	private _vehGroup = [offMap,_crewCount,_skillAI,vehiclePatrolAreaDimensions,_uniforms, _headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaGroup] call blck_fnc_spawnGroup;
	
	_missionAI append (units _vehGroup);
	blck_monitoredMissionAIGroups pushBack _vehGroup;
	
	//TODO: Update waypoint system to the one used for GMSCore
	//_patrolVehicle = [_coords,_pos,_vehName,40,60,_vehGroup,useWaypoints,_crewCount] call blck_fnc_spawnVehiclePatrol; 
	// TODO: recode to use GMS_fnc to create vehicle
	//private _wep = [_static,_pos] call blck_fnc_spawnVehicle;

	//_wep setVariable["GRG_vehType","emplaced"];	
	//_wep setPosATL _pos;
	//_wep setdir _dir;

	// TODO: recode to use GMS_fnc to handle this if needed	
	//[_wep,2] call blck_fnc_configureMissionVehicle;	
	#define height 0
	#define dir 0
	#define maxDamage 0.5
	#define removeFuel 0.2
	#define vehHitCode [blck_fnc_vehicleHit] 
	#define vehKilledCode [blck_fnc_vehicleKilled]
	private _damage = 0.5;
	private _releaseToPlayers = blck_allowClaimVehicle;
	/*
		["_className",""], // Clasname of vehicle to be spawned
		["_spawnPos",[0,0,0]],  //  selfevident
		["_dir",0],  //  selfevident
		["_height",0],		
		["_disable",0],  // damage value set to this value if less than this value when all crew are dead
		["_removeFuel",0.2],  // fuel set to this value when all crew dead
		["_releaseToPlayers",true],
		["_deleteTimer",300],
		["_vehHitCode",[]],
		["_vehKilledCode",[]]
	*/	
	private _patrolVehicle = [_vehName,_pos,dir,height,maxDamage,removeFuel,_releaseToPlayers,blck_vehicleDeleteTimer,vehHitCode,vehKilledCode] call GMS_fnc_spawnPatrolVehicle;
	
	[_patrolVehicle,_vehGroup] call GMS_fnc_loadVehicleCrew;
	_vehicles pushback _patrolVehicle;
	blck_landVehiclePatrols pushBack _patrolVehicle;
} forEach _patrolsThisMission;
blck_monitoredVehicles append _vehicles;
[_vehicles, _missionAI, _abort];

