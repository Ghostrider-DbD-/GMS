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
	 Version = "7.1";
	 Build = "250"; 
	 Date = "05-14-2022";
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
			class getIndexFromDifficulty {};
			class emptyObject {};
			class mainThread {};			
			class missionCompleteMarker {}
		};
		class groups {
			file = "\q\addons\custom_server\Compiles\Groups";
			class spawnGroup {};
		};
		class missions {
			file = "\q\addons\custom_server\Compiles\Missions";
			class addMIssionToQue {};
			class clearMines {};
			class crateMoved {};
			class endMission {};
			class fillBoxes {};
			class garrisonBuilding_ATLsystem {};
			class loadLootItemsFromArray {};
			class initializeMission {};
			class loadMissionCrate {};
			class monitorInitializedMissions {};
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
			class spawnPendingMissions {};
			class spawnRandomLandscape {};
			class spawnScubaGroup {};
			class spawnSimpleObjects {};
			class spawnSDVPatrol {};
			class spawnSurfacePatrol {};
			class updateMissionQue {};
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
		};
	};
};

