/*
	GMS_fnc_monitorInitializedMissions
	by Ghostrider-GRG-
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
#define missionData 4
#define noActive 2
#define waitTime 5
#define missionTimeout 1

blck_activeMonitorThreads = blck_activeMonitorThreads + 1;

for "_i" from 1 to (count blck_activeMissionsList) do 
{

	if (_i > (count blck_activeMissionsList)) exitWith {};
	
	// Select a mission category (blue, red, green , etd)
	private _el = blck_activeMissionsList deleteAt 0;
	_el params [
		"_missionCategoryDescriptors",  // 0
		"_missionTimeoutAt",			// 1  // server time at which the mission times out.
		"_triggered",					// 2  // true/false - specifies if mission was triggered by a player or scripting such as debug setting
		"_spawnPara",					// 3  // true/false - specifies if para reinforcements were spawned
		"_missionData",					// 4  //  variable containing information specific to this instance of the mission such as location and objects
		"_missionParameters"			// 5  // Variables regarding the configuration of the dynamic mission
	];

	#define delayTime 1
	private _monitorAction = -2;

	if (_triggered == 0) then 
	{
		if ((_missionTimeoutAt > 0) && {diag_tickTime > _missionTimeoutAt}) then 
		{
			_monitorAction = -1;
			//diag_log format["_monitorInitializedMissions (37) Mission Timeout Criteria Met at %1",diag_tickTime];
		} else {
			private _playerInRange = [_missionData select 0, blck_TriggerDistance, false, true] call blck_fnc_playerInRange;			
			if (_playerInRange) then {
				//diag_log format["_monitorInitializedMissions (41) Player in range criteria met at %1",diag_tickTime];
				_monitorAction = 0;
			} else {
				if (blck_debugLevel >= 3) then {_monitorAction = 0};  //  simulate the mission being tripped by a player
			};
		};
	} else {
		if (_triggered == 1) then 
		{
			//diag_log format["_monitorInitializedMissions (50) Mission already triggered: time %1",diag_tickTime];
			_monitorAction = 1;
		}; 
	};
	
	//diag_log format["_monitorInitializedMissions: time %1 | _monitorAction %2 | _missionParameters %3",diag_tickTime,_monitorAction,_missionParameters];

	if (_monitorAction == -2) then 
	{
		blck_activeMissionsList pushBack _el;
	} else {
		_missionCategoryDescriptors params [
			"_difficulty",
			"_noMissions",  // Max no missions of this category
			"_noActive",  // Number active 
			"_tMin", // Used to calculate waittime in the future
			"_tMax", // as above
			"_waitTime",  // time at which a mission should be spawned
			"_missionsData"  // 
		];

		_missionData params [
			"_coords",
			"_mines",
			"_objects",
			"_hiddenObjects",
			"_crates",
			"_blck_AllMissionAI",
			"_assetSpawned",
			"_missionAIVehicles",
			"_spawnedLootVehicles",
			"_markers"
		];

		switch (_monitorAction) do 
		{

			// Handle Timeout
			case -1:
			{
				_missionParameters params[
					"_markerData",
					"_missionMessages"	
				];
				_markerData params[
					"_markerName",
					"_markerMissionName"
				];
				_missionMessages params [
					"_assetKilledMsg",	
					"_endMsg"
				];								
				[format["_fnc_monitorInitializedMissions: mission timed out: %1",_el]] call blck_fnc_log;
				_missionCategoryDescriptors set[noActive, _noActive - 1];
				[_coords,_mines,_objects,_hiddenObjects,_crates, _blck_AllMissionAI,_endMsg,_markers,markerPos (_markers select 1),_markerName,_markerMissionName,  -1] call blck_fnc_endMission;
			}; 			
			
			//  Handle mission waiting to be triggerd and player is within the range to trigger		
			case 0: 
			{
				
				_missionParameters params[
					"_markerData",
					"_missionMessages",
					"_paraData",
					"_endCondition",	
					"_isscubamission",	
					"_missionLoot",
					"_aiData"
				];	
				_markerData params[
					"_markerName",
					"_markerMissionName"
				];		
				_missionMessages params [
					"_assetKilledMsg",	
					"_endMsg",
					"_startMsg"
				];		
				_missionLoot params [
					"_spawnCratesTiming", 
					"_loadCratesTiming",		
					"_crateLoot", 
					"_lootCounts",
					"_missionLootBoxes",
					"_missionLootVehicles"
				];		
				_aiData params [
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
				#define triggered 2
				_el set[triggered,1];
				_el set[missionTimeout,-1];  //  reset this now that the mission has been triggered
				private["_temp"];
				if (blck_SmokeAtMissions select 0) then  // spawn a fire and smoke near the crate
				{
					_temp = [_coords,blck_SmokeAtMissions select 1] call blck_fnc_smokeAtCrates;
					//[format["_monitorInitializedMissions: spawn smoking object at %1 | objects = %2",_coords,_temp]] call blck_fnc_log;					
					if (_temp isEqualType []) then 
					{
						_objects append _temp;
						uiSleep delayTime;
					};
				};
				
				if (_useMines) then
				{
					_mines = [_coords] call blck_fnc_spawnMines;
					//[format["_monitorInitializedMissions: spawned mines for mission at %1 | mines = %2",_coords,_mines]] call blck_fnc_log;					
					uiSleep delayTime;
				};

				if (_missionLandscapeMode isEqualTo "random") then
				{
					_temp = [_coords,_missionLandscape, 3, 15, 2] call blck_fnc_spawnRandomLandscape;
					[format["_monitorInitializedMissions: spawned randomly place objects at %1 | list of objects = %2",_coords,_temp select 0]] call blck_fnc_log;
				} else {
					_temp = [_coords, _missionLandscape] call blck_fnc_spawnCompositionObjects;
					//[format["_monitorInitializedMissions: precisly positioned objects at %1 | list of objects = %2",_coords,_temp select 0]] call blck_fnc_log;
				};
				_temp params["_obj","_hiddenObj"];
				_objects append _obj;
				_hiddenObjects append _hiddenObj;
				
				uiSleep delayTime;	

				_temp = [_coords,_simpleObjects,true] call blck_fnc_spawnSimpleObjects;
				_objects append _temp;
	
				try {
					_ai = [_coords, _minNoAI,_maxNoAI,_noAIGroups,_missionGroups,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaMission] call blck_fnc_spawnMissionAI;
					_blck_AllMissionAI append _ai;
					[format["_monitorInitializedMissions: spawned mission AI at %1 | with count _blck_AllMissionAI = %2 | with _blck_AllMissionAI = %3",diag_tickTime,count _blck_AllMissionAI, _blck_AllMissionAI]] call blck_fnc_log;
					uiSleep delayTime;

					if !(_scubaGroupParameters isEqualTo [] || {_scubaPatrols > 0}) then 
					{
						_ai = [_coords, _minNoAI,_maxNoAI,_scubaPatrols,_scubaGroupParameters,_difficulty,blck_UMS_uniforms,blck_UMS_headgear,blck_UMS_vests,_backpacks,blck_UMS_weapons,_sideArms,true] call blck_fnc_spawnMissionAI;
						_blck_AllMissionAI append (_ai);
					};
					uiSleep delayTime;

					// TODO: 05/08/22 -> redo code to handle this
					if !(_hostageConfig isEqualTo []) then
					{
						_temp = [_coords,_hostageConfig] call blck_fnc_spawnHostage;
						if (_temp isEqualTo grpNull) then {throw 1} else 
						{
							_assetSpawned = _temp select 0;
							_objects pushBack (_temp select 1);
							_blck_AllMissionAI pushBack _assetSpawned;
						};
					};

					// TODO: 05/08/22 -> redo code to handle this
					if !(_enemyLeaderConfig isEqualTo []) then
					{
						private _temp = [_coords,_enemyLeaderConfig] call blck_fnc_spawnLeader;
						if (_temp isEqualTo grpNull) then {throw 1} else 
						{
							_assetSpawned = _temp select 0;
							_objects pushBack (_temp select 1);	
							_blck_AllMissionAI pushBack _assetSpawned;
						};
					};

					private _noChoppers = [_noChoppers] call blck_fnc_getNumberFromRange;
					[format["_monitorInitializeMissions(248): _noChoppers = %1",_noChoppers]] call blck_fnc_log;
					if ((_noChoppers > 0) && {random(1) < _chanceHeliPatrol}) then
					{
						_temp = [_coords,_noChoppers,_missionHelis,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList, _sideArms] call blck_fnc_spawnMissionHelis;
						_temp params["_helisSpawned","_unitsSpawned"];
						[format["_monitorInitializeMissions: _helisSpawned = %1",_helisSpawned]] call blck_fnc_log;
						blck_monitoredVehicles append _helisSpawned;
						_missionAIVehicles append _helisSpawned;
						_blck_AllMissionAI append _unitsSpawned;
					};		
					uisleep 3;

					// TODO: 05/08/22 -> redo code to handle this
					if !(_garrisonedBuilding_ATLsystem isEqualTo []) then  // Note that there is no error checking here for nulGroups
					{
						private _temp = [_coords, _garrisonedBuilding_ATLsystem, _difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_garrisonBuilding_ATLsystem;
						_temp params["_unitsSpawned","_staticsSpawned","_buildingsSpawned"];
						_objects append _buildingsSpawned;
						blck_monitoredVehicles append _staticsSpawned;
						_blck_AllMissionAI append _unitsSpawned;
					};	
					uiSleep 3;
					// TODO: 05/08/22 -> redo code to handle this
					if !(_garrisonedBuildings_BuildingPosnSystem isEqualTo []) then
					{
						private _temp = [_coords, _garrisonedBuildings_BuildingPosnSystem, _difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_garrisonBuilding_RelPosSystem;
						if (_temp isEqualTo grpNull) then {throw 1} else 
						{
							_objects append (_temp select 1);
							blck_monitoredVehicles append (_temp select 2);
							_blck_AllMissionAI append (units (_temp select 0));
						};
					};		
					uiSleep 5;

					private _userelativepos = true;
					private _emplacedWeaponsThisMission = [_noEmplacedWeapons] call blck_fnc_getNumberFromRange;
					if (blck_useStatic && {((_emplacedWeaponsThisMission > 0) || {!(_missionEmplacedWeapons isEqualTo [])} )} ) then
					{
						private _temp = [_coords,_missionEmplacedWeapons,_userelativepos,_emplacedWeaponsThisMission,_difficulty,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms] call blck_fnc_spawnEmplacedWeaponArray;
						_temp params["_statics","_units"];
						_objects append _statics;
						_blck_AllMissionAI append _units;
						//[format["_monitorInitializedMissions: spawned emplaced weapons at %1 | with count _blck_AllMissionAI = %2 | with _statics = %3",diag_tickTime,count _blck_AllMissionAI, _statics]]											
					};	
					uisleep 3;

					if !(_missionLootVehicles isEqualTo []) then 
					{
						_spawnedLootVehicles = [_coords,_missionLootVehicles,_spawnCratesTiming] call blck_fnc_spawnMissionLootVehicles;
					};

					private _noPatrols = [_noVehiclePatrols] call blck_fnc_getNumberFromRange;
					//[format["_monitorInitializedMissions: _noPatrols (vehicle) = %1",_noPatrols]] call blck_fnc_log;
					if (blck_useVehiclePatrols && {( (_noPatrols > 0) || {!(_missionPatrolVehicles isEqualTo [])} )} ) then
					{
						_temp = [_coords,_noPatrols,_difficulty,_missionPatrolVehicles,_userelativepos,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,false,_vehicleCrewCount] call blck_fnc_spawnMissionVehiclePatrols;
						_temp params["_vehs","_units"]; 
						_missionAIVehicles append _vehs;
						_blck_AllMissionAI append _units;
						//[format["_monitorInitializedMissions: spawned vehicle patrols at %1 | with count _blck_AllMissionAI = %2 | with _vehs = %3 | _blck_AllMissionAI = %4",diag_tickTime,count _blck_AllMissionAI, _vehs, _blck_AllMissionAI]] call blck_fnc_log;									
					};	
		
					uiSleep  3;
					if (blck_useVehiclePatrols && {((_submarinePatrols > 0) || {!(_submarinePatrolParameters isEqualTo [])} )} ) then
					{
						_temp = [_coords,_noPatrols,_difficulty,_submarinePatrolParameters,_userelativepos,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaMission,_vehicleCrewCount] call blck_fnc_spawnMissionVehiclePatrols;
						//[format["_monitorInitializedMissions: spawned sub patrols %1",_coords]] call blck_fnc_log;
						_temp params["_vehs","_units"]; 
						_missionAIVehicles append _vehs;
						_blck_AllMissionAI append _units;
					};		

					uiSleep  3;
					if (_spawnCratesTiming in ["atMissionSpawnGround","atMissionSpawnAir"]) then
					{
						if (_missionLootBoxes isEqualTo []) then
						{
							_crates = [_coords,[[selectRandom blck_crateTypes,[1,1,0],_crateLoot,_lootCounts]], _loadCratesTiming, _spawnCratesTiming, "start", _difficulty] call blck_fnc_spawnMissionCrates;
							//[format["_monitorInitializedMissions: standard locations for crates at %1 | _crates = %2",_coords,_crates]] call blck_fnc_log;
						}
						else
						{
							_crates = [_coords,_missionLootBoxes,_loadCratesTiming, _spawnCratesTiming, "start", _difficulty] call blck_fnc_spawnMissionCrates;	
							//[format["_monitorInitializedMissions: predefined locations for crates at %1 | _crates = %2",_coords,_crates]] call blck_fnc_log;												
						};
						//diag_log format["monitorInitializedMission: _spawnCrates Timing = %1 / crates spawned = %2",_spawnCratesTiming,_crate];
						if (blck_cleanUpLootChests) then
						{
							_objects append _crates;
						};
						if (_loadCratesTiming isEqualTo "atMissionSpawn") then 
						{
							private _crateMoney = missionNamespace getVariable (format["blck_crateMoney%1",_difficulty]);
							[format["_monitorInitializedMissions (342) _crateMoney = %1",_crateMoney]] call blck_fnc_log;
							{
								//[_x,missionNamespace getVariable (format["blck_crateMoney%1",_difficulty])] call GMS_fnc_setMoney;
							} forEach _crates;
							//diag_log format["monitorInitializedMission: Loot LOADED _loadCrates Timing = %1",_loadCratesTiming];
						} else {
							//diag_log format["monitorInitializedMission: NO Loot LOADED _loadCrates Timing = %1",_loadCratesTiming];
						};
					};
					
					uiSleep  1;

					if (blck_showCountAliveAI) then
					{
						blck_missionLabelMarkers pushBack [_markers select 1,_markerMissionName,_blck_AllMissionAI];
					};
					
					{
						_x setVariable["crateSpawnPos", (getPos _x)];
					} forEach _crates;			
			
					_missionData = [_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_assetSpawned,_missionAIVehicles,_spawnedLootVehicles,_markers];
					_el set[missionTimeout, diag_tickTime + blck_MissionTimeout];
					_el set[missionData, _missionData];

					// Everything spawned withouth serious errors so lets keep the mission active for future monitoring

					blck_activeMissionsList pushBack _el;	
				} 
				
				catch 
				{
					if (_exception isEqualTo 1) then 
					{
						_missionCategoryDescriptors set[noActive, _noActive - 1];				
						[_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_endMsg,_markers,markerPos (_markers select 1),_markerName,_markerMissionName,  1] call blck_fnc_endMission;
						["Critial Error returned by one or more critical functions, mission spawning aborted!",'error'] call blck_fnc_log;
					};
				};
			};

			case 1:
			{
				_missionParameters params[
					"_markerData",
					"_missionMessages",
					"_paraData",
					"_endCondition",	
					"_isscubamission",	
					"_missionLoot",
					"_aiData"	
				];

				_markerData params [
					"_markerName",
					"_markerMissionName"
				];
				
				_missionMessages params [
					"_assetKilledMsg",	
					"_endMsg"
				];

				_missionLoot params [
					"_spawnCratesTiming", 
					"_loadCratesTiming",		
					"_crateLoot", 
					"_lootCounts",
					"_missionLootBoxes",
					"_missionLootVehicles"
				];	

				private _missionComplete = -1;
				private ["_secureAsset","_endIfPlayerNear","_endIfAIKilled"];
			
				/*
					"_endCondition",
				*/
				_secureAsset = false;
				_endIfPlayerNear = true;
				_endIfAIKilled = true;

				switch (_endCondition) do
				{
					case playerNear: {_secureAsset = false; _endIfPlayerNear = true;_endIfAIKilled = false;};
					case allUnitsKilled: {_secureAsset = false; _endIfPlayerNear = false;_endIfAIKilled = true;};
					case allKilledOrPlayerNear: {_secureAsset = false; _endIfPlayerNear = true;_endIfAIKilled = true;};
					case assetSecured: {_secureAsset = true; _endIfPlayerNear = false; _endIfAIKilled = false;};
				};

				try {
					//[format["_monitorInitializedMissions (448): count _blck_AllMissionAI = %1",count _blck_AllMissionAI]] call blck_fnc_log;
					if (blck_debugLevel >= 4) throw 5;
					private _playerIsNearCrates = [_crates,20,true] call blck_fnc_playerInRangeArray;
					private _playerIsNearCenter = [_coords,20,true] call blck_fnc_playerInRange;
					private _playerIsNear = if (_playerIsNearCrates || {_playerIsNearCenter}) then {true} else {false};
					private _minNoAliveForCompletion = (count _blck_AllMissionAI) - (round(blck_killPercentage * (count _blck_AllMissionAI)));			
					private _aiKilled = if (({alive _x} count _blck_AllMissionAI) <= _minNoAliveForCompletion)  then {true} else {false}; // mission complete
			
					if (_endIfPlayerNear) then
					{
						if (_playerIsNear) throw 1; // mission complete
					};

					if (_endIfAIKilled) then
					{
						if (_aiKilled) throw 1;
					};

					if (_spawnPara || {blck_debugLevel >= 3}) then
					{
						if ([_coords,_paraData select 1,true] call blck_fnc_playerInRange) then
						{
							_spawnPara = false; // The player gets one try to spawn these.
							_el set[3,_spawnPara];
							_paraData params[								
								"_noPara", 
								"_paraTriggerDistance",
								"_paraSkill",
								"_chanceLoot", 
								"_paraLoot", 
								"_paraLootCounts"
							];						
							_aiData params [
								"_uniforms", 
								"_headgear", 
								"_vests", 
								"_backpacks", 
								"_weaponList",
								"_sideArms"	
							];	
							/*
							params[
								["_pos",[0,0,0]], 
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
							#define areadDimensions [50,50]
							private _paraGroup = [_coords,_noPara,_difficulty,areadDimensions,_uniforms,_headGear,_vests,_backpacks,_weaponList,_sideArms,_isScubaMission] call blck_fnc_spawnParaUnits;
							
							_blck_AllMissionAI append (units _paraGroup);
							if (random(1) < _chanceLoot) then
							{
								private _extraCrates = [_coords,[[selectRandom blck_crateTypes,[0,0,0],_paraLoot,_paraLootCounts]], "atMissionSpawn","atMissionSpawnAir", "start", _difficulty] call blck_fnc_spawnMissionCrates;
								if (blck_cleanUpLootChests) then
								{
									_objects append _extraCrates;
								};		
							};	
							_missionData = [_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_assetSpawned,_missionAIVehicles,_spawnedLootVehicles,_markers];
							_el set[missionData, _missionData];							
							//diag_log format["_monitorInitializedMissions: para spawned at %1",diag_tickTime];
						};
					};

					if (_secureAsset) then
					{		
						if !(alive _assetSpawned) then 
						{
							throw 3;
						} else {
							
							if (({alive _x} count _blck_AllMissionAI) <= (_minNoAliveForCompletion + 1)) then
							{
								if ((_assetSpawned getVariable["blck_unguarded",0]) isEqualTo 0) then 
								{
									_assetSpawned setVariable["blck_unguarded",1,true];
								};
								
								if ((_assetSpawned getVariable["blck_AIState",0]) isEqualTo 1) then 
								{
									_assetSpawned allowdamage false;
									[_assetSpawned] remoteExec["GMS_fnc_clearAllActions",-2, true];
									throw 1;								
								};
							};
						};
					};

					private _moved = false;
					if ((_spawnCratesTiming isEqualTo "atMissionSpawnGround") && {blck_crateMoveAllowed}) then 
					{
						{
							if ( _x distance (_x getVariable ["crateSpawnPos", (getPos _x)]) > max_distance_crate_moved_uncompleted_mission) throw 2;
						} forEach _crates;
					};

					// If there were no throws then lets check on the mission in a bit.
					blck_activeMissionsList pushBack _el;	
				}

				catch // catch all conditions that cause the mission to end.
				{
					switch (_exception) do 
					{
						case 1: {  // Normal Mission End
							diag_log format["_monitorInitializedMissions: Normal mission end"];
							if (_spawnCratesTiming in ["atMissionEndGround","atMissionEndAir"]) then
							{
								if (!(_secureAsset) || {(_secureAsset && {(alive _assetSpawned)} )} ) then
								{
									if !(_missionLootBoxes isEqualTo []) then
									{
										_crates = [_coords,_missionLootBoxes,_loadCratesTiming,_spawnCratesTiming, "end", _difficulty] call blck_fnc_spawnMissionCrates;
									}
									else
									{
										_crates = [_coords,[[selectRandom blck_crateTypes,[0,0,0],_crateLoot,_lootCounts]], _loadCratesTiming,_spawnCratesTiming, "end", _difficulty] call blck_fnc_spawnMissionCrates;
									};
									
									if (blck_cleanUpLootChests) then
									{
										_objects append _crates;
									};
									private _crateMoney = missionNamespace getVariable (format["blck_crateMoney%1",_difficulty]);	
									[format["_monitorInitializedMissions (564) _crateMoney = %1",_crateMoney]] call blck_fnc_log;																		
									{
										//[_x, _crateMoney] call GMS_fnc_setMoney;
									} forEach _crates;		
																	
								};
							};	

							if (_loadCratesTiming isEqualTo "atMissionCompletion") then
							{
								if (!(_secureAsset) || {(_secureAsset && {(alive _assetSpawned)} )} ) then
								{
									private _crateMoney = missionNamespace getVariable (format["blck_crateMoney%1",_difficulty]);
									[format["_monitorInitializedMissions (576) _crateMoney = %1",_crateMoney]] call blck_fnc_log;									
									{
										[_x] call blck_fnc_loadMissionCrate;											
										//[_x, missionNamespace getVariable (format["blck_crateMoney%1",_difficulty])] call GMS_fnc_setMoney;									
									} forEach _crates;
									//diag_log format["monitorInitializedMission (586): Loot LOADED _loadCrates Timing = %1",_loadCratesTiming];									
									{
										[_x] call blck_fnc_loadMissionCrate;											
										//[_x, missionNamespace getVariable (format["blck_crateMoney%1",_difficulty])] call GMS_fnc_setMoney;										
									} forEach _spawnedLootVehicles;		
									//diag_log format["monitorInitializedMission (592): Loot LOADED _loadCrates Timing = %1",_loadCratesTiming];																	
								};
							};
							_missionAIVehicles append _spawnedLootVehicles;  //  So these are deleted if no player enters the driver's seat.
							if (_secureAsset && {(alive _assetSpawned)}) then
							{
								if (_assetSpawned getVariable["assetType",0] isEqualTo 1) then
								{
									_assetSpawned setVariable["GMSAnimations",[""],true];
									[_assetSpawned,""] remoteExec["switchMove",-2];;
									uiSleep 0.1;
									_assetSpawned enableAI "ALL";
									private _newPos = (getPos _assetSpawned) getPos [1000, random(360)];
									(group _assetSpawned) setCurrentWaypoint [group _assetSpawned, 0];
									[group _assetSpawned,0] setWaypointPosition [_newPos,0];
									[group _assetSpawned,0] setWaypointType "MOVE";
								};

								if (_assetSpawned getVariable["assetType",0] isEqualTo 2) then
								{
									[_assetSpawned,""] remoteExec["switchMove",-2];
									_assetSpawned setVariable["GMSAnimations",_assetSpawned getVariable["endAnimation",["AidlPercMstpSnonWnonDnon_AI"]],true];
									[_assetSpawned,selectRandom(_assetSpawned getVariable["endAnimation",["AidlPercMstpSnonWnonDnon_AI"]])] remoteExec["switchMove",-2];
								};
							};
							[_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_endMsg,_markers,markerPos (_markers select 1),_markerName,_markerMissionName, _exception] call blck_fnc_endMission;

							_waitTime = diag_tickTime + _tMin + random(_tMax - _tMin);
							_missionCategoryDescriptors set [noActive,_noActive - 1];
							_missionCategoryDescriptors set [waitTime,_waitTime];
						};
						case 2: { // Abort, crate moved.
							_endMsg = "Crate Removed from Mission Site Before Mission Completion: Mission Aborted";
							_objects append _missionAIVehicles;
							_objects append _spawnedLootVehicls;
							[_coords,_mines,_objects,_hiddenObjects,_crates, _blck_AllMissionAI,"Crate Removed from Mission Site Before Mission Completion: Mission Aborted",_markers,markerPos (_markers select 1),_markerName,_markerMissionName,  _exception] call blck_fnc_endMission;
							_waitTime = diag_tickTime + _tMin + random(_tMax - _tMin);
							_missionCategoryDescriptors set [noActive,_noActive - 1];
							_missionCategoryDescriptors set [waitTime,_waitTime];								
						};
						case 3: {  // Abort, key asset killed	
							_objects append _missionAIVehicles;
							_objects append _spawnedLootVehicles;						
							[_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_assetKilledMsg,_markers,markerPos (_markers select 1),_markerName,_markerMissionName, _exception] call blck_fnc_endMission;
							_waitTime = diag_tickTime + _tMin + random(_tMax - _tMin);
							_missionCategoryDescriptors set [noActive,_noActive - 1];
							_missionCategoryDescriptors set [waitTime,_waitTime];								
						};
						case 4: {  // Reserved for grpNull errors in the future

						};
						case 5: {
							// Used for testing purposes only 
							[format["Programed mission abort, debug level >= 4"]] call blck_fnc_log;
							_objects append _missionAIVehicles;
							_objects append _spawnedLootVehicles;
							[_coords,_mines,_objects,_hiddenObjects,_crates,_blck_AllMissionAI,_assetKilledMsg,_markers,markerPos (_markers select 1),_markerName,_markerMissionName, _exception] call blck_fnc_endMission;						
							_waitTime = diag_tickTime + _tMin + random(_tMax - _tMin);
							_missionCategoryDescriptors set [noActive,_noActive - 1];
							_missionCategoryDescriptors set [waitTime,_waitTime];						
						};
					};
				};
			};
		};
	};
	//diag_log format["_monitorInitializedMissions (599) End of Code Block | blck_activeMissionsList = %1",blck_activeMissionsList];
};

blck_activeMonitorThreads = blck_activeMonitorThreads - 1;