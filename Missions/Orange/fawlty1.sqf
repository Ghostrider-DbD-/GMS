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
_defaultMissionLocations = [[15403.877,14180.201,55.366]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Don't be alarmed, it's only my wife laughing. Basil Fawlty has challeneged you to attack his tower! (BLACK/HARDEST)";
_endMsg = "Operation Fawlty Tower success! A satisfied customer! We should have him stuffed...";
_timeoutMsg = "Fawlty Tower Attack Chance Lost -- MISSION FAILED";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Operation Fawlty Tower";
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
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = 0;
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
     ["RoadCone_F",[15403.877,14180.201,55.266],[[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]],[true,true]],
     //["IG_supplyCrate_F",[10437.5,1311.99,-8.97595],[[0,1,0],[-0.00191986,0,0.999998]],[true,true]],
     //["IG_supplyCrate_F",[10407.5,1346.77,-6.88699],[[0,1,0],[-0.00191986,0,0.999998]],[true,true]],
     ["Land_Medevac_house_V1_F",[15375.379,14214.31,55.527],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [
];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_Boat_Armed_01_minigun_F",[15322.302,14130.593,62.333],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[15398.814,14105.417,57.368],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [15438.519,14162.019,57.673], [[0,1,0],[-0.00158221,0,0.999999]], "Orange"],
     ["B_HMG_01_high_F", [15415.595,14139.21,60.367], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [15412.873,14227.114,72.235], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["B_HMG_01_high_F", [15398.327,14146.31,56.270], [[0,1,-0.000488281],[-0.000976562,0.000488281,0.999999]], "Orange"],
     ["B_HMG_01_high_F", [15366.17,14174.230,57.197], [[0,1,-0.000488281],[-0.000976562,0.000488281,0.999999]], "Orange"],	
     ["B_HMG_01_high_F", [15390.53,14210.34,54.836], [[0,1,-0.000976562],[-0.00114512,0.000976562,0.999999]], "Orange"],
     ["B_HMG_01_high_F", [15425.668,14191.106,55.365], [[0,1,-0.000976562],[-0.00114512,0.000976562,0.999999]], "Orange"],	
     ["B_HMG_01_high_F", [15424.975,14200.639,55.202], [[0,1,0],[0,0,1]], "Orange"],	 
     ["B_static_AT_F", [15343.702,14177.932,78.175], [[0,1,0],[0,0,1]], "Orange"],
     ["B_static_AA_F", [15338.979,14183.09,78.340], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [15419.562,14229.730,72.213], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [15375.486,14216.249,58.660], [[0,1,0],[0,0,1]], "Orange"],
     ["CUP_B_ZU23_AFU", [15449.360,14172.517,55.341], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["CUP_B_ZU23_AFU", [15382.219,14139.788,57.031], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["CUP_B_D30_AT_AFU", [15408.6,14208.396,54.638], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["CUP_B_SPG9_AFU", [15451.633,14194.477,55.173], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["CUP_B_SPG9_AFU", [15405.547,14131.338,56.427], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["B_G_Mortar_01_F", [15436.360,14210.28,54.706], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"],
     ["B_G_Mortar_01_F", [15358.077,14166.229,58.933], [[0,0.999999,-0.00119604],[-0.00109183,0.00119604,0.999999]], "Orange"]
];

_missionGroups = [
     [[15412.819,14169.565,55.387],2,3,"Orange"],
     [[15433.646,14191.004,55.417],2,3,"Orange"],
     [[15433.646,14191.004,55.417],2,3,"Orange"],
     [[15384.771,14157.47,56.609],2,3,"Orange"],
     [[15353.575,14192.629,58.572],2,3,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [
];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[15345.249,14198.629,61.248],_crateLoot,_lootCounts,[[0,1,0],[-0.00191986,0,0.999998]]],
     ["I_CargoNet_01_ammo_F",[15375.3,14163.85,59.159],_crateLoot,_lootCounts,[[0,1,0],[-0.00191986,0,0.999998]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";