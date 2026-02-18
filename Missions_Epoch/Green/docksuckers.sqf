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
_defaultMissionLocations = [[14272.3,13011.3,5.43594e-005]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenaries have taken over Sagonisi and the connecting bridges! (RED/HARD)";
_endMsg = "Sagonisi threat eliminated, bridge entrance secure.";
_timeoutMsg = "Mercenaries at Sagonisi have planted mines on the bridge and fled.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Docksuckers";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 4;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
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
     ["RoadCone_F",[-0.00488281,0.00195313,0],[[0,0.999978,-0.00666818],[-0.0199947,0.00666684,0.999778]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["I_MRAP_03_hmg_F",[-42.8936,-52.4287,0.0122986],0],
     ["I_Boat_Armed_01_minigun_F",[110.302,-5.94336,2.60021],0]
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
     ["B_HMG_01_high_F", [-41.1123,49.0713,2.45446], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [53.2256,61.2129,1.90301], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-5.31152,-6.88379,0.00100183], [[0,0.999978,-0.00666818],[0.0239934,0.00666626,0.99969]], "Green"],
     ["B_HMG_01_high_F", [55.2646,2.37988,4.35326], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [32.0059,56.8174,4.33875], [[0,1,0],[0.000488106,0,1]], "Green"],
     ["B_HMG_01_high_F", [43.7988,-9.47754,0.00946403], [[0,0.999943,0.0106693],[0.0744595,-0.0106397,0.997167]], "Green"],
     ["B_HMG_01_high_F", [-40.584,7.59277,0.00270367], [[0,0.999645,-0.0266571],[0.0306514,0.0266445,0.999175]], "Green"],
     ["B_GMG_01_high_F", [-3.07617,12.5527,0.00590086], [[0,0.999999,0.00133688],[-0.0598916,-0.00133448,0.998204]], "Green"],
     ["B_GMG_01_high_F", [57.2842,-6.83594,0.0157201], [[0,0.99692,0.0784243],[-0.0585655,-0.0782896,0.995209]], "Green"],
     ["B_G_Mortar_01_F", [68.2559,35.8438,3.13013], [[0,1,0],[0.000845734,0,1]], "Green"],
     ["B_static_AA_F", [62.2002,30.4189,3.1832], [[0,1,0],[0.000845734,0,1]], "Green"],
     ["B_GMG_01_high_F", [21.1221,22.832,17.8962], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [19.9893,15.6689,17.8928], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [26.9863,17.9766,17.8806], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [62.1465,35.29,3.12708], [[0,1,0],[0.000845734,0,1]], "Orange"]
];

_missionGroups = [
     [[65.0488,47.7197,0.00516224],1,2,"Orange",30,45],
     [[18.6357,37.166,0.0117798],1,2,"Green",30,45],
     [[38.1992,-25.5303,0.00485849],1,2,"Green",30,45],
     [[-21.3857,-23.1826,0.00365734],2,2,"Green",30,45],
     [[-55.0605,30.7295,0.00399923],1,2,"Green",30,45]
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