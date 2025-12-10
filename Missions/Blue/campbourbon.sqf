/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.41 : Build 23 : Build Date 10/17/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
#include "\x\addons\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "An enemy camp has been scouted and marked on the map. (GREEN/EASY)";
_endMsg = "Enemy Camp Bourbon has been been cleared!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Camp Bourbon";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Blue;
_maxNoAI = GMS_MaxAI_Blue;
_noAIGroups = GMS_AIGrps_Blue;
_noVehiclePatrols = GMS_SpawnVeh_Blue;
_noEmplacedWeapons = GMS_SpawnEmplaced_Blue;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = GMS_noPatrolHelisBlue;
_missionHelis = GMS_patrolHelisBlue;
_chancePara = GMS_chanceParaBlue;
_noPara = GMS_noParaBlue;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Blue;
_paraLootCounts = GMS_lootCountsBlue;
_missionLandscapeMode = "precise";
_useMines = GMS_useMines;
_uniforms = GMS_SkinList;
_headgear = GMS_headgear;
_vests = GMS_vests;
_backpacks = GMS_backpacks;
_sideArms = GMS_Pistols;
_spawnCratesTiming = "atMissionSpawnGround";
_loadCratesTiming = "atMissionSpawn";
_endCondition = allUnitsKilled;
_submarinePatrols = 0;
_scubaPatrols = 0;

_crateLoot = GMS_BoxLoot_Blue;
_lootCounts = GMS_lootCountsBlue;
/*
	Do not touch the code below except to comment out rows containing objects you do not wish to have spawned
*/

/*
     Depricated Variable Included for Backwards Compatibility with Existing Missions
*/
_garrisonedBuilding_ATLsystem = [

];
/*
     Depricated Variable Included for Backwards Compatibility with Existing Missions
*/
_garrisonedBuildings_BuildingPosnSystem = [

];
_missionLandscape = [
     ["Land_BagFence_Round_F",[0.244629,0.209717,0.00130129],43.717,[false,false]],
     ["Land_BagFence_Round_F",[0.161377,2.53223,0.00130129],131.309,[false,false]],
     ["Land_BagFence_Short_F",[2.18042,-0.493896,0.00130129],1.99292,[false,false]],
     ["Land_BagFence_Short_F",[2.12183,3.19019,0.00130129],358.922,[false,false]],
     ["Land_Sleeping_bag_brown_F",[9.09399,4.36646,0.00130129],135.534,[false,false]],
     ["Land_Sleeping_bag_brown_F",[15.0215,1.09277,0.00130129],284.138,[false,false]],
     ["Land_Sleeping_bag_F",[11.7505,5.29761,0.00130129],182.544,[false,false]],
     ["Land_Sleeping_bag_F",[14.1997,4.00928,0.00130129],230.312,[false,false]],
     ["Land_Sleeping_bag_F",[12.9961,-1.35522,0.00130129],337.361,[false,false]],
     ["Land_Sleeping_bag_brown_F",[8.19897,1.88525,0.00130129],91.105,[false,false]],
     ["Land_Campfire_F",[11.5488,1.8125,0.00130129],27.42,[false,false]],
     ["Land_Sacks_heap_F",[19.6914,3.9082,0.00130129],27.137,[false,false]],
     ["Land_Axe_fire_F",[9.54102,-0.193359,0.00130129],5.82699,[false,false]],
     ["Land_WoodenBox_F",[19.949,0.845459,0.00130129],290.311,[false,false]],
     ["Land_WoodenBox_F",[21.2634,1.84937,0.00130129],250.201,[false,false]],
     ["RoadCone_F",[12.0625,8.5625,0.00130129],0,[false,false]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [

];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [

];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [2.052,1.37622,0.00130129], 0, "Blue"],
     ["B_HMG_01_high_F", [12.646,-12.0815,0.00130129], 0, "Blue"],
     ["B_GMG_01_high_F", [17.8623,2.19629,0.00130129], 0, "Blue"]
];

_missionGroups = [

];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [

];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";