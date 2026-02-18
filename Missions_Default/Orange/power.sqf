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
_defaultMissionLocations = [[25434.5,20291.9,-0.0183144]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A large mercenary groups has taken over NE Power plant, and is stripping to develop weapons! (BLACK/HARDEST)";
_endMsg = "Mercenaries at the power plant have been eliminated.";
_timeoutMsg = "Mercenaries at the power plant have looted the facility and headed out to develop new weapons! (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Power Play";
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

_missionLandscape = [
     ["RoadCone_F",[-32.0156,59.959,0.018322],[[0,0.999999,-0.00133721],[0.00265204,0.00133721,0.999996]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_O_T72_RU",[-82.8906,23.6211,0.0238256],0],
     //["CUP_O_T55_CHDKZ",[-28.0859,135.596,0.0231171],0],
     ["CUP_O_T55_CHDKZ",[38.8496,-6.42969,0.0334969],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_O_Ka60_Grey_RU",[12.6348,36.9453,0.0169258],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [0.251953,0.275391,10.1373], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-29.127,-16.7656,10.1467], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-37.916,1.5625,6.55556], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-12.3223,17.5723,6.51309], [[0,1,0],[0,0,1]], "Orange"],
     ["B_static_AT_F", [-34.2793,47.8105,6.24753], [[0,1,0],[0,0,1]], "Orange"],
     ["B_T_Static_AT_F", [-48.4277,37.5,6.26988], [[0,1,0],[0,0,1]], "Orange"],
     ["CUP_O_D30_RU_M_BeigeDigital", [-48.2207,88.3711,0.0202837], [[0,0.999956,0.00933489],[0.0439577,-0.00932586,0.99899]], "Orange"],
     ["CUP_O_D30_AT_RU_M_BeigeDigital", [1.1875,-18.752,0.0311623], [[0,0.995037,0.0995036],[0.0572399,-0.0993405,0.993406]], "Orange"],
     ["B_HMG_01_high_F", [23.7324,27.9434,0.0197916], [[0,0.999679,0.0253251],[0.0159977,-0.0253219,0.999551]], "Orange"],
     ["B_GMG_01_F", [-18.0938,72.6621,0.0191412], [[0,0.999645,-0.0266571],[0.00399675,0.0266569,0.999637]], "Orange"],
     ["B_G_Mortar_01_F", [-52.6074,56.2949,11.9456], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [-46.7734,53.5352,11.8878], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[-20.1387,-2.58008,0.0193977],1,3,"Orange",30,45],
     [[-84.7168,36.7441,0.021904],1,2,"Orange",30,45],
     [[-56.0918,104.984,0.0198393],1,3,"Orange",30,45],
     [[-30.8457,80.1113,0.0212355],1,2,"Orange",30,45],
     [[11.1328,64.582,0.0196981],1,3,"Orange",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-37.6699,66.1641,0.0183191],_crateLoot,_lootCounts,[[0,1,0],[0.00265294,0,0.999996]]],
     ["I_CargoNet_01_ammo_F",[-53.5957,50.873,11.9794],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";