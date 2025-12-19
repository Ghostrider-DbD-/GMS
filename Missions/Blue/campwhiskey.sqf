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
_startMsg = "An enemy camp has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy Camp Whiskey has been been cleared!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Camp Whiskey";
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

//
_missionLandscape = [
     ["Land_BagFence_Round_F",[0.200195,-0.252686,0.00130129],136.002,[false,false]],
     ["Land_Campfire_F",[4.62109,-9.97656,0.00130129],26.9091,[false,false]],
     ["Land_TentA_F",[10.0017,-9.85107,0.00130129],87.3948,[false,false]],
     ["Land_TentA_F",[9.00684,-6.26636,0.00130129],57.6576,[false,false]],
     ["Land_BagFence_Long_F",[2.81885,0.435547,0.00130129],358.245,[false,false]],
     ["Land_BagFence_Long_F",[5.73682,0.519531,0.00130129],358.245,[false,false]],
     ["Land_TentA_F",[9.53882,-13.7,0.00130129],118.2,[false,false]],
     ["Land_Camping_Light_F",[4.43091,-12.0029,0.532965],76.3006,[false,false]],
     ["Land_BagFence_Round_F",[8.23755,-0.0693359,0.00130129],222.772,[false,false]],
     ["Land_DuctTape_F",[0.857422,-1.18555,0.00130129],99.579,[false,false]],
     ["Land_BagFence_Short_F",[12.7632,-17.5969,0.00130129],259.241,[false,false]],
     ["Land_BagFence_Short_F",[12.3201,-19.0537,0.00130129],131.627,[false,false]],
     ["Land_Basket_F",[8.50391,-15.2754,0.00130129],161.779,[false,false]],
     ["Land_Sack_F",[9.50879,-15.0776,0.0116935],18.1445,[false,false]],
     ["Land_Sacks_heap_F",[6.68164,-0.408203,0.00130129],22.6568,[false,false]],
     ["Land_BagFence_Short_F",[10.7864,-19.8091,0.00130129],179.445,[false,false]],
     ["Land_WoodenBox_F",[2.90991,-8.28345,0.00130129],135.19,[false,false]],
     ["Land_BagFence_Round_F",[-7.22314,-17.5725,0.00130129],93.854,[false,false]],
     ["Land_BagFence_Round_F",[-5.82227,-19.2217,0.00130129],4.48306,[false,false]],
     ["RoadCone_F",[5.01294,-8.15259,0.00130129],0,[false,false]]
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
     ["B_HMG_01_high_F", [10.6951,-18.1648,0.00130129], 0, "Blue"],
     ["B_HMG_01_high_F", [-5.33423,-17.4221,0.00130129], 0, "Blue"],
     ["B_HMG_01_high_F", [2.86572,-2.43579,0.00130129], 0, "Blue"]
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