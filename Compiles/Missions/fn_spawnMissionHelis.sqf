/*
	GMS_fnc_spawnMissionHelis
*/

#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
params[
	["_coords",[0,0,0]],
	["_markerName", ""],
	["_missionHelis",[]],
	["_difficulty","Red"],
	["_uniforms",[]],
	["_headgear",[]],
	["_vests",[]],
	["_backpacks",[]],
	["_weaponList",[]],
	["_sideArms",[]]
];
private _helisSpawned = [];
private _unitsSpawned = [];
private _difficultyIndex = [_difficulty] call GMS_fnc_getIndexFromDifficulty;

{
	_x params["_heli","_relPos"];
	//[format["_spawnMissionHelis: _heli %1 | _relPos %2", _heli, _relPos]] call GMS_fnc_log;
	if (isClass(configFile >> "CfgVehicles" >> _heli)) then {
		private _noCrew = [_heli,false] call BIS_fnc_crewCount;
		private _spawnPos = _coords vectorAdd _relPos;	
		#define patrolArea [500,500]
		#define heliDir 0 
		#define heliHeight 100 
		#define heliRemoveFuel 0.2 	
		#define heliDamage 0.5  // amount of overall damage set when released to players
		#define vehHitCode [GMS_fnc_vehicleHit] 
		#define vehKilledCode [GMS_fnc_vehicleKilled]	
		#define markerDelete true 							
		private _releaseToPlayers = GMS_allowClaimVehicle;
		private _patrol = [_heli,_spawnPos,_markerName, markerDelete, heliDamage, heliRemoveFuel, _releaseToPlayers, GMS_vehicleDeleteTimer, vehHitCode, vehKilledCode] call GMSCore_fnc_spawnPatrolAir;
		_group = _patrol select 0;
		_aircraft = _patrol select 1; 
		_unitsSpawned append (units _group);
		_helisSpawned pushBack _aircraft;
		[_group, _difficulty, _weaponList, _sideArms, _headGear, _uniforms, _vests, _backpacks] call GMS_fnc_configureGroup;
		#define maxUnitReloads -1 // Infinite reloads 
		#define minDamageToHeal 0.4 
		#define maximumNumberHeals 1 // allow one heal only 
		#define smokeShellType "SmokeShellRed"
		#define chanceUnitsGarison 0
		#define unitHitCode [] 
		#define unitKilledCode [GMS_fnc_unitKilled]
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

		[_aircraft,GMS_forbidenWeapons,GMS_forbidenMagazines] call GMSCore_fnc_disableVehicleWeapons;
		[_aircraft,GMS_disabledSensors] call GMSCore_fnc_disableVehicleSensors;
		if (GMS_disableInfrared) then {_ve_aircrafthicle disableTIEquipment true};	

		// TODO: remove this line which is here to force the script to run
		[_group] call GMSCore_fnc_antiStuckAir;	
	} else {
		[format["GMS_fnc_spawnMissionHelis:   Invalid classname %1 used in _airPatrols", _heli],"warning"] call GMS_fnc_log;
	};
} forEach _missionHelis;

[_helisSpawned,_unitsSpawned]