/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.6 : Build 27 : Build Date 10/24/23
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
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy Bunker position Scouted and marked on map (RED/HARD)";
_endMsg = "Enemy Bunker has been taken over and looted!";
_timeoutMsg = "Enemy bunker has relocated to a stronger position!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Twin Bunkers";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisGreen;
_chancePara = GMS_chanceParaGreen;
_noPara = GMS_noParaGreen;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Green;
_paraLootCounts = GMS_lootCountsGreen;
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

_crateLoot = GMS_BoxLoot_Green;
_lootCounts = GMS_lootCountsGreen;
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
     ["RoadCone_F",[0.000244141,-0.000183105,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Bunker_01_small_F",[0.0834961,-22.3226,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-5.9873,-21.2596,1.08254],[[-8.74228e-008,-1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-10.437,-19.4154,1.08254],[[-0.707107,-0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.4414,-14.6117,1.08254],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.4155,-9.41882,1.08254],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_HQ_F",[2.64111,-8.70691,1.53229],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.3887,-4.2113,1.08254],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.3823,-0.744507,1.08254],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.335,12.7467,0],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-10.2705,8.00793,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-5.50635,6.01624,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-12.3286,17.9806,0],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-10.4097,22.796,0],[[-0.707107,0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-7.97607,25.2472,0],[[-0.707107,0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[4.75146,24.7706,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[8.21924,24.7789,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[7.05371,-21.2494,1.08254],[[-8.74228e-008,-1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[11.8188,-19.264,1.08254],[[0.707107,-0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[13.8604,-0.617554,1.08254],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[13.8345,-5.81042,1.08254],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[13.8076,-11.0179,1.08254],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[13.8013,-14.4847,1.08254],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[7.16406,7.90344,1.08254],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[11.9238,5.9176,1.08254],[[0.707107,0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[13.0117,22.8698,0],[[0.707107,0.707107,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[15.0205,12.837,0],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[15.0269,18.0709,0],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[4.57422,4.7262,1.07779],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-5.67139,-4.80457,1.08254],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Cargo_House_V1_F",[-8.19727,-8.79138,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_Bunker_01_blocks_3_F",[13.8867,1.12659,1.08254],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-5.82617,-12.4442,1.08254],[[-8.74228e-008,-1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[4.56055,2.99768,1.07779],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[2.54102,1.06653,1.07779],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-0.997559,0.555298,1.06999],[[-0.5,0.866026,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-2.41846,-0.535522,1.06999],[[-0.707107,0.707107,0],[0,0,1]],[true,false]],
     ["Land_HelipadSquare_F",[-4.30957,16.109,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-0.180176,10.4318,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-5.73438,10.4557,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-8.61084,10.484,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-0.160645,21.6696,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-5.71484,21.6935,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-8.59131,21.7218,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[1.30322,11.7462,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[1.32715,17.3004,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[1.35547,20.1769,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-9.99707,11.9039,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-9.97314,17.4581,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-9.94482,20.3346,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["CamoNet_BLUFOR_F",[9.17676,22.5631,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_ConcreteHedgehog_01_palette_F",[-9.59424,-17.2211,0],[[0.258819,0.965926,0],[0,0,1]],[true,false]],
     ["Land_ConcreteHedgehog_01_palette_F",[-10.6064,-17.1849,0],[[-0.258819,0.965926,0],[0,0,1]],[true,false]],
     ["Land_ConcreteHedgehog_01_palette_F",[-8.80518,-18.7684,0],[[-0.965926,0.258819,0],[0,0,1]],[true,false]],
     ["Land_SignM_WarningMilAreaSmall_english_F",[-13.1738,1.9967,0],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_SignM_WarningMilAreaSmall_english_F",[15.8076,10.3024,0],[[-1,1.19249e-008,0],[0,0,1]],[true,false]],
     ["Land_RoadBarrier_01_F",[-12.8477,6.32141,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[14.9604,6.13879,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_cargo_addon01_V1_F",[-5.33594,-19.4208,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,false]],
     ["Land_cargo_addon01_V1_F",[-9.64307,-17.66,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,false]],
     ["Land_cargo_addon01_V2_F",[-5.42529,-13.8734,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-7.6416,-4.55505,1.06999],[[1,-1.62921e-007,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-7.60059,-2.87,1.06999],[[1,-1.62921e-007,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-9.90869,1.06458,1.06999],[[1.19209e-007,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-7.49365,0.286743,1.06999],[[1,7.54979e-008,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-8.27344,1.08704,1.06999],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-11.2744,1.0636,1.06999],[[1.19209e-007,1,0],[0,0,1]],[true,false]],
     ["Land_WaterBottle_01_stack_F",[6.78174,-6.72888,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_WaterCooler_01_old_F",[7.52246,-7.81824,0],[[0.5,0.866025,0],[0,0,1]],[true,false]],
     ["Land_WeldingTrolley_01_F",[4.33008,22.8883,0],[[0.5,-0.866025,0],[0,0,1]],[true,false]],
     ["Land_ToolTrolley_01_F",[3.60889,20.5201,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Grinder_F",[3.66309,20.548,0.846728],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Wrench_F",[6.36377,23.4196,0.816818],[[-0.258819,-0.965926,0],[0,0,1]],[true,false]],
     ["Land_PlasticBucket_01_closed_F",[6.08936,23.4376,0],[[0.5,-0.866025,0],[0,0,1]],[true,false]],
     ["Land_CanisterFuel_White_F",[6.72803,23.4489,0.816818],[[1,-4.37114e-008,0],[0,0,1]],[true,false]],
     ["Land_CanisterFuel_Blue_F",[7.06055,23.4557,0.816818],[[0.965926,0.258819,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_small_F",[-38.2932,56.0673,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-32.2095,55.0807,1.08254],[[-0.0125608,0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-27.7371,53.2925,1.08254],[[0.698169,0.715933,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.6724,48.5143,1.08254],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.6331,43.3215,1.08254],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_HQ_F",[-40.6794,42.4206,1.53229],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.5945,38.1141,1.08254],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.5574,34.6475,1.08254],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.4351,21.1567,0],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-27.5591,25.8692,0],[[0.698169,0.715933,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-32.3479,27.8009,0],[[-0.0125608,0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-25.3757,15.9232,0],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-27.2341,11.084,0],[[0.715933,-0.698169,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-29.6367,8.60248,0],[[0.715933,-0.698169,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-42.3691,8.91913,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-45.8367,8.86731,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-45.2493,54.9066,1.08254],[[-0.0125608,0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-49.9893,52.8616,1.08254],[[-0.715933,0.698169,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-51.7964,34.1909,1.08254],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-51.8357,39.3837,1.08254],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-51.8743,44.5911,1.08254],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-51.9114,48.0577,1.08254],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-44.9934,25.7547,1.08254],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-49.7778,27.6806,1.08254],[[-0.698169,-0.715933,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-50.6526,10.7161,0],[[-0.698169,-0.715933,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-52.7874,20.7228,0],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-52.728,15.4893,0],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-42.4438,28.9642,1.07779],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-32.3186,38.6229,1.08254],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-51.8008,32.4466,1.08254],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-42.4519,30.6928,1.07779],[[0.999921,0.0125609,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_3_F",[-40.4568,32.6492,1.07779],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-36.9248,33.2048,1.06999],[[0.510838,-0.859677,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-35.5178,34.3134,1.06999],[[0.715933,-0.698169,0],[0,0,1]],[true,false]],
     ["Land_HelipadSquare_F",[-33.4177,17.6939,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-37.6182,23.3188,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-32.064,23.3647,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-29.1875,23.3725,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-37.4963,12.0817,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-31.9424,12.1275,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-29.0657,12.1353,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-39.085,21.9858,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-39.0391,16.4318,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-39.0313,13.5552,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-27.7834,21.9701,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-27.7375,16.416,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_BagFence_Long_F",[-27.7297,13.5394,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["CamoNet_BLUFOR_F",[-46.8218,11.0709,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_small_F",[-36.01,5.31665,0],[[-0.0125608,0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-39.6902,8.56506,0],[[-0.698169,-0.715932,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-39.0684,7.53619,0],[[-0.962599,-0.270931,0],[0,0,1]],[true,false]],
     ["Land_Cargo_House_V1_F",[-46.2974,32.2808,0],[[0.0125609,-0.999921,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[-25.0032,27.588,0],[[0.999921,0.0125605,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[-52.8115,27.4213,0],[[-0.999921,-0.0125605,0],[0,0,1]],[true,true]],
     ["Land_cargo_addon01_V1_F",[-32.8376,53.2338,0],[[-0.0125608,0.999921,0],[0,0,1]],[true,false]],
     ["Land_cargo_addon01_V1_F",[-28.5088,51.5273,0],[[0.698169,0.715933,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-30.3455,38.3982,1.06999],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-30.3652,36.7128,1.06999],[[-0.999921,-0.0125605,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-28.0081,32.8075,1.06999],[[0.0125607,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-30.4326,33.5549,1.06999],[[-0.999921,-0.012561,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-29.6428,32.7645,1.06999],[[0.0125609,-0.999921,0],[0,0,1]],[true,false]],
     ["Land_Bunker_01_blocks_1_F",[-26.6423,32.8256,1.06999],[[0.0125607,-0.999921,0],[0,0,1]],[true,false]]
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
     ["B_HMG_01_high_F", [-2.06372,28.8651,1.04921], [[0,1,0.000345267],[0,-0.000345267,1]], "Green"],
     ["B_HMG_01_high_F", [-35.9636,5.25,1.0492], [[0,1,-0.000345267],[0,0.000345267,1]], "Green"],
     ["B_HMG_01_high_F", [0.315186,-22.7352,1.04921], [[0,1,-0.000345267],[0,0.000345267,1]], "Green"],
     ["B_HMG_01_high_F", [8.45557,22.3159,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-38.7388,56.5652,1.04921], [[0,1,0.000345267],[0,-0.000345267,1]], "Green"],
     ["B_GMG_01_high_F", [-22.9441,20.0747,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [12.8247,11.9789,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-14.3306,-20.1595,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_static_AA_F", [-46.0698,31.2889,3.11765], [[0,1,0],[0,0,1]], "Green"],
     ["B_static_AT_F", [-6.5249,-8.06024,3.11763], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-47.1492,19.6561,0.00143909],1,3,"Green"],
     [[-45.2239,-28.0743,0.00143909],1,3,"Green"],
     [[-2.22119,17.5856,0.00143909],1,3,"Green"],
     [[-15.8152,62.3021,0.00143909],1,3,"Green"],
     [[37.1257,12.4397,0.00143909],1,3,"Green"]
     //[[-30.5786,45.342,0.00143909],2,4,"Green"]
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