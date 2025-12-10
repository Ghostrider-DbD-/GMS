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
_startMsg = "A small enemy fortification has been scouted and marked on the map. (GREEN)";
_endMsg = "Small Enemy Fortification has been been cleared!";
_timeoutMsg = "Small fortification has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Small Fortification";
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
     //["I_CargoNet_01_ammo_F",[0.0795898,-2.48145,0],[[0,1,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[-16.2656,8.51807,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TTowerSmall_2_F",[-17.4622,2.94629,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-18.9729,0.112793,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-23.2119,5.8208,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-13.5869,-0.553711,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-10.4622,-2.55371,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["PowerGenerator",[-15.8188,2.69922,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_CratesWooden_F",[-12.2119,1.07129,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-8.53491,5.00684,0],[[-0.22034,0.975423,0],[0,0,1]],[true,true]],
     ["Land_BarrelSand_grey_F",[-12.7119,6.82129,0],[[-0.000331704,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-23.2695,10.9224,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-19.2119,17.4463,0],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-13.8369,18.1963,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbageBags_F",[-16.0869,17.0713,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[-16.2119,16.6963,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-10.9619,20.0713,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-8.33691,20.6963,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-11.8369,16.5713,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-13.4619,16.5713,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-7.21191,8.07129,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-0.0866699,6.07129,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[5.38013,2.82227,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[4.99683,9.79932,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[6.78833,7.9458,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-5.21191,-2.55371,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-7.83691,-3.17871,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[6.66309,5.19629,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-7.9707,5.28662,0],[[0.586273,-0.810113,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-6.45337,10.4287,0],[[0.046298,0.998928,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-7.3457,4.49902,0],[[0.714839,-0.699289,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-6.45776,9.59375,0],[[0.0012318,0.999999,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[3.76929,2.60645,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-4.58716,-1.05371,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-7.83765,5.69678,0],[[-0.866235,0.499637,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-6.95923,9.29102,0],[[0.000419052,-1,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-5.95898,9.0415,0],[[-0.258617,-0.96598,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-6.59961,4.45801,0],[[0.500272,-0.865868,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-7.48315,3.92725,0],[[0.707539,-0.706675,0],[0,0,1]],[true,true]],
     ["CUP_metalcrate",[-2.86157,4.19629,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["CUP_metalcrate",[-2.21191,3.82129,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[0.0380859,14.1968,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-5.71167,20.0713,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-5.08667,18.5713,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[4.95874,11.3647,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Misc_Backpackheap",[-6.58716,12.9463,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_WaterBarrel_F",[3.28809,17.0713,0],[[-8.75632e-005,1,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-6.94653,10.7969,0],[[0.514513,0.857483,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-5.95874,10.7935,0],[[-0.258988,0.965881,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[2.95703,-0.876953,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[3.49463,0.685059,0],[[0,1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [4.98804,5.71729,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-8.07788,17.9316,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-7.80811,-0.943359,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-9.48462,10.0234,0.00143909],2,3,"Blue"],
     [[-30.6729,17.834,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[0.0795898,-2.48145,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[3.49463,0.685059,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";