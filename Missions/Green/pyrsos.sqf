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
_defaultMissionLocations = [[9162.54,19285.5,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces are threatening our north trader!(RED/HARD)";
_endMsg = "Pyrsos has been recaptured, the north trader is safe.... for now...";
_timeoutMsg = "Pyrsos merceanry camp has moved, and the enemy grows stronger (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Pushing Pyrsos";
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
     ["Land_Cargo_Tower_V3_F",[-0.318359,-1.60547,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[106.119,6.1582,0.113678],[[-0.478692,-0.877983,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[36.165,-12.3945,-3.05176e-005],[[0,0.999999,-0.00133721],[0.00265204,0.00133721,0.999996]],[true,true]]
     //["I_CargoNet_01_ammo_F",[40.9229,-17.8535,0.930023],[[0,1,0],[0.000698392,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[38.8818,-15.209,0.901031],[[0,1,0],[0.000698392,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[75.0801,43.9082,0.000640869],0],
     ["CUP_I_4WD_LMG_ION",[82.1338,20.3457,0.0130615],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0],
     ["CUP_O_UH1H_TKA",[11.1699,29.5566,0.000915527],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [3.10645,-0.912109,17.5931], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-3.28711,-4.67383,18.2658], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [102.96,7.61523,17.7372], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [110.23,7.38086,17.8832], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [37.1426,-10.9395,0], [[0,0.999999,-0.00133721],[0.00265204,0.00133721,0.999996]], "Green"],
     ["B_G_Mortar_01_F", [57.1963,-40.0273,0.0178528], [[0,0.993639,-0.112613],[0.108687,0.111946,0.987753]], "Green"],
     ["B_HMG_01_high_F", [75.1133,-17.9766,2.04248], [[0,1,0.000690534],[0,-0.000690534,1]], "Green"],
     ["B_GMG_01_high_F", [34.9404,-20.4316,4.19275], [[0,1,0],[0.000690534,0,1]], "Green"],
     ["B_HMG_01_high_F", [34.1729,19.457,0.000854492], [[0,0.999773,0.0213272],[0.0053265,-0.0213269,0.999758]], "Green"],
     ["CUP_B_DSHKM_AFU", [65.2285,-32.5078,0.0428772], [[0,0.998581,0.0532564],[0.151561,-0.0526411,0.987045]], "Green"]
];

_missionGroups = [
     [[-15.0625,-15.041,-0.00628662],1,3,"Green",30,45],
     [[50.2822,0.408203,0.00119019],1,3,"Green",30,45],
     [[89.7246,36.7109,0.000915527],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[40.9229,-17.8535,0.930023],_crateLoot,_lootCounts,[[0,1,0],[0.000698392,0,1]]],
     ["I_CargoNet_01_ammo_F",[38.8818,-15.209,0.901031],_crateLoot,_lootCounts,[[0,1,0],[0.000698392,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";