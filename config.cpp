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
	 Version = "7.05";
	 Build = 246; 
	 Date = "04-19-2022";
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
			class getIndexFromDifficulty {};
		};
		class groups {
			file = "\q\addons\custom_server\Compiles\Groups";
			class spawnGroup {};
		};
		class missions {
			file = "\q\addons\custom_server\Compiles\Missions";
			class monitorInitializedMissions {};
			class spawnEmplacedWeaponArray {};
			class spawnMissionAI {};
			class spawnMissionVehiclePatrols {};
			class spawnScubaGroup {};
			class spawnSDVPatrol {};
			class spawnSurfacePatrol {};
		};
		class util {
		};
		class vehicles {
			file = "\q\addons\custom_server\Compiles\Vehicles";			
			class spawnMissionHeli {};
		};
	};
};

