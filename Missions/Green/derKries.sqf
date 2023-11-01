

/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.42 : Build 24 : Build Date 10/19/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "The Enemy has Built a Temporary Base";
_endMsg = "Patriots Captured the Enemy Base";
_timeoutMsg = "The Enemy Troops went Home";
_markerType = ["ELLIPSE",[150,150],"GRID"];
_markerColor = "ColorOrange";


_markerMissionName = "derKriess";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 3;
_maxNoAI = 6;
_noAIGroups = GMS_AIGrps_Orange;
_noVehiclePatrols = GMS_SpawnVeh_Orange;
_noEmplacedWeapons = GMS_SpawnEmplaced_Orange;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = GMS_noPatrolHelisOrange;
_missionHelis = GMS_patrolHelisOrange;
_chancePara = GMS_chanceParaOrange;
_noPara = GMS_noParaOrange;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Orange;
_paraLootCounts = GMS_lootCountsOrange;
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

_crateLoot = GMS_BoxLoot_Orange;
_lootCounts = GMS_lootCountsOrange;
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
     ["RoadCone_F",[0.000244141,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-16.9182,-1.43164,0],[[-0.995733,0.092282,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-16.428,-9.21045,0],[[-0.98501,-0.172499,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-13.8005,-16.6509,0],[[-0.904282,-0.426936,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-9.51978,-22.9863,0],[[-0.766631,-0.642088,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-3.56177,-28.0435,0],[[-0.579384,-0.815055,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[2.87427,-34.832,0],[[0.314023,0.949415,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[12.2576,-32.7832,0],[[-0.0816122,-0.996664,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[20.0403,-32.3252,0],[[0.159936,-0.987127,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[27.5276,-29.6665,0],[[0.40643,-0.913682,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[33.8611,-25.3833,0],[[0.642416,-0.766357,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[38.9158,-19.4229,0],[[0.815302,-0.579036,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[45.7385,-12.9546,0],[[-0.958646,0.2846,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[43.6042,-3.68945,0],[[0.997021,-0.0771314,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[43.1111,4.09082,0],[[0.986399,0.164371,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[40.5315,11.4985,0],[[0.911846,0.410533,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[36.2537,17.8857,0],[[0.763461,0.645854,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[30.2322,22.998,0],[[0.575365,0.817897,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Large_F",[23.7751,29.8086,0],[[-0.292331,-0.956317,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[14.4534,27.6953,0],[[0.0811568,0.996701,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[6.61157,27.0581,0],[[-0.160386,0.987054,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-0.659424,24.5913,0],[[-0.426175,0.904641,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-7.04419,20.3418,0],[[-0.648701,0.761044,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-12.1287,14.3359,0],[[-0.828006,0.560719,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-11.1404,9.83057,0],[[0.520551,0.853831,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-6.49292,7.67139,0],[[0.300586,0.953755,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-2.47388,8.62256,0],[[-0.95753,0.288332,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-13.8665,-10.8179,0],[[-0.221516,0.975157,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-8.70142,-10.2515,0],[[0.0314769,0.999505,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-5.11938,-17.3467,0],[[0.731459,0.681886,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-0.80835,-19.9976,0],[[0.34644,0.938072,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[4.21509,-21.6812,0],[[-0.29579,-0.955253,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[14.3777,-24.9248,0],[[-0.292095,-0.956389,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[19.5647,-26.4951,0],[[-0.292095,-0.956389,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[22.533,-23.6567,0],[[0.954168,-0.299271,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[10.3718,10.7534,0],[[-0.292095,-0.956389,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[11.3538,6.76172,0],[[-0.951516,0.307598,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.70435,1.56494,0],[[-0.951516,0.307598,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Small_F",[8.25073,-2.75635,0],[[0.954412,-0.298492,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[25.2869,1.25781,0],[[-0.951516,0.307598,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[23.6238,-4.11914,0],[[-0.951516,0.307598,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[20.6921,-7.51025,0],[[0.434152,-0.90084,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[16.1023,-7.84717,0],[[0.275699,0.961244,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[11.0437,-6.23926,0],[[0.275699,0.961244,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[-8.67944,12.71,4.76837e-007],[[0.841148,-0.540805,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[-6.96411,-19.9399,4.76837e-007],[[0.736162,0.676806,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[30.7029,-22.8711,4.76837e-007],[[-0.664385,0.747391,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[37.0608,8.97705,4.76837e-007],[[-0.895168,-0.445729,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V3_F",[26.5818,16.5415,0],[[0.534186,0.845367,0],[0,0,1]],[true,true]],
     ["Land_Shed_Big_F",[11.8938,-14.9053,-4.76837e-007],[[0.954776,-0.297326,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[17.5037,0.974609,0],[[0.95129,-0.308298,0],[0,0,1]],[true,true]],
     ["CamoNet_BLUFOR_F",[4.03638,23.813,0],[[-0.331256,0.943541,0],[0,0,1]],[false,false]],
     ["CamoNet_BLUFOR_open_F",[24.0095,31.2178,0],[[-0.95735,0.288932,0],[0,0,1]],[false,false]],
     ["CamoNet_BLUFOR_open_F",[46.6082,-13.498,0],[[-0.286541,-0.958068,0],[0,0,1]],[false,false]],
     ["CamoNet_BLUFOR_open_F",[2.52417,-35.5752,0],[[-0.951664,0.30714,0],[0,0,1]],[false,false]],
     ["CamoNet_BLUFOR_open_F",[28.0291,-2.69336,0],[[-0.95735,0.288932,0],[0,0,1]],[false,false]],
     ["CamoNet_BLUFOR_F",[-14.9875,-4.79346,0],[[-0.996812,-0.079781,0],[0,0,1]],[false,false]],
     ["Land_CratesWooden_F",[25.0261,-5.19141,0],[[0.956244,-0.292572,0],[0,0,1]],[false,false]],
     ["Land_WoodenCrate_01_stack_x5_F",[14.0173,-9.11426,0],[[0.284718,0.958611,0],[0,0,1]],[false,false]]
];

_simpleObjects = [
     ["Land_FoodSacks_01_cargo_brown_F",[26.0701,-3.00928,0],[[0.946824,-0.321753,0],[0,0,1]]],
     ["Land_WaterBottle_01_stack_F",[26.824,-1.29492,0],[[0,1,0],[0,0,1]]]
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
     ["B_G_HMG_02_high_F", [15.3662,5.06006,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_HMG_02_high_F", [15.3918,-3.06055,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["O_GMG_01_high_F", [38.7163,8.30518,4.34404], [[0.911836,0.410555,0],[0,0,1]], "Orange"],
     ["O_GMG_01_high_F", [-10.2097,12.1582,4.34404], [[-0.785442,0.618935,0],[0,0,1]], "Orange"],
     ["O_HMG_01_high_F", [-6.8396,-21.6582,4.34404], [[-0.755093,-0.655618,0],[0,0,1]], "Orange"],
     ["O_HMG_01_high_F", [30.4597,-24.5806,4.34404], [[0.642892,-0.765957,0],[0,0,1]], "Orange"],
     ["O_HMG_01_high_F", [28.949,0.341309,0], [[0,1,0],[0,0,1]], "Orange"],
     ["O_HMG_01_high_F", [-13.5649,-7.89746,0], [[0,1,0],[0,0,1]], "Orange"],
     ["O_HMG_01_high_F", [1.76099,22.2886,0], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[-0.920898,-8.23926,0.00143909],3,6,"Orange"],
     [[12.0923,17.5415,0.00143909],3,6,"Orange"],
     [[25.4885,-16.3936,0.00143909],3,6,"Orange"],
     [[17.311,4.43652,15.3661],3,6,"Orange"],
     [[17.0955,2.61768,12.7661],3,6,"Orange"],
     [[47.9998,-14.6714,0.179779],3,6,"Orange"],
     [[3.52124,-37.229,0.179779],3,6,"Orange"]
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
#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";