
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
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "The Enemy Built a Temporary Airbase";
_endMsg = "Patriots Captured the Airbase";
_timeoutMsg = "The Enemy Packed up the Airbase";
_markerType = ["ELLIPSE",[150,150],"GRID"];
_markerColor = "ColorGreen";


_markerMissionName = "Airstrike";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 6;
_noAIGroups = 4;
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
     ["RoadCone_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncWall1_F",[-14.665,16.4639,0.00211954],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-11.626,-15.3057,0.00211954],[[-8.02679e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-15.1704,-11.6226,0.00211954],[[-1,9.65599e-007,0],[0,0,1]],[true,true]],
     ["Land_CncWall1_F",[-14.7495,-14.7769,0.00211954],[[-0.707107,-0.707106,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-15.1934,13.3403,0.00211954],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-11.5103,16.8848,0.00211954],[[8.64267e-007,1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[17.0229,-11.7378,0.00211954],[[1,-8.78176e-007,0],[0,0,1]],[true,true]],
     ["Land_CncWall1_F",[16.4941,-14.8613,0.00211954],[[0.707106,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[13.3398,-15.2822,0.00211954],[[-1.27952e-006,-1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[13.4526,16.9058,0.00211954],[[9.37781e-007,1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[16.9971,13.2227,0.00211954],[[1,-1.35501e-006,0],[0,0,1]],[true,true]],
     ["Land_CncWall1_F",[16.5762,16.377,0.00211954],[[0.707107,0.707106,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[8.23926,16.9058,0.00211954],[[9.37781e-007,1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-6.28418,16.8848,0.00211954],[[8.64267e-007,1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-6.40918,-15.3057,0.00211954],[[-8.02679e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[8.11426,-15.2822,0.00211954],[[-1.27952e-006,-1,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[17.0229,-6.50684,0.00211954],[[1,-8.78176e-007,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[16.9971,8.00391,0.00211954],[[1,-1.35501e-006,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-15.1934,8.10449,0.00211954],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_CncWall4_F",[-15.1704,-6.39941,0.00211954],[[-1,9.65599e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_Gate_F",[1.10156,16.1475,0.00211954],[[-0.00296766,0.999996,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_Gate_F",[16.2769,0.614258,0.00211954],[[0.999996,0.00296707,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_Gate_F",[0.774414,-14.5537,0.00211954],[[0.00296774,-0.999996,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_Gate_F",[-14.4639,0.970215,0.00211954],[[0.999996,0.00296767,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V1_F",[-10.1904,11.939,0.00211954],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V1_F",[12.021,-10.3696,0.00211954],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Bomb_Trolley_01_F",[-9.03955,-9.08447,0.00211954],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Bomb_Trolley_01_F",[-7.30371,-8.86377,0.00211954],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Missle_Trolley_02_F",[-10.8237,-8.98633,0.00211954],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Missle_Trolley_02_F",[-12.8232,-9.12793,0.00211954],[[0,1,0],[0,0,1]],[false,false]]
];

_simpleObjects = [
     ["Land_ConcreteHedgehog_01_F",[0.911621,16.7939,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_F",[16.9106,0.809082,0.00211954],[[-1,4.88762e-007,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_F",[0.911621,-15.1948,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_F",[-15.0835,0.808105,0.00211954],[[-1,1.19249e-008,0],[0,0,1]]],
     ["Land_Cargo20_military_green_F",[12.5161,14.5415,0.437119],[[0,1,0],[0,0,1]]],
     ["Land_Cargo20_military_green_F",[-11.2183,-13.187,0.437119],[[-8.74228e-008,-1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[7.58887,-11.6128,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[6.32129,-11.6089,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[14.8735,11.0269,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[13.606,11.0308,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[12.1851,10.9951,0.00211954],[[0,1,0],[0,0,1]]],
     ["Land_MRL_Magazine_01_F",[10.9175,10.999,0.00211954],[[0,1,0],[0,0,1]]],
     ["B_Plane_Fighter_01_Stealth_F",[3.62256,-27.438,0.168853],[[-0.890157,0.313278,-0.330873],[-0.258819,0.25,0.933013]]],
     ["B_Plane_CAS_01_dynamicLoadout_F",[-0.700195,28.3667,0.00195265],[[-0.869288,-0.494306,0],[0,0,1]]]
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
     ["B_G_HMG_02_high_F", [-1.60352,14.9067,0.00211954], [[0,1,0],[0,0,1]], "Blue"],
     ["B_G_HMG_02_high_F", [-2.23145,-11.9658,0.00211954], [[0,1,0],[0,0,1]], "Blue"],
     ["B_G_HMG_02_high_F", [-13.1157,1.05469,0.00211954], [[0,1,0],[0,0,1]], "Blue"],
     ["B_G_HMG_02_high_F", [14.0806,0.481934,0.00211954], [[0,1,0],[0,0,1]], "Blue"],
     ["B_static_AA_F", [14.4141,-7.02197,0.00211954], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[6.24121,8.1875,0.00355864],3,6,"Blue"],
     [[10.0508,-5.84619,0.00355864],3,6,"Blue"],
     [[-4.46582,8.49658,0.00355864],3,6,"Blue"],
     [[-6.06934,-2.56592,0.00355864],3,6,"Blue"],
     [[1.36475,-5.76904,0.00355864],3,6,"Blue"],
     [[4.66016,2.20947,0.00355864],3,6,"Blue"],
     [[10.0796,23.8945,0.00355864],3,6,"Blue"],
     [[20.2065,-18.8662,0.00355864],3,6,"Blue"],
     [[-19.8604,-13.6353,0.00355864],3,6,"Blue"],
     [[-19.7959,15.2109,0.00355864],3,6,"Blue"]
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