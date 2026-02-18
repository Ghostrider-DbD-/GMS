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
_defaultMissionLocations = [[10071.2,11389.1,0.00845718]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Fanatics have seized a small town, liberate it and claim their gear (RED/HARD)";
_endMsg = "Fanatics have been squashed!";
_timeoutMsg = "Fanatics have plundered the town and left the area";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Fanatics";
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
     ["RoadCone_F",[-0.00976563,0.0458984,7.62939e-006],[[0,0.985086,-0.172062],[-0.038638,0.171933,0.984351]],[true,true]],
     ["Land_AncientStatue_01_F",[5.72754,-2.05078,-0.00845718],[[0.495501,-0.868607,0],[0,0,1]],[true,true]],
     ["Land_AncientStatue_02_F",[-5.06152,-2.71387,-0.00845718],[[-0.523859,-0.851805,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[-28.5469,-99.3604,0.0461197],0],
     ["CUP_B_M2Bradley_NATO_T",[-41.9521,78.4434,-0.0362635],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[-72.4414,-41.7422,0.258789],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-67.8965,-179.166,4.34114], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_HMG_01_high_F", [-70.2266,-153.929,4.32523], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_HMG_01_high_F", [-35.2529,-132.832,4.53114], [[0,1,0],[0.000690534,0,1]], "Green"],
     ["B_static_AA_F", [-48.9277,-145.39,-0.0081234], [[0,0.999826,0.0186628],[0.00133721,-0.0186628,0.999825]], "Green"],
     ["B_static_AA_F", [-68.9082,-166.506,-0.0071125], [[0,0.999353,0.0359766],[-0.012,-0.035974,0.999281]], "Green"],
     ["B_HMG_01_high_F", [-27.1934,-84.2646,0.221716], [[0,0.999998,-0.00182698],[-0.00185932,0.00182698,0.999997]], "Green"],
     ["B_HMG_01_high_F", [-43.709,-72.0059,0.274349], [[0,1,0],[0.00195312,0,0.999998]], "Green"],
     ["B_HMG_01_A_F", [-11.2344,-3.31543,0.0790615], [[0,0.968136,-0.250424],[-0.112612,0.248831,0.961978]], "Green"],
     ["B_G_Mortar_01_F", [41.8115,-55.2666,-0.000286102], [[0,0.999911,-0.0133317],[0.104754,0.0132583,0.99441]], "Green"],
     ["B_GMG_01_high_F", [63.3965,-116.293,-0.00729561], [[0,0.999773,0.0213272],[0.0159977,-0.0213245,0.999645]], "Green"],
     ["B_HMG_01_high_F", [68.6348,45.793,0.555758], [[0,0.999996,-0.00290927],[0.0024657,0.00290926,0.999993]], "Green"],
     ["B_HMG_01_high_F", [-46.9707,129.354,0.794405], [[0,1,0],[0.00161945,0,0.999999]], "Green"],
     ["B_HMG_01_high_F", [-70.7119,135.742,3.65606], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-58.0928,-146.742,-0.00720978],1,2,"Green",30,45],
     [[0.90332,-22.6855,-0.0194073],1,2,"Green",30,45],
     [[-62.6885,47.7764,32.8799],1,2,"Green",30,45],
     [[63.0918,-70.0957,-0.0106869],1,2,"Green",30,45],
     [[-5.625,-123.96,-0.0161142],1,2,"Green",30,45]
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