/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.61 : Build 28 : Build Date 11/02/23
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
_startMsg = "An enemy storage yard has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy Storage Yard has been been cleared and looted!";
_timeoutMsg = "Storage Yard has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Storage Yard";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 3;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = 0;
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
     //["I_CargoNet_01_ammo_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-10.8484,-1.13281,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Ind_Shed_01_EP1",[-4.63062,0.874023,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Misc_cargo_cont_small",[-10.113,-4.62061,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-9.25562,-11.3755,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-11.6306,-9.87598,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceCorner",[-11.2559,-11.126,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceCorner",[-7.38086,-11.001,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Barrel3",[-9.6626,2.40479,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Barrel3",[-5.88062,-8.25098,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-11.7559,-8.75098,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-7.25562,-10.251,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Barrel3",[-10.1306,1.62402,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_cyan_F",[-7.63062,3.37402,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Cargo10_yellow_F",[-7.38062,10.874,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Cargo10_brick_red_F",[-5.15063,12.6138,0],[[0.866032,0.499988,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-10.1306,15.7495,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-11.1306,11.999,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-11.7556,14.499,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-11.6306,10.499,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-8.75537,14.999,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_Misc_Cargo2A_EP1",[-1.38062,-7.25098,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_grey_F",[1.11938,-7.25098,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_military_green_F",[-4.00562,-7.21094,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo40_orange_F",[1.98364,7.94385,0],[[0.999363,0.0356914,0],[0,0,1]],[true,true]],
     ["Land_Misc_Cargo2E",[-0.380615,4.99902,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[-0.887207,-2.26611,0],[[0,1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-9.11475,-8.69043,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-9.85083,13.731,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-20.2664,2.53955,0.00143909],2,3,"Blue"],
     [[11.7053,2.70361,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-0.887207,-2.26611,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";