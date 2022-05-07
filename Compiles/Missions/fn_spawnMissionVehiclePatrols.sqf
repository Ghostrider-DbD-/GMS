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

if (_uniforms isEqualTo []) 		then {_uniforms = [_skillAI] call blck_fnc_selectAIUniforms};
if (_headGear  isEqualTo [])		then {_headGear = [_skillAI] call blck_fnc_selectAIHeadgear};
if (_vests isEqualTo []) 			then {_vests = [_skillAI] call blck_fnc_selectAIVests};
if (_backpacks  isEqualTo []) 		then {_backpacks = [_skillAI] call blck_fnc_selectAIBackpacks};
if (_weaponList  isEqualTo []) 		then {_weaponList = [_skillAI] call blck_fnc_selectAILoadout};
if (_sideArms isEqualTo []) 		then {[_skillAI] call blck_fnc_selectAISidearms};

private["_spawnPos","_return"];
private _vehicles = [];
private _missionAI = [];
private _abort = false;
private _patrolsThisMission = +_missionPatrolVehicles;
diag_log format["_spawnMissionVehiclePatrols(30): _noVehiclePatrols = %1 | _patrolsThisMission = %2",_noVehiclePatrols,_patrolsThisMission];
if (_patrolsThisMission isEqualTo []) then
{
	_useRelativePos = false;
	private _spawnLocations = [_coords,_noVehiclePatrols,60,100] call blck_fnc_findPositionsAlongARadius;
	//diag_log format["_spawnMissionVehiclePatrols (35): _spawnLocations = %1",_spawnLocations];
	{

		private _v = [_skillAI] call blck_fnc_selectPatrolVehicle;
		_patrolsThisMission pushBack [_v, _x];
		//diag_log format["_spawnMissionVehiclePatrols(36): _v = %1 | _patrolsThisMission = %2",_v,_patrolsThisMission];
	}forEach _spawnLocations;
};
//diag_log format["_spawnMissionVehiclePatrols(42): _patrolsThisMission = %1",_patrolsThisMission];
#define configureWaypoints false
{
	if (_useRelativePos) then
	{
		_spawnPos = _coords vectorAdd (_x select 1)
	} else {
		_spawnPos = _x select 1;
	};
	private _vehicle = _x select 0;	
	#define vehiclePatrolAreaDimensions [300,300]
	private _vehGroup = [_spawnPos,_crewCount,_skillAI,vehiclePatrolAreaDimensions,_uniforms, _headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaGroup] call blck_fnc_spawnGroup;
	_missionAI append (units _vehGroup);
	blck_monitoredMissionAIGroups pushBack _vehGroup;
	_spawnPos = _spawnPos findEmptyPosition[0,50,_vehicle];;
	#define useWaypoints true
	//TODO: Update waypoint system to the one used for GMSCore
	_patrolVehicle = [_coords,_spawnPos,_vehicle,40,60,_vehGroup,useWaypoints,_crewCount] call blck_fnc_spawnVehiclePatrol; 
	_vehicles pushback _patrolVehicle;
} forEach _patrolsThisMission;
blck_monitoredVehicles append _vehicles;

_return = [_vehicles, _missionAI, _abort];
_return
