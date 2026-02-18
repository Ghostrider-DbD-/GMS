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
_defaultMissionLocations = [[5379.04,17907.9,0.000137329]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A large bandit group has sheltered in a Northwest Valley. Prime spot for an ambush! (RED/HARD)";
_endMsg = "Bandits in the valley have been wiped out and looted!";
_timeoutMsg = "Bandit threat in the Northwest valley had moved locations and becomes stronger!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Valley Bandits";
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
     ["RoadCone_F",[-0.000488281,-0.0078125,0],[[0,0.999488,0.031983],[-0.00265204,-0.0319829,0.999485]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[36.0356,-109.783,0.143982],0],
     ["I_MBT_03_cannon_F",[121.726,38.5664,0.0173035],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_AW159_RN_Blackcat",[97.5557,171.604,-0.0201263],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-19.2935,-11.9453,18.1711], [[0,0.999415,0.0342078],[-0.00567329,-0.0342072,0.999399]], "Green"],
     ["B_HMG_01_high_F", [49.8174,31.5957,10.1228], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [58.2476,32.2324,10.1663], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-12.8838,-16.5918,9.17788], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [52.9321,-81.1914,0.00673676], [[0,0.99885,-0.0479448],[-0.0426276,0.0479012,0.997942]], "Green"],
     ["B_HMG_01_high_F", [167.463,25.4766,0.940056], [[0,1,0],[0,0,1]], "Green"],
     ["B_static_AA_F", [-33.5093,-137.137,0.186493], [[0,0.998124,-0.061219],[0.41188,0.055785,0.909529]], "Green"],
     ["B_static_AT_F", [-70.8594,-19.502,0.0606766], [[0,0.998651,-0.05193],[0.239488,0.0504188,0.969589]], "Green"],
     ["B_T_Static_AT_F", [-62.7705,-64.6582,0.124512], [[0,0.995549,-0.0942445],[0.334266,0.0888234,0.938284]], "Green"],
     ["B_static_AA_F", [86.6328,11.959,0.0125961], [[0,0.99349,0.113921],[0.00533768,-0.113919,0.993476]], "Green"],
     ["B_G_Mortar_01_F", [-3.17725,33.1895,5.06921], [[0,0.999949,0.0100542],[-0.000488281,-0.0100542,0.999949]], "Green"],
     ["B_G_Mortar_01_F", [-45.2231,68.3281,0.156532], [[0,0.906646,0.421892],[-0.156706,-0.41668,0.895445]], "Green"],
     ["B_HMG_01_high_F", [52.6235,-31.8047,0.0152435], [[0,0.997023,0.0771026],[-0.0585645,-0.0769702,0.995312]], "Green"]
];

_missionGroups = [
     [[-6.33252,16.207,0.000190735],1,3,"Green"],
     [[40.1323,-13.8887,0.00209045],1,3,"Green"],
     [[105.264,41.4316,-0.000495911],1,3,"Green"],
     [[42.958,-101.004,-0.00422668],1,3,"Green"],
     [[36.8687,71.084,-0.0319977],1,3,"Green"]
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