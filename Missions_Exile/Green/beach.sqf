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
_defaultMissionLocations = [[20688.1,19462.5,0.00384283]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Bandits are offloading supplies from a beachside warehouse! (RED/HARD)";
_endMsg = "Beach Bandits stopped, supplies are ours!";
_timeoutMsg = "Bandits have looted the warehouse and fled in boats!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Son of the Beach";
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
     ["RoadCone_F",[-0.0214844,0.0234375,6.67572e-006],[[0,0.99615,-0.0876616],[-0.0810651,0.0873731,0.992872]],[true,true]],
     ["APERSTripMine",[-8.46094,-26.1523,0.524646],[[-0.770085,0.637441,0.0252473],[0.00705051,-0.0310695,0.999492]],[true,true]],
     ["APERSTripMine",[7.91406,-6.13281,-0.00381279],[[-0.769677,0.63835,0.0103426],[0.033315,0.0239804,0.999157]],[true,true]],
     ["APERSTripMine",[16.9004,-13.1055,-0.0038166],[[0.658129,-0.752904,0.00101034],[0.0106641,0.0106635,0.999886]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_Boat_Armed_01_minigun_F",[-60.5488,68.1758,4.31758],0],
     ["B_Boat_Armed_01_minigun_F",[-122.379,33.2227,6.60195],0],
     ["O_G_Offroad_01_AT_F",[-32.9434,-54.1641,0.0163136],0],
     ["O_G_Offroad_01_AT_F",[60.8965,17.0352,0.014874],0]
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
     ["B_HMG_01_high_F", [-57.2246,-55.2715,4.49226], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [35.252,26.5449,10.1217], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-74.7285,45.0215,5.42072], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-66.6563,38.6953,4.73104], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-24.3691,60.168,5.83345], [[0,0.999999,-0.00129187],[0.00198341,0.00129187,0.999997]], "Green"],
     ["B_HMG_01_high_F", [33.1875,13.4238,2.90726], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-1.64063,-28.7109,0.639828], [[0,0.999547,-0.0301002],[-0.00436731,0.0300999,0.999537]], "Green"],
     ["B_HMG_01_F", [6.41602,-12.5293,3.35193], [[0,1,0],[0.00129187,0,0.999999]], "Green"]
];

_missionGroups = [
     [[-39.8398,-57.1484,0.00130129],1,3,"Green"],
     [[32.7168,84.8027,0.000653505],1,3,"Green"],
     [[39.7207,-13.1055,0.00102806],1,3,"Green"],
     [[-14.4336,-3.25977,1.84204],1,3,"Green"]
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