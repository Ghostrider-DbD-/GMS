/*
	GMS_fnc_spawnMissionVehiclePatrols
	by Ghostrider [GRG]
	returns [] if no groups could be created
	returns [_AI_Vehicles,_missionAI] otherwise;
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"

params[
	["_coords",[]],
	["_markerName", ""],
	["_skillAI","Red"],
	["_missionPatrolVehicles",[]],
	["_uniforms",[]], 
	["_headGear",[]],
	["_vests",[]],
	["_backpacks",[]],
	["_weaponList",[]],
	["_sideArms",[]], 
	["_isScubaGroup",false],
	["_maxCrewParam",4]
];
[format["_spawnMissionVehiclePatrols: _coords %1 | _markerName %2", _coords, _markerName]] call GMS_fnc_log;
private["_spawnPos"];
private _vehiclesSpawned = [];
private _unitsSpawned = [];
private _patrolsThisMission = +_missionPatrolVehicles;
private _difficultyIndex = [_difficulty] call GMS_fnc_getIndexFromDifficulty;
private _missionai = [];
private _missionVehicles = [];
#define markerDelete true
{
	_x params[["_vehName",""],["_pos",[]],["_dir",0]];
	_pos = _coords vectorAdd _pos;  // else {_pos = (_coords vectorAdd _pos) findEmptyPosition[0,50,_vehName]};
	if (isClass(configFile >> "CfgVehicles" >> _vehName)) then {
		if !(_pos isEqualTo []) then {		
			#define vehiclePatrolAreaDimensions [100,100]
			private _maxCrewConfigs = [_vehName,true] call BIS_fnc_crewCount;
			//private _maxCrew = missionNamespace getVariable[format["GMS_vehCrew_%1",_skillAI],3];
			private _crewCount = _maxCrewParam min _maxCrewConfigs;
			
			#define height 0
			#define dir 0
			#define maxDamage 0.5
			#define removeFuel 0.2
			#define vehHitCode [GMS_fnc_vehicleHit] 
			#define vehKilledCode [GMS_fnc_vehicleKilled]
			private _damage = 0.5;
			private _releaseToPlayers = GMS_allowClaimVehicle;
			private _patrol = [_vehName,_pos, _markerName, markerDelete, maxDamage,removeFuel,_releaseToPlayers,GMS_vehicleDeleteTimer,vehHitCode,vehKilledCode] call GMSCore_fnc_spawnPatrolLand;
			private _group = _patrol select 0;
			private _vehicle = _patrol select 1;
			#define maxGunnersCrew 5
			#define maxCargoCrew 5 
			//[format["_spawnMissionVehiclePatrols:  _group %1 | _vehicle %2", _group, _vehicle]] call GMS_fnc_log;
			[_group, _vehicle, maxGunnersCrew, maxCargoCrew] call GMSCore_fnc_addVehicleCrew;
			[_group, _difficulty, _weaponList, _sideArms, _headGear, _uniforms, _vests, _backpacks] call GMS_fnc_configureGroup;	

			#define maxUnitReloads -1 // Infinite reloads 
			#define maximumNumberHeals 1 // allow one heal only 
			#define smokeShellType "SmokeShellRed"
			#define chanceUnitsGarison 0
			#define unitHitCode [] 
			#define unitKilledCode [GMS_fnc_unitKilled]
			#define minDamageToHeal 0.4 

			[
				_group, 
				GMS_baseSkill,
				GMS_AIAlertDistance select _difficultyIndex,
				GMS_AIIntelligence select _difficultyIndex,
				GMS_bodyCleanUpTimer,
				maxUnitReloads,
				GMS_launcherCleanup, 
				GMS_removeNVG, 
				minDamageToHeal,
				maximumNumberHeals,
				smokeShellType,
				unitHitCode,
				unitKilledCode,
				chanceUnitsGarison
			] call GMSCore_fnc_initializeGroup; 					
			
			[_vehicle,GMS_forbidenWeapons,GMS_forbidenMagazines] call GMSCore_fnc_disableVehicleWeapons;
			[_vehicle,GMS_disabledSensors] call GMSCore_fnc_disableVehicleSensors;
			if (GMS_disableInfrared) then {_vehicle disableTIEquipment true};
			_missionAI append (units _group);
			GMS_monitoredMissionAIGroups pushBack _group;			
			_missionVehicles pushback _vehicle;
			_unitsSpawned append (units _group);
			//if (GMS_debugLevel > 0) then {[format["_spawnMissionVehiclePatrols: _vehName %1 spawned with driver %2 and crew %3",_vehName,driver _vehicle, _group]] call GMS_fnc_log};
			// TODO: remove this line which is here to force the script to run
			[_group] call GMSCore_fnc_antiStuckLand;				
		};
	} else {
		[format["GMS_fnc_spawnMissionVehiclePatrols: Invalid classname %1 used in __missionPatrolVehicles", _vehName],"warning"] call GMS_fnc_log;
	};
} forEach _patrolsThisMission;
GMS_landVehiclePatrols append _missionVehicles;
GMS_monitoredVehicles append _missionVehicles;
//[format["GMS_fnc_spawnMissionVehiclePatrols:  count _missionAI = %1 | count _missionVehicles = %2", count _missionAI, count _missionVehicles]] call GMS_fnc_log;
[_missionVehicles, _missionAI]

