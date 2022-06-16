/*
	GMS_fnc_monitorInitializedMissions
	By Ghostrider-GRG-
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp"

//blck_activeMonitorThreads = blck_activeMonitorThreads + 1;
blck_monitoring = true;

//[format["_monitorInitializedMissions (17): blck_initializedMissionsList = %1", blck_initializedMissionsList]] call blck_fnc_log;

private _missionsList = blck_initializedMissionsList;
for "_i" from 1 to (count _missionsList) do 
{

	if (_i > (count _missionsList)) exitWith {};
	
	// Select a mission category (blue, red, green , etd)
	private _el = _missionsList deleteAt 0;
	_el params [
		"_key",
		"_missionTimeoutAt",			// 1  // server time at which the mission times out.
		"_triggered",					// 2  // integer - specifies if mission was triggered by a player or scripting such as debug setting
		"_missionData",					// 4  //  variable containing information specific to this instance of the mission such as location and objects
		"_missionConfigs"			// 5  // Variables regarding the configuration of the dynamic mission
	];

	#define triggered 2
	#define missionCoords _missionData select 0 
	#define delayTime 1
	
	private _monitorAction = -2;

	if (_triggered == 0) then 
	{
		if ((_missionTimeoutAt > 0) && {diag_tickTime > _missionTimeoutAt}) then 
		{
			_monitorAction = -1;
			diag_log format["_monitorInitializedMissions (37) Mission Timeout Criteria Met at %1",diag_tickTime];
		} else {
			private _playerInRange = [missionCoords, blck_TriggerDistance, false, true] call blck_fnc_playerInRange;			
			if (_playerInRange) then {
				diag_log format["_monitorInitializedMissions (41) Player in range criteria met at %1",diag_tickTime];
				_monitorAction = 0;
			} else {
				if (blck_debugLevel >= 3) then 
				{
					_monitorAction = 0;
					[format["_monitorInitializedMissions (54): mission triggered for blck_debugLeve = %1",blck_debugLevel]] call blck_fnc_log;
				};  //  simulate the mission being tripped by a player
			};
		};
	};
	
	//diag_log format["_monitorInitializedMissions: time %1 | _monitorAction %2 | _missionParameters %3",diag_tickTime,_monitorAction,_missionParameters];

	switch (_monitorAction) do 
	{
		case -2 : {
			_missionsList pushBack _el;
		}; 
		// Handle Timeout
		case -1:
		{
			[format["_fnc_monitorInitializedMissions (71): mission timed out: _endMsg %1 | el %2",_endMsg,_el]] call blck_fnc_log;
			[_key, _missionData, "", -1] call blck_fnc_endMission;
		}; 			
		
		//  Handle mission waiting to be triggerd and player is within the range to trigger		
		case 0: 
		{
			//waitUntil {!_spawningMission};
			//_spawningMission = true;  //  to prevent the script from trying to spawn multiple missions at the same time.

			#define noActive 2	
			#define waitTime 5
			#define missionData 6

			/*
				_missionData = [
					_coords,
					_mines,
					_objects,
					_hiddenObjects,
					_crates, 
					_missionInfantry,
					_assetSpawned,
					_aiVehicles,
					_lootVehicles,
					_markers];
			*/
			_missionData params [
				"_coords",
				"_mines",
				"_objects",
				"_hiddenObjects",
				"_crates",
				"_missionInfantry",
				"_assetSpawned",
				"_aiVehicles",
				"_lootVehicles",
				"_markers"
			];				
			_missionConfigs params[
				"_difficulty",
				"_markerConfigs",
				"_endCondition",	
				"_isscubamission",	
				"_missionLootConfigs",
				"_aiConfigs",
				"_missionMessages",	
				"_paraConfigs",	
				"_defaultMissionLocations"
			];	
			_markers params[
				"_markerName",
				"_markerMissionName"
			];		
			_missionMessages params [
				"_assetKilledMsg",	
				"_endMsg",
				"_startMsg"
			];		
			_missionLootConfigs params [
				"_spawnCratesTiming", 
				"_loadCratesTiming",		
				"_crateLoot", 
				"_lootCounts",
				"_missionLootBoxes",
				"_missionLootVehicles"
			];		
			_aiConfigs params [
				"_uniforms", 
				"_headgear", 
				"_vests", 
				"_backpacks", 
				"_weaponList",
				"_sideArms", 	
				"_missionLandscapeMode", 	
				"_garrisonedBuildings_BuildingPosnSystem", 
				"_garrisonedBuilding_ATLsystem",
				"_missionLandscape",
				"_simpleObjects",
				"_missionPatrolVehicles",
				"_submarinePatrols",  //  Added Build 227
				"_submarinePatrolParameters",
				"_airPatrols",
				"_noVehiclePatrols", 
				"_vehicleCrewCount",
				"_missionEmplacedWeapons",
				"_noEmplacedWeapons", 
				"_useMines", 
				"_minNoAI", 
				"_maxNoAI", 
				"_noAIGroups", 		
				"_missionGroups",
				"_scubaPatrols",  //  Added Build 227
				"_scubaGroupParameters",		
				"_hostageConfig",
				"_enemyLeaderConfig",
				"_chanceHeliPatrol", 
				"_noChoppers", 
				"_missionHelis"
			];
		

			_el set[triggered,1];
			private["_temp"];
			if (blck_SmokeAtMissions select 0) then  // spawn a fire and smoke near the crate
			{
				_temp = [_coords,blck_SmokeAtMissions select 1] call blck_fnc_smokeAtCrates;
				_objects append _temp;
				[format["_monitorInitializedMissions (181): added Smoke objects, _markerMissionName %3 | count _objects = %1 | _objects = %2",count _objects, _objects,_markerMissionName]] call blck_fnc_log;
				uiSleep delayTime;					
			};
		
			if (_useMines) then
			{
				_temp = [_coords] call blck_fnc_spawnMines;	
				_mines = _temp;
				[format["_monitorInitializedMissions (189): spawned mines for mission _markerMissionName %3 | located at %1 | mines = %2",_coords,_mines,_markerMissionName]] call blck_fnc_log;								
				uiSleep delayTime;							
			};			

			if (_missionLandscapeMode isEqualTo "random") then
			{
				_temp = [_coords,_missionLandscape, 3, 15, 2] call blck_fnc_spawnRandomLandscape;
				[format["_monitorInitializedMissions (196): spawned randomly place objects for _markerMissionName %3 | at %1 | list of objects = %2",_coords,_temp select 0,_markerMissionName]] call blck_fnc_log;
			} else {
				_temp = [_coords, _missionLandscape] call blck_fnc_spawnCompositionObjects;
				[format["_monitorInitializedMissions (199): precisly positioned objects for _markerMissionName %3 | at %1 | list of objects = %2",_coords,_temp select 0,_markerMissionName]] call blck_fnc_log;
			};
			_temp params["_obj","_hiddenObj"];
			_objects append _obj;
			_hiddenObjects append _hiddenObj;
			[format["_monitorInitializedMissions (204): added landscape objects for _markerMissionName %1 | count _objects = %2 | _objects = %3",_markerMissionName,count _objects, _objects]] call blck_fnc_log;
			uiSleep delayTime;	

			_temp = [_coords,_simpleObjects,true] call blck_fnc_spawnSimpleObjects;
			_objects append _temp;
			[format["_monitorInitializedMissions (209): added simple objects for _markerMissionName %1 | count _objects = %2 | _objects = %3",_markerMissionName,count _objects, _objects]] call blck_fnc_log;

			_ai = [_coords, _minNoAI,_maxNoAI,_noAIGroups,_missionGroups,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaMission] call blck_fnc_spawnMissionAI;
			_missionInfantry append _ai;
			[format["_monitorInitializedMissions (213): spawned mission AI for _markerMissionName %1 at %2 | with count _missionInfantry = %3 | with _missionInfantry = %4",_markerMissionName,diag_tickTime,count _missionInfantry, _missionInfantry]] call blck_fnc_log;
			uiSleep delayTime;

			if (!(_scubaGroupParameters isEqualTo []) || {_scubaPatrols > 0}) then 
			{
				_ai = [_coords, _minNoAI,_maxNoAI,_scubaPatrols,_scubaGroupParameters,_difficulty,blck_UMS_uniforms,blck_UMS_headgear,blck_UMS_vests,_backpacks,blck_UMS_weapons,_sideArms,true] call blck_fnc_spawnMissionAI;
				_missionInfantry append _ai;
				uiSleep delayTime;
			};

			// TODO: 05/08/22 -> redo code to handle this
			if !(_hostageConfig isEqualTo []) then
			{
				_temp = [_coords,_hostageConfig] call blck_fnc_spawnHostage;
				_assetSpawned = _temp select 0;
				_objects pushBack (_temp select 1);  //  The building in which the asset was spawned.
				uiSleep delayTime;
			};

			// TODO: 05/08/22 -> redo code to handle this
			if !(_enemyLeaderConfig isEqualTo []) then
			{
				_temp = [_coords,_enemyLeaderConfig] call blck_fnc_spawnLeader;
				if (_temp isEqualTo grpNull) then {throw 1} else 
				{
					_assetSpawned = _temp select 0;
					_objects pushBack (_temp select 1);	//  The building in which the asset was spawned.
					_missionInfantry pushBack _assetSpawned;
				};
				uiSleep delayTime;
			};

			private _noChoppers = [_noChoppers] call GMS_fnc_getNumberFromRange;
			[format["_monitorInitializeMissions(246): _markerMissionName %1 | _noChoppers = %2",_markerMissionName,_noChoppers]] call blck_fnc_log;
			if ((_noChoppers > 0) && {random(1) < _chanceHeliPatrol}) then
			{
				_temp = [_coords,_noChoppers,_missionHelis,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList, _sideArms] call blck_fnc_spawnMissionHelis;
				_temp params["_helisSpawned","_unitsSpawned"];
				[format["_monitorInitializeMissions (251): _markerMissionName %1 | _helisSpawned = %2",_markerMissionName,_helisSpawned]] call blck_fnc_log;			
				blck_monitoredVehicles append _helisSpawned;
				_aiVehicles append _helisSpawned;
				_missionInfantry append _unitsSpawned;				
				uisleep delayTime;				
			};	

			// TODO: 05/08/22 -> redo code to handle this
			if !(_garrisonedBuilding_ATLsystem isEqualTo []) then  // Note that there is no error checking here for nulGroups
			{
				_temp = [_coords, _garrisonedBuilding_ATLsystem, _difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_garrisonBuilding_ATLsystem;
				_temp params["_unitsSpawned","_staticsSpawned","_buildingsSpawned"];
				_objects append _buildingsSpawned;
				[format["_monitorInitializedMissions (264): added ATL Garrisons, _markerMissionName %1 | count _objects = %2 | _objects = %3",_markerMissionName,count _objects, _objects]] call blck_fnc_log;
				blck_monitoredVehicles append _staticsSpawned;
				_missionInfantry append _unitsSpawned;
				uiSleep delayTime;				
			};	

			// TODO: 05/08/22 -> redo code to handle this
			if !(_garrisonedBuildings_BuildingPosnSystem isEqualTo []) then
			{
				_temp = [_coords, _garrisonedBuildings_BuildingPosnSystem, _difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_garrisonBuilding_RelPosSystem;
				_objects append (_temp select 1);
				blck_monitoredVehicles append (_temp select 2);
				_missionInfantry append (units (_temp select 0));					
				uiSleep delayTime;
			};

			private _userelativepos = true;
			private _emplacedWeaponsThisMission = [_noEmplacedWeapons] call GMS_fnc_getNumberFromRange;
			if (blck_useStatic && {((_emplacedWeaponsThisMission > 0) || {!(_missionEmplacedWeapons isEqualTo [])} )} ) then
			{
				_temp = [_coords,_missionEmplacedWeapons,_userelativepos,_emplacedWeaponsThisMission,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_spawnEmplacedWeaponArray;
				_temp params["_statics","_units"];
				_objects append _statics;
				_missionInfantry append _units;			
				[format["_monitorInitializedMissions (288): spawned emplaced weapons for _markerMissionName %1 at %2 | with count _missionInfantry = %3 | with _statics = %4",_markerMissionName,diag_tickTime,count _missionInfantry, _statics]];															
				uisleep delayTime;				
			};


			if !(_missionLootVehicles isEqualTo []) then 
			{
				_lootVehicles = [_coords,_missionLootVehicles,_spawnCratesTiming] call blck_fnc_spawnMissionLootVehicles;				
				uiSleep delayTime;
			};

			private _noPatrols = [_noVehiclePatrols] call GMS_fnc_getNumberFromRange;
			[format["_monitorInitializedMissions (300): _markerMissionName %1 | _noPatrols (vehicle) = %2",_markerMissionName,_noPatrols]] call blck_fnc_log;
			if (blck_useVehiclePatrols && {( (_noPatrols > 0) || {!(_missionPatrolVehicles isEqualTo [])} )} ) then
			{
				_temp = [_coords,_noPatrols,_difficulty,_missionPatrolVehicles,_userelativepos,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,false,_vehicleCrewCount] call blck_fnc_spawnMissionVehiclePatrols;
				_temp params["_vehs","_units"]; 
				_aiVehicles append _vehs;
				_missionInfantry append _units;
				[format["_monitorInitializedMissions (307): spawned vehicle patrols for _markerName %1 at %2 | with count _missionInfantry = %3 | with _vehs = %4 | _missionInfantry = %5",_markerName,diag_tickTime,count _missionInfantry, _vehs, _missionInfantry]] call blck_fnc_log;
				uiSleep delayTime;				
			};	

			if (blck_useVehiclePatrols && {((_submarinePatrols > 0) || {!(_submarinePatrolParameters isEqualTo [])} )} ) then
			{
				_temp = [_coords,_noPatrols,_difficulty,_submarinePatrolParameters,_userelativepos,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaMission,_vehicleCrewCount] call blck_fnc_spawnMissionVehiclePatrols;
				_temp params["_vehs","_units"]; 
				_aiVehicles append _vehs;
				_missionInfantry append _units;
				uiSleep  delayTime;
				//[format["_monitorInitializedMissions: spawned sub patrols %1",_coords]] call blck_fnc_log;
			};		
	
			if (_spawnCratesTiming in ["atMissionSpawnGround","atMissionSpawnAir"]) then
			{
				if (_missionLootBoxes isEqualTo []) then
				{
					_crates = [_coords,[[selectRandom blck_crateTypes,[1,1,0],_crateLoot,_lootCounts]], _loadCratesTiming, _spawnCratesTiming, "start", _difficulty] call blck_fnc_spawnMissionCrates;
					[format["_monitorInitializedMissions (326): _markerName %1 | standard locations for crates at %2 | _crates = %3",_markerName,_coords,_crates]] call blck_fnc_log;
				}
				else
				{
					_crates = [_coords,_missionLootBoxes,_loadCratesTiming, _spawnCratesTiming, "start", _difficulty] call blck_fnc_spawnMissionCrates;	
					[format["_monitorInitializedMissions (331): _markerMissionName %1 | predefined locations for crates at %2 | _crates = %3",_markerMissionName,_coords,_crates]] call blck_fnc_log;												
				};
				diag_log format["monitorInitializedMission (333): _spawnCrates Timing = %1 / crates spawned = %2",_spawnCratesTiming,_crates];
				if (blck_cleanUpLootChests) then
				{
					_objects append _crates;
				};
				if (_loadCratesTiming isEqualTo "atMissionSpawn") then 
				{
					private _crateMoney = missionNamespace getVariable (format["blck_crateMoney%1",_difficulty]);
					[format["_monitorInitializedMissions (341) _crateMoney = %1",_crateMoney]] call blck_fnc_log;
					{
						[_x,missionNamespace getVariable (format["blck_crateMoney%1",_difficulty])] call GMS_fnc_setMoney;
					} forEach _crates;
					diag_log format["monitorInitializedMission (345): _markerMissionName %1 | Loot LOADED _loadCrates Timing = %2",_markerMissionName,_loadCratesTiming];
				} else {
					diag_log format["monitorInitializedMission (347): _markerMissionName %1 | NO Loot LOADED _loadCrates Timing = %2",_markerMissionName,_loadCratesTiming];
				};
			};
			[format["_monitorInitializedMissions (350): added crates, count _crates = %1 | _crates = %2",count _crates, _crates]] call blck_fnc_log;
			uiSleep  1;

			if (blck_showCountAliveAI) then
			{
				blck_missionLabelMarkers pushBack [_markers select 1,_markerMissionName,_missionInfantry];
			};
			
			{
				_x setVariable["crateSpawnPos", (getPos _x)];
			} forEach _crates;			
			[format["_monitorInitializedMissions (361): _markerName %1 | _mines = %3",_markerName,_coords,_mines]] call blck_fnc_log;
			[format["_monitorInitializedMissions (362): _markerName %1 | _crates = %3",_markerName,_coords,_crates]] call blck_fnc_log;			
			#define indexMines 1 
			#define indexCrates 4
			_missionData set[indexMines, _mines]; 
			_missionData set[indexCrates, _crates];
			//_missionData = [_coords,_mines,_objects,_hiddenObjects,_crates,_missionInfantry,_assetSpawned,_aiVehicles,_lootVehicles,_markers];

			//_el set[missionData, _missionData];

			// Everything spawned withouth serious errors so lets keep the mission active for future monitoring
			//_spawningMission = false;
			_missionsList pushBack _el;	
			_el params [
				"_key",
				"_missionTimeoutAt",			// 1  // server time at which the mission times out.
				"_triggered",					// 2  // integer - specifies if mission was triggered by a player or scripting such as debug setting
				"_missionData",					// 4  //  variable containing information specific to this instance of the mission such as location and objects
				"_missionConfigs"			// 5  // Variables regarding the configuration of the dynamic mission
			];
			_missionData params [
				"_coords",
				"_mines",
				"_objects",
				"_hiddenObjects",
				"_crates",
				"_missionInfantry",
				"_assetSpawned",
				"_aiVehicles",
				"_lootVehicles",
				"_markers"
			];
			[format["_monitorInitializedMissions (393): _markerName %1 | _coords %2 | count _mines %3 | count _objects %4 | _crates %5",_markername,_coords,count _mines,count _objects,_crates]] call blck_fnc_log;
		};
	};
	diag_log format["_monitorInitializedMissions (396) End of Code Block | blck_initializedMissionsList = %1",blck_initializedMissionsList];
};
blck_monitoring = false;
//blck_activeMonitorThreads = blck_activeMonitorThreads - 1;