/*
	GMS_fnc_spawnMissionHelis
*/

#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
params[
	["_coords",[0,0,0]],
	[["_markerName", ""]],
	["_missionHelis",[]],
	["_difficulty","Red"],
	["_uniforms",[]],
	["_headgear",[]],
	["_vests",[]],
	["_backpacks",[]],
	["_weaponList",[]],
	["_sideArms",[]]
];
private _helis = [];
private _units = [];
//private _patrolAreaMarker = createMarkerLocal["_gmsPatrol%1", random(10000), getMarkerPos _markerName];
//_patrolAreaMarker setMarkerShapeLocal "ELLIPSE";
//_patrolAreaMarker setMarkerSizeLocal [300,300];

//diag_log format["_spawnMissionHelis (19): GMS_monitoringInitPass = %3 | count _missionHelis = %1 | _missionHelis = %2",count _missionHelis,_missionHelis, GMS_monitoringInitPass];
{
	_x params["_heli","_relPos","_direction"];
	[format["_spawnMissionHelis: _heli = %1 | _relPos = %2 | _direction =  %3 | isClass",_heli,_relPos,_direction, isClass(configFile >> "CfgVehicles" >> _heli)]] call GMS_fnc_log;
	if (isClass(configFile >> "CfgVehicles" >> _heli)) then {
		private _noCrew = [_heli,false] call BIS_fnc_crewCount;
		private _spawnPos = _coords vectorAdd _relPos;	
		#define patrolArea [500,500]
		/* parameters for call GMS_fnc_spawnGroup;
		["_pos",[0,0,0]],  // center of the area in which to spawn units
		["_patrolAreaMarker",GMSCore_mapMarker],
		["_markerDelete",false],	
		["_units",0],  // Number of units to spawn
		["_side",GMSCore_Side],
		["_baseSkill",0.7],
		["_alertDistance",500], 	 // How far GMS will search from the group leader for enemies to alert to the kiillers location
		["_intelligence",0.5],  	// how much to bump knowsAbout after something happens
		["_bodycleanuptimer",600],  // How long to wait before deleting corpses for that group
		["_maxReloads",-1], 			// How many times the units in the group can reload. If set to -1, infinite reloads are available.
		["_removeLaunchers",true],
		["_removeNVG",true],
		["_minDamageToHeal",0.4],
		["_maxHeals",1],
		["_smokeShell",""],
		["_aiHitCode",[]],
		["_aiKilledCode",[]],
		["_chanceGarison",0]
];
		*/
		#define isScuba false
		//private _crewGroup = [_spawnPos, _markerName, true, _noCrew, GMSCore_side, _difficulty,patrolArea,_uniforms,_headGear,_vests,_backpacks,_weaponList, _sideArms,isScuba,GMS_waypointTimeoutAir,"Air"] call GMS_fnc_spawnGroup;
		//_crewGroup setVariable["GMS_group",true];
		//
		//diag_log format["_spawnMissionHelis(27): _noCrew = %1 | _crewGroup = %2| _heil = %3 | _relPos = %4",_noCrew, _crewGroup, _heli, _relPos];
		#define heliDir 0 
		#define heliHeight 100 
		#define heliRemoveFuel 0.2 	
		#define heliDamage 0.5
		#define vehHitCode [GMS_fnc_vehicleHit] 
		#define vehKilledCode [GMS_fnc_vehicleKilled]								
		private _releaseToPlayers = GMS_allowClaimVehicle;

		/*
				params[
			["_className",""],
			["_spawnPos", []],
			["_patrolAreaMarker",GMSCore_mapMarker],
			["_markerDelete",false],
			["_disable",0],  // damage value set to this value if less than this value when all crew are dead
			["_removeFuel",0.2],  // uel set to this value when all crew dead
			["_releaseToPlayers",true],
			["_deleteTimer",300],
			["_aircraftHit", []],
			["_aircraftKilled", []]
		];
		*/
		private _patrol = [_heli,_spawnPos,_markerName, true, heliDamage, heliRemoveFuel, _releaseToPlayers, GMS_vehicleDeleteTimer, vehHitCode, vehKilledCode] call GMSCore_fnc_spawnPatrolAircraft;
		_group = _patrol select 0;
		_aircraft = _patrol select 1; 
		_group setVariable["GMS_difficulty",_difficulty];



		private _gear = [
			[
				_weaponList,
				GMS_chancePrimary,
				GMS_chanceOpticsPrimary,
				GMS_chanceMuzzlePrimary,
				GMS_chancePointerPrimary,
				GMS_blacklistedPrimaryWeapons
			], // Just adding together all the subclasses of primary weaponss
			[
				_sideArms, 
				GMS_chanceSecondary, 
				GMS_chanceOpticsSecondary, 
				GMS_chanceMuzzleSecondary, 
				GMS_chancePointerSecondary,
				GMS_blacklistedSecondaryWeapons
			],
			[GMS_explosives, GMS_chanceThowable],
			[_headGear, GMS_chanceHeadgear],
			[_uniforms, GMS_chanceUniform],
			[_vests, GMS_chanceVest],
			[_backpacks, GMS_chanceBackpack],
			[GMS_launcherTypes, 1.0],  // this is determined elsewhere for GMSAI
			[GMS_NVG, 1.0],  // this is determined elsewhere for GMSAI
			[GMS_binocs,GMS_chanceBinoc],
			[GMS_ConsumableItems, 1.0],
			[GMS_medicalItems, 1.0],
			[GMS_loot, 1.0]
		];
		[_group,_gear,GMS_launchersPerGroup,GMS_useNVG] call GMSCore_fnc_setupGroupGear;
		private _money = (missionNamespace getVariable[format["GMS_rewards%1",_skillLevel],GMS_rewardsOrange]) select 0;
		//diag_log format["GMS_fnc_spawnGroup: _money = %1 | _group = %2",_money,_group];
		[_group,_difficulty,_money] call GMSCore_fnc_setupGroupMoney;
		//[_group] call GMSCore_fnc_updateWaypointConfigs; // apply any settings related to hunting or searching based on vehicle type
		_units append (units _group);
		_helis pushBack _aircraft;
		//if (GMS_debugLevel > 0) then {[format["_spawnMissionHelis: _heli %1 spawned with pilot %2 and crew %2",typeOf _aircraft, currentPilot _aircraft, _crewGroup]] call GMS_fnc_log};
	} else {
		[format["GMS_fnc_spawnMissionHelis:   Invalid classname %1 used in _airPatrols", _heli],"warning"] call GMS_fnc_log;
	};

} forEach _missionHelis;
//[format["GMS_fnc_spawnMissionHelis:  count _units = %1 | count _helis = %2", count _units, count _helis]] call GMS_fnc_log;
//GMS_spawnHelisPass = GMS_spawnHelisPass + 1;
[_helis,_units]