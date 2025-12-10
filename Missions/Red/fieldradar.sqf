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
_startMsg = "An Enemy field radar has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy field radar has been cleared and looted.";
_timeoutMsg = "Enemy forces have finished operations with the anti-radar. (LOST OPPORTUNITY)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Field Radar";
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
     ["Land_BagFenceLong",[-0.0144043,0.00195313,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-7.14429,-0.00244141,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-3.26001,-2.87695,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-0.664551,-2.24854,0.000999928],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-9.66455,0.626465,0.000999928],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["USMC_WarfareBUAVterminal",[4.64038,26.3794,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-8.96948,31.7041,0.000999928],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-11.3596,15.8794,0.000999928],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-10.0388,7.75146,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[3.21045,2.25146,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-19.6094,24.7544,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[-4.10938,11.7544,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[3.46021,8.12646,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-1.98462,9.87939,0.000999928],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[0.0854492,6.12646,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[6.83545,8.25146,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[5.46045,9.37695,0.000999928],[[1,0.000935391,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-4.03955,8.37646,0.000999928],[[-0.000925366,1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-5.21313,2.20947,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_Pallet_MilBoxes_F",[4.14038,13.6294,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-1.66455,6.12646,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_full_F",[-1.66455,7.87646,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-19.7346,23.0044,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-19.7341,26.3794,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-10.2644,3.00244,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-1.60938,4.49658,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[1.85889,4.46729,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-19.4846,30.7549,0.000999928],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-19.3591,18.6294,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-20.7686,19.2417,0.000999928],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-20.8936,29.9424,0.000999928],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-20.8936,28.3667,0.000999928],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-20.7686,20.9424,0.000999928],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-1.73438,15.3794,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-5.6189,4.75928,0.000999928],[[-0.895859,-0.444338,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-6.19653,5.02393,0.000999928],[[-0.965872,-0.259021,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-6.08691,3.84912,0.000999928],[[-0.706699,-0.707514,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-0.248047,58.4336,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-5.30591,55.0181,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-6.05225,39.2632,0.000999928],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[4.76538,48.7544,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-2.13721,41.0449,0.000999928],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[4.63672,57.6045,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_JunkPile_F",[-1.63257,42.9185,0.000999928],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-2.73462,35.7544,0.000999928],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-1.23438,54.0044,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-3.53784,39.9277,0.000999928],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_full_F",[-4.32642,38.2798,0.000999928],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_WaterBarrel_F",[-3.70605,43.8271,0.000999928],[[-0.707144,0.70707,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-0.234619,39.2544,0.000999928],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_ToiletBox_F",[2.90576,55.6299,0.000999928],[[3.58384e-005,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[11.1409,1.25391,0.000999928],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[20.6406,-0.996094,0.000999928],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[35.7263,8.37842,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[28.1406,5.12939,0.000999928],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[31.0051,26.3779,0.000999928],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[35.5491,22.4595,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[14.7163,19.4946,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[12.5154,20.8794,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[24.8157,18.9648,0.000999928],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.14063,23.0044,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[30.3481,18.1172,0.000999928],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[28.9202,20.0654,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_CratesShabby_F",[27.9063,21.0918,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[30.916,22.4155,0.000999928],[[0.70662,0.707593,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[31.1104,21.6914,0.000999928],[[0.965724,0.259573,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[26.4114,12.563,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_CratesWooden_F",[29.2905,21.7212,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_full_F",[28.8242,11.6206,0.000999928],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[29.0168,33.5054,0.000999928],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_IronPipes_F",[18.4443,13.4561,0.000999928],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[33.885,14.6694,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_ToiletBox_F",[33.6858,18.354,0.000999928],[[0.965936,0.25878,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[26.6826,14.9458,0.000999928],[[0.947255,-0.320481,0],[0,0,1]],[true,true]],
     ["Land_Tyres_F",[38.0857,20.3799,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[27.6575,15.2583,0.000999928],[[1,0.000535802,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[26.9031,14.3516,0.000999928],[[0.865545,-0.500831,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[38.7654,47.3794,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[12.6406,49.8794,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[33.3906,50.5044,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[34.1416,35.3794,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[26.6848,54.3501,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[28.6411,43.0044,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[12.6406,54.3794,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[16.5156,54.6294,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[11.7656,38.3794,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[30.0161,46.5044,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.64038,35.0044,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[30.8914,43.0044,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[30.6411,37.8794,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[36.2659,43.6294,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CratesShabby_F",[10.146,36.3096,0.000999928],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[33.2656,51.8242,0.000999928],[[0.00307362,0.999995,0],[0,0,1]],[true,true]],
     ["Barrel4",[9.63818,39.5156,0.000999928],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Barrel4",[10.4761,40.5854,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel4",[10.2656,39.1294,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[35.5212,40.0073,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["76n6ClamShell",[17.3906,34.1294,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[32.3096,37.2251,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_full_F",[34.1309,37.3657,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[14.5159,54.6294,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[29.9343,52.9712,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[28.5647,54.4751,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel1",[9.76563,40.6294,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Barrel1",[10.2656,39.8794,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Barrel1",[9.41162,38.8403,0.000999928],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_WaterBarrel_F",[29.0161,35.1294,0.000999928],[[-0.258836,-0.965921,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[31.7661,47.7544,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[21.5156,57.7544,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[7.8772,36.1138,0.000999928],[[-1.74681e-005,1,0],[0,0,1]],[true,true]],
     ["Land_Tyres_F",[31.2568,51.9995,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[42.2661,18.21,0.000999928],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[42.6316,16.3628,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[41.2815,9.79346,0.000999928],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[43.3757,13.5859,0.000999928],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[42.3904,31.1294,0.000999928],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[43.3843,10.9995,0.000999928],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-5.10913,31.6069,0.000999928],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[-4.61938,33.1348,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-2.42432,35.2979,0.000999928],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[35.2156,46.9229,0.000999928],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[39.7012,-7.67236,0.000999928],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_UH1H_TK_GUE",[-22.8059,45.29,-0.00233507],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-16.8181,28.4727,0.000999928], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [19.7505,60.3657,0.17934], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [32.3103,14.2705,2.781], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [-3.41772,0.418457,0.000999928], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [-16.7009,20.1968,0.000999928], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[12.4797,12.6411,0.00243902],2,3,"Red"],
     [[-15.7996,45.3403,0.00243902],2,3,"Red"],
     [[22.2156,45.5718,0.00243902],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-4.61938,33.1348,0.000999928],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-2.42432,35.2979,0.000999928],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[35.2156,46.9229,0.000999928],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";