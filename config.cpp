/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

 class GMSBuild {
	 Version = "7.12";
	 Build = "253"; 
	 Date = "06-16-2022";
 };

class CfgPatches {
	class custom_server {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"GMSCore"};
	};
};

class CfgFunctions {
	class blck {
		class blck_start {
			file = "\q\addons\custom_server\init";
			class init {
				postInit = 1;
			};
		};
		class functions {
			file = "\q\addons\custom_server\Compiles\Functions";
			//class addItemToCrate {};
			class broadcastServerFPS {};	
			class cleanEmptyGroups {};	
			class countAliveAI {};
			class createMissionMarkers {};
			class deleteMarker {};
			class findPositionsAlongARadius {};
			class findRandomLocationWithinCircle {};
			class findShoreLocation {};
			class findWaterDepth {};
			class getAllBlckeaglsMarkers {};
			class getAllDMSMarkers {};
			class getAllMarkersOfSubtype {};
			class getIndexFromDifficulty {};
			class loadLootItemsFromArray {};
			class log {};
			class mainThread {};	
			class markerSetAliveAICount {};	
			class messagePlayers {};	
			class missionCompleteMarker {};
			class msgIED {};
			class nearestPlayers {};
			class playerInRange {};
			class playerInRangeArray {};
			class restoreHiddenObjects {};
			class setDirUp {};
			class spawnMarker {};
			//class updateCrateSignals {};
			class updateMarkerAliveCount {};
		};
		class groups {
			file = "\q\addons\custom_server\Compiles\Groups";
			class checkGroupWaypointStatus {};
			class cleanEmptyGroups {};
			class createGroup {};  // Kept for backwards compatability with static missions if these are kept and not updated.			
			class emplacedWeaponWaypoint {};  // Not sure this is needed - can we do the same thing directly in another script?			
			class findNearestInfantryGroup {};
			class groupWaypointMonitor {};
			class setNextWaypoint {};
			class setupWaypoints {};
			class simulationMonitor {};
			class spawnGroup {};
		};
		class missions {
			file = "\q\addons\custom_server\Compiles\Missions";
			class addMIssionToQue {};
			//class clearMines {};
			//class crateMoved {};
			class endMission {};
			class fillBoxes {};
			class garrisonBuilding_ATLsystem {};
			class loadLootItemsFromArray {};
			class initializeMission {};
			class loadMissionCrate {};
			class monitorInitializedMissions {};
			class monitorSpawnedMissions {};
			class paraDropObject {};
			class selectAIBackpacks {};
			class selectAILoadout {};
			class selectAISidearms {};
			class selectAIUniforms {};
			class selectAIHeadgear {};
			class selectAIVests {};
			class selectChanceHeliPatrol {};
			class selecctChanceParatroops {};			
			class selectMissionHelis {};			
			class selectNumberAirPatrols {};
			class selectNumberParatroops {};
			class selectVehicleCrewCount {};
			class signalEnd {};
			class smokeAtCrates {};			
			class spawnCrate {};
			class spawnCompositionObjects {};			
			class spawnEmplacedWeaponArray {};
			class spawnMines {};
			class spawnMissionAI {};
			class spawnMissionCrates {};
			class spawnMissionHelis {};
			class spawnMissionLootVehicles {};
			class spawnMissionVehiclePatrols {};
			class spawnNewMissions {};
			class spawnRandomLandscape {};
			class spawnScubaGroup {};
			class spawnSimpleObjects {};
			class spawnSDVPatrol {};
			class spawnSurfacePatrol {};
			//class updateMissionQue {};
		};
		class timeAcceleration {
			file = "\q\addons\custom_server\Compiles\TimeAccel";
			class timeAccel {};
		};
		class units {
			file = "\q\addons\custom_server\Compiles\Units";
			class removeAllAIgear {};
			class spawnParaUnits {};
			class unitHit {};
			class unitKilled {};
		};
		class util {
		};
		class vehicles {
			file = "\q\addons\custom_server\Compiles\Vehicles";	
			class alertVehicles {};
			class deleteAIVehicle {};
			class checkForEmptyVehicle {};	
			class selectPatrolVehicle {};
			class spawnMissionHeli {};
			class spawnVehicle {};
			class spawnVehiclePatrol {};
			class vehicleHit {};
			class vehicleKilled {};
			class vehicleMonitor {};
		};
	};
};

