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
_defaultMissionLocations = [[11455.8,14247.9,-0.0183182]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "The last twenty feet of the corridor are heavily soundproofed. The blood pours down these chutes and the mangled flesh slurps into these... (BLACK/HARDEST)";
_endMsg = "STOP IT STOP IT. Architech Sketch was soo silly. Operation success.";
_timeoutMsg = "Architect Sketch will begin murdering tenants -- MISSION FAILED";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Architect Sketch";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 1;
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
     ["RoadCone_F",[-54.6738,-16.3271,0.018362],[[0,0.999999,0.00133721],[0.0133317,-0.00133709,0.99991]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-18.8262,-23.2783,5.11132],[[0,1,0],[0,0,1]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-24.6201,-19.957,5.10132],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[-126.479,-15.8496,0.0185432],0],
     ["CUP_B_FV510_GB_D",[-75.8604,-64.9229,0.0194283],0],
     ["CUP_B_FV510_GB_D",[-54.0635,11.8672,0.0221748],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Attack_01_dynamicLoadout_F",[-1.6748,-65.0537,0.0198822],0],
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[-145.121,-1.58203,0.0183258],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [0.251953,0.275391,13.0721], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-22.1045,-1.98145,8.29284], [[0,0.999999,-0.00138107],[0.00077204,0.00138107,0.999999]], "Orange"],
     ["B_HMG_01_high_F", [-1.50391,-13.2988,4.83737], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-58.2285,38.7041,0.276146], [[0,0.999997,-0.00229024],[0,0.00229024,0.999997]], "Orange"],
     ["B_HMG_01_high_F", [-59.7549,34.6475,3.72474], [[0,1,0],[0.000845728,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-15.3691,-5.45117,0.514492], [[0,0.999984,0.00565224],[0.00934765,-0.00565199,0.99994]], "Orange"],
     ["B_GMG_01_high_F", [-21.2256,-14.958,0.267462], [[0,0.999958,-0.00919335],[-0.00438094,0.00919326,0.999948]], "Orange"],
     ["B_HMG_01_high_F", [3.48633,37.5791,0.0200977], [[0,0.999872,0.0159977],[-0.0293202,-0.0159908,0.999442]], "Orange"],
     ["B_HMG_01_high_F", [-118.551,-94.5186,3.90659], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-167.447,-65.1416,0.924551], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-98.1348,-32.9688,0.933882], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-90.9854,-70.999,0.204699], [[0,1,0],[0.000690534,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-138.102,-35.8252,0.505911], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [-19.8096,46.7236,0.0187988], [[0,0.999956,0.00933489],[0.0239912,-0.0093322,0.999669]], "Orange"]
];

_missionGroups = [
     [[-55.3291,30.9248,0.262716],1,3,"Orange",30,45],
     [[-152.396,-69.8877,0.0189953],1,3,"Orange",30,45],
     [[-115.37,-49.2246,0.0194225],1,2,"Orange",30,45],
     [[-68.3418,-25.7607,0.0192871],1,3,"Orange",30,45],
     [[-12.584,-13.8105,8.46146],1,3,"Orange",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-18.8262,-23.2783,5.11132],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-24.6201,-19.957,5.10132],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";