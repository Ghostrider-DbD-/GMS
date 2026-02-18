/*
	Static Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.61 : Build 28 : Build Date 11/02/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
#include "\x\addons\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [[14211,21219.6,3.05176e-005]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces have taken over Frini Outpost, multipe AA threats likely! (RED/HARD)";
_endMsg = "Frini outpost has been cleared and secured.";
_timeoutMsg = "Mercenary forces have abandoned the Frini outpost and will come back stronger.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Frini Mercs";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 4;
_noVehiclePatrols = 1;
_noEmplacedWeapons = 1;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 1;
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
     ["RoadCone_F",[0.00195313,0,0],[[0,0.999999,-0.00133721],[0.00532655,0.00133719,0.999985]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_APC_Wheeled_01_cannon_F",[-45.9648,-16.9082,0.0239182],0],
     ["CUP_B_M163_Vulcan_USA",[-87.5195,46.3789,0.0171432],0]
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
     ["B_HMG_01_high_F", [-13.7734,28.2031,4.0956], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [19.3428,42.7188,0.00157166], [[0,0.999943,-0.0106641],[0.0293178,0.0106595,0.999513]], "Green"],
     ["B_HMG_01_high_F", [-38.2256,16.4375,0.000556946], [[0,0.999826,0.0186626],[-0.00533768,-0.0186624,0.999812]], "Green"],
     ["B_HMG_01_high_F", [15.334,-4.47852,18.1402], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [11.0645,-11.1348,18.1368], [[0,1,0],[0,0,1]], "Green"],
     ["B_G_Mortar_01_F", [-17.6455,-26.2051,3.16071], [[0,1,0],[0.000488106,0,1]], "Green"],
     ["B_G_Mortar_01_F", [-19.2656,-21.5527,2.98189], [[0,1,0],[0.000488106,0,1]], "Green"],
     ["B_HMG_01_high_F", [-87.0928,59.8027,0.0100479], [[0,0.999253,-0.038638],[-0.0678425,0.038549,0.996951]], "Green"],
     ["B_HMG_01_high_F", [-103.017,37.5527,0.015686], [[0,0.999253,-0.038638],[-0.0889791,0.0384848,0.99529]], "Green"],
     ["B_HMG_01_high_F", [18.917,-12.248,16.4111], [[0,1,0],[0,0,1]], "Green"],
     ["CUP_B_D30_AT_CDF", [-54.2988,0.767578,6.10352e-005], [[0,0.999608,0.0279894],[-0.0146643,-0.0279864,0.999501]], "Green"],
     ["B_HMG_01_high_F", [36.3916,0.0332031,0.0716705], [[0,0.973553,-0.228461],[-0.125662,0.22665,0.965836]], "Green"],
     ["B_HMG_01_high_F", [29.084,-16.2012,0.0292206], [[0,0.996601,-0.0823858],[0.103442,0.0819439,0.991254]], "Green"],
     ["B_HMG_01_high_F", [-15.415,-38.8555,0.0102463], [[0,0.997512,0.0704908],[-0.0359766,-0.0704452,0.996867]], "Green"],
     ["B_GMG_01_high_F", [7.09082,-30.8184,0.0953827], [[0,0.999772,0.02133],[-0.235823,-0.0207284,0.971575]], "Green"]
];

_missionGroups = [
     [[-89.8838,33.1582,0.00225067],1,3,"Green",30,45],
     [[-70.3281,-58.5059,-0.00202942],1,3,"Green",30,45],
     [[-16.498,80.2246,0.0130463],1,3,"Green",30,45],
     [[-5.50488,11.5449,0.000984192],1,3,"Green",30,45],
     [[63.1045,-10.2207,-0.000549316],1,3,"Green",30,45]
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