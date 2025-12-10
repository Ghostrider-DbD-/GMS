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
_defaultMissionLocations = [[13544.2,12131.8,-0.140652]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "The whole problem of Whicker Island is here in a nutshell. There are just too many Whickers.(RED/HARD)";
_endMsg = "Oh! Oh-we-oh-we-oh! -- I think I wanna know ya... Know ya... Whicker Island Cleared!";
_timeoutMsg = "Whickers have fled the island taking the loot with them! (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Whicker Island";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 3;
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
     ["Land_Cargo_Tower_V1_F",[0.952148,1.33105,9.53674e-007],[[-0.412173,-0.911106,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[80.4805,139.751,0.721231],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[21.9922,61.5781,0.143076],[[0,0.999488,-0.031983],[-0.0916134,0.0318485,0.995285]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_SUV_Armored_ION",[38.3359,54.2168,0.145178],0],
     //["CUP_I_4WD_LMG_ION",[-30.4619,-30.8115,0.154367],0],
     ["CUP_I_4WD_AT_ION",[-20.5781,35.3389,0.259356],0],
     ["B_Boat_Armed_01_minigun_F",[-102.103,77.5693,5.05356],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Transport_01_F",[32.8711,3.94043,0.298684],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [83.9971,140.111,17.892], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-1.95703,2.56641,18.3022], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [5.12207,2.90918,17.5519], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [77.6816,136.647,19.5233], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-27.3262,90.4775,0.172221], [[0,0.999826,-0.0186628],[-0.136056,0.0184892,0.990529]], "Green"],
     ["B_HMG_01_high_F", [-48.334,3.87402,0.167021], [[0,0.99615,-0.0876616],[-0.0902964,0.0873035,0.992081]], "Green"],
     ["B_GMG_01_high_F", [-25.9756,4.93945,0.225292], [[0,0.99174,-0.128265],[-0.184763,0.126057,0.974665]], "Green"],
     ["B_HMG_01_high_F", [30.5078,57.5869,0.144546], [[0,0.998974,-0.0452868],[0.0159977,0.045281,0.998846]], "Green"],
     ["B_HMG_01_high_F", [35.7979,64.5107,3.49355], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_HMG_01_high_F", [57.9473,77.7764,0.525179], [[0,0.996509,-0.0834795],[-0.0864605,0.0831669,0.992778]], "Green"],
     ["B_GMG_01_high_F", [18.0498,73.9092,0.155837], [[0,0.996815,0.0797447],[-0.0532586,-0.0796315,0.995401]], "Green"],
     ["B_HMG_01_high_F", [59.6885,54.7207,0.16582], [[0,0.992877,-0.119145],[0.0279894,0.119098,0.992488]], "Green"]
];

_missionGroups = [
     [[-46.6162,-29.1055,0.139292],1,3,"Green",30,45],
     [[-9.21973,27.4883,0.145186],1,3,"Green",30,45],
     [[25.001,70.7109,0.137472],1,3,"Green",30,45],
     [[74.0186,120.016,0.140682],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[22.5293,55.8516,0.158651],_crateLoot,_lootCounts,[[0,0.99985,0.0173306],[-0.139951,-0.01716,0.99001]]],
     ["I_CargoNet_01_ammo_F",[23.6191,52.8818,0.154277],_crateLoot,_lootCounts,[[0,0.997873,0.0651944],[-0.104754,-0.0648357,0.992382]]],
     ["I_CargoNet_01_ammo_F",[24.6191,52.8818,0.164277],_crateLoot,_lootCounts,[[0,0.997873,0.0651944],[-0.104754,-0.0648357,0.992382]]]	 
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";