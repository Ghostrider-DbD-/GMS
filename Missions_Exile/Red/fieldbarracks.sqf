/*
	any Mission Generated
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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "An Enemy field barracks has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy field barracks has been cleared and looted.";
_timeoutMsg = "Enemy forces have moved from the barracks to deadlier locations! (FAILED)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Field Barracks";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 3;
_noAIGroups = GMS_AIGrps_Red;
_noVehiclePatrols = GMS_SpawnVeh_Red;
_noEmplacedWeapons = GMS_SpawnEmplaced_Red;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = GMS_noPatrolHelisRed;
_missionHelis = GMS_patrolHelisRed;
_chancePara = GMS_chanceParaRed;
_noPara = GMS_noParaRed;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Red;
_paraLootCounts = GMS_lootCountsRed;
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

_crateLoot = GMS_BoxLoot_Red;
_lootCounts = GMS_lootCountsRed;
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
     //["I_CargoNet_01_ammo_F",[-0.143066,-2.1709,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-3.78931,-1.1123,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-25.9653,-8.29932,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-21.4653,-15.2993,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-27.9114,-0.660156,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-25.1848,23.2363,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-24.5911,6.32617,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-28.5364,11.0898,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-28.9111,14.3398,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-28.8054,16.1152,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-22.7107,6.32617,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-27.4358,20.1113,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-26.595,6.32568,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-28.8054,18.7402,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-30.7864,11.0894,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-27.9656,4.94678,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-30.7864,13.9644,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-32.157,12.4609,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-20.9109,6.33984,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[-26.7996,23.1992,0],[[-1,-1.7631e-005,0],[0,0,1]],[true,true]],
     ["Land_IronPipes_F",[-22.709,22.4272,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-25.2336,31.417,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-22.0376,41.0283,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-21.3103,28.6113,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CratesShabby_F",[-26.9663,25.4702,0],[[1.74846e-007,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-25.2878,36.8994,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-23.9172,41.2783,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-25.2878,39.7744,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-21.5391,30.248,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-7.09033,-19.1743,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[10.218,-8.28516,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-6.78198,-15.9556,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[5.71362,-8.16064,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-8.67944,-22.6763,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-13.0693,-17.5649,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[8.33862,-8.16064,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-14.3386,-21.6172,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-9.11523,-24.6636,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-9.18823,-18.7881,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-13.0886,-23.7827,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-8.00269,-17.563,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-14.8237,-19.3271,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-11.4111,-25.2393,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-10.7983,-17.1475,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-0.411133,-10.9097,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-13.5605,17.9868,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-5.05127,18.208,0],[[2.38419e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[12.4094,-1.04883,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[3.1875,9.96729,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-0.188232,14.9282,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-11.7153,9.32568,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-13.0383,24.1533,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-2.66089,9.58984,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[7.17334,18.752,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-14.4355,21.9858,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[3.28467,3.07617,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[10.4207,22.6167,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[2.42065,15.1167,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[3.27246,7.4082,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_CratesShabby_F",[-11.7915,7.78467,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-11.5703,24.8188,0],[[-0.707588,0.706625,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-8.45776,13.5669,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-8.32446,22.748,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[12.0422,22.4355,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["MapBoard_stratis_F",[-11.3555,11.9473,0],[[-0.86599,-0.500061,0],[0,0,1]],[true,true]],
     ["MapBoard_stratis_F",[-5.42627,24.3672,0],[[0.86582,0.500355,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-11.0359,2.58936,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-0.786133,5.46484,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-8.16138,-3.53516,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_CratesWooden_F",[-10.4126,20.0283,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-0.201904,20.6421,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-4.41406,20.123,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-12.3677,16.1914,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[3.17529,11.8022,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-12.5391,19.998,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Loudspeakers_F",[10.5901,-2.77393,0],[[-0.275637,-0.961262,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-0.411133,22.3403,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[-9.54956,7.94922,0],[[1.75556e-005,-1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[6.04858,23.5337,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-8.58447,13.4614,0],[[0.660421,-0.750895,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-8.19727,22.853,0],[[-0.660578,0.750757,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-9.19604,23.0703,0],[[-0.866365,0.499411,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-8.0896,23.4805,0],[[-0.499501,0.866313,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-7.58569,13.2441,0],[[0.866374,-0.499395,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-8.69214,12.834,0],[[0.499547,-0.866287,0],[0,0,1]],[true,true]],
     ["Land_Budova4",[-17.4114,-5.03516,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-1.41113,33.8398,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[5.33862,31.3398,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-9.91113,33.8398,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[11.7954,28.7417,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-13.2991,37.894,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-12.4705,29.6709,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-13.3228,31.9775,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-4.61719,29.4346,0],[[0.706744,0.70747,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-12.3105,25.3613,0],[[-0.000558678,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-5.28613,30.0898,0],[[1,0.000266985,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-5.47852,28.8975,0],[[-0.707465,0.706749,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-18.1855,25.6934,0],[[-0.000925366,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-19.2861,25.7148,0],[[-0.500197,0.865912,0],[0,0,1]],[true,true]],
     ["Land_CratesWooden_F",[-18.5361,26.8398,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[1.71411,26.7153,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-12.925,36.2656,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-6.03638,31.5903,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-6.03638,28.7153,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-6.03638,26.9648,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-0.036377,26.7148,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_ToiletBox_F",[-8.77588,30.8535,0],[[0.25891,0.965901,0],[0,0,1]],[true,true]],
     ["Land_ToiletBox_F",[-6.896,30.7153,0],[[0.000101261,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[15.1702,23.6167,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[15.2957,15.2412,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[14.3699,7.19971,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[12.8809,15.7144,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[13.0454,13.8667,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_ToiletBox_F",[12.2058,25.5332,0],[[0.707164,0.70705,0],[0,0,1]],[true,true]]
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
     ["CUP_I_UH1H_TK_GUE",[-41.8247,9.26855,-0.003335],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-12.1594,-21.5557,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [-26.6501,17.269,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-20.8081,35.8726,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [5.93848,24.8867,2.78], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-3.59985,14.8647,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [6.59595,-6.05225,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[-21.6536,13.6816,0.00143909],2,3,"Red"],
     [[-19.6707,-5.77148,0.114583],2,3,"Red"],
     [[-4.99463,3.2334,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-0.143066,-2.1709,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";