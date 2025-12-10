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
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A small market is being attacked by bandits. (GREEN)";
_endMsg = "The market has been cleared of enemies!";
_timeoutMsg = "Enemy forces at the small market have fled.";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Market Racket";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 4;
_maxNoAI = 6;
_noAIGroups = 2;
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
     ["Land_WoodenCounter_01_F",[0,0,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Basket_F",[2.31128,-0.856445,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_CratesShabby_F",[5.9082,0.0405273,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_CratesWooden_F",[4.01074,0.523438,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_CratesWooden_F",[4.01074,0.523438,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Cages_F",[-2.06201,0.382324,0],[[0.0110475,-0.999939,0],[0,0,1]],[false,false]],
     ["Land_Sacks_goods_F",[1.81885,0.55127,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Sacks_heap_F",[11.0325,0.239746,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Sack_F",[11.8245,0.709473,0],[[-0.543505,-0.839406,0],[0,0,1]],[false,false]],
     ["Land_CratesPlastic_F",[12.1699,-0.266113,0.236027],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Sacks_heap_F",[1.02124,-1.06885,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_plain_grey_F",[1.03076,40.2344,0.49382],[[-0.0044008,-0.99999,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_gate_grey_F",[-19.9163,23.7847,0],[[0.999997,-0.00231592,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[-19.9314,17.9839,0.154882],[[-0.99999,0.00455379,0],[0,0,1]],[false,false]],
     ["Land_Wall_Tin_4",[0.80835,5.92822,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Wall_Tin_4_2",[4.84009,5.83887,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Wall_Tin_Pole",[6.8418,5.94873,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Net_Fence_Gate_F",[-5.97729,40.269,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WoodenCounter_01_F",[0.391357,9.89258,0],[[0.0307749,-0.999526,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Long_F",[-14.9185,33.7061,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[-13.252,38.1665,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[-13.1399,34.0874,0.0124841],[[1,-7.67311e-006,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Long_F",[-15.1467,38.4214,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Long_F",[-12.845,36.2061,0],[[1,-7.43469e-006,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[-13.1279,38.3003,0.639521],[[0,0.999995,0.00312644],[-0.0024657,-0.00312643,0.999992]],[false,false]],
     ["Land_BagFence_Corner_F",[-13.0327,34.0264,0.650347],[[0.999997,-1.53819e-005,0.00246566],[-0.0024657,-0.00312643,0.999992]],[false,false]],
     ["Land_BagFence_End_F",[-14.0349,38.5083,0.59981],[[1.50996e-007,-1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_End_F",[-12.7446,34.9937,0.608261],[[-1,1.19249e-008,0],[0,0,1]],[false,false]],
     ["Land_BagFence_End_F",[-12.6926,37.5181,0.600235],[[1,-1.62921e-007,0],[0,0,1]],[false,false]],
     ["Land_FoodSack_01_empty_brown_F",[-15.218,34.5591,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_FoodSacks_01_cargo_brown_F",[12.6487,10.7002,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Long_F",[13.5986,6.79102,5.72205e-006],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[15.4148,7.14111,9.53674e-007],[[1,7.54979e-008,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Short_F",[15.6597,8.56104,0],[[1,7.54979e-008,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[11.27,9.51172,0],[[1,7.54979e-008,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_dmg_grey_F",[7.95996,40.2271,0.49382],[[-0.00240144,-0.999997,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Short_F",[10.5742,9.14697,0],[[-3.25841e-007,-1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_Corner_F",[6.93579,11.7183,0],[[-1,1.19249e-008,0],[0,0,1]],[false,false]],
     ["Land_BagFence_End_F",[7.71191,12.0942,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_BagFence_End_F",[6.69629,10.7603,0],[[1,7.54979e-008,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_pillar_grey_F",[-9.25781,40.228,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[-12.9482,40.2256,0],[[0.00729725,0.999973,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_4m_grey_F",[-21.9092,25.8657,0],[[-0.014063,-0.999901,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_gate_grey_F",[11.1914,22.438,0],[[0.999995,-0.00312416,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_pillar_grey_F",[-2.68774,40.2114,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_dmg_grey_F",[11.2764,36.9634,0.49382],[[0.999995,-0.00310878,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_plain_grey_F",[11.1917,28.2539,0.49382],[[0.999997,-0.00229792,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[-19.9456,40.2256,0],[[0.00729725,0.999973,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_pillar_grey_F",[11.241,31.5049,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_pillar_grey_F",[11.241,33.1938,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Rack_F",[-0.855713,8.08887,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_ShelvesWooden_F",[-0.841553,6.71826,0],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[14.8826,20.3018,0],[[-0.0146718,-0.999892,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[18.1121,16.5381,0],[[-0.999847,0.0174804,0],[0,0,1]],[false,false]],
     ["Land_WallCity_01_8m_grey_F",[17.9451,9.57275,0],[[-0.999847,0.0174804,0],[0,0,1]],[false,false]],
     ["Land_ClothShelter_01_F",[7.2229,37.4619,0],[[0.999607,-0.0280188,0],[0,0,1]],[false,false]],
     ["Land_ClothShelter_02_F",[-20.4395,34.3662,4.76837e-007],[[-0.999672,0.0255934,0],[0,0,1]],[false,false]],
     ["Land_WoodenShelter_01_F",[0.425537,7.53467,0.50562],[[0.99994,0.01097,0],[0,0,1]],[false,false]],
     ["RoadCone_F",[-1.01514,26.0981,0],[[0,1,0],[0,0,1]],[false,false]]
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
     ["B_HMG_01_high_F", [13.7891,8.60254,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-14.9902,36.1138,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[42.2136,25.6382,0.00143909],4,5,"Red"],
     [[-10.564,16.293,0.00143909],4,5,"Blue"]
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