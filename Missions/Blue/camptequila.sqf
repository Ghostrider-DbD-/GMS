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
_endMsg = "Enemy Camp Tequila has been been cleared!!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Camp Tequila";
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
     ["Land_d_Stone_HouseSmall_V1_F",[-2.24829,0.193604,0],359.86,[false,false]],
     ["Land_BagFence_Round_F",[9.3313,-5.90039,0],310.013,[false,false]],
     ["Land_BagFence_Round_F",[11.45,6.91699,0],227.285,[false,false]],
     ["Land_BagFence_Long_F",[6.72095,-6.61719,0],180.888,[false,false]],
     ["Land_BagFence_Short_F",[9.90161,-3.87231,0],268.957,[false,false]],
     ["Land_BagFence_Round_F",[9.17993,7.29028,0],147.685,[false,false]],
     ["Land_BagFence_Round_F",[11.3059,4.60645,0],316.049,[false,false]],
     ["Land_BagFence_Round_F",[1.42334,-5.88257,0],46.1806,[false,false]],
     ["Land_BagFence_Short_F",[0.835205,-3.7981,0],268.957,[false,false]],
     ["Land_Cages_F",[12.7227,-1.53931,0],3.69589,[false,false]],
     ["Land_CratesShabby_F",[12.1519,0.625,0],359.86,[false,false]],
     ["Land_CratesShabby_F",[13.0085,-0.114746,0],148.996,[false,false]],
     ["Land_FireExtinguisher_F",[8.86523,3.14258,1.27987],29.8422,[false,false]],
     ["Land_Wreck_Ural_F",[-13.9524,-8.59424,0],131.966,[false,false]],
     ["Land_Wreck_Offroad_F",[-12.0212,12.6699,0],236.568,[false,false]],
     ["RoadCone_F",[4.11865,0.417969,1.28862],0,[false,false]]
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
     ["B_HMG_01_high_F", [3.15991,-4.43359,0], 0, "Blue"],
     ["B_HMG_01_high_F", [10.1841,5.90015,0], 0, "Blue"],
     ["B_HMG_01_high_F", [-9.96533,10.3337,0], 0, "Blue"]
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