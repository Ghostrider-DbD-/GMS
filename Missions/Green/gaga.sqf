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
_defaultMissionLocations = [[19354.3,9684.74,0.000564575]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy forces are broadcasting propaganda using the east radio towers. Shut them down. (RED/HARD)";
_endMsg = "Enemy radio operations have been halted.";
_timeoutMsg = "Enemy has finished radio operations and is regrouping elsewhere.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Radio Gaga";
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
     ["RoadCone_F",[-0.00390625,-0.0166016,0],[[0,0.998042,0.0625434],[-0.0133317,-0.0625378,0.997954]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[22.2715,38.2744,-0.000564575],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[31.2715,-54.8066,-0.000564575],[[-0.116088,0.993239,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[-14.5645,34.4824,0.250504],[[-0.0597234,0.998215,0],[0,0,1]],[true,true]],
     ["CargoPlaftorm_01_brown_F",[-17.5234,-35.7461,-0.000564575],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_HQ_V3_F",[-23.9902,-13.2021,-0.000564575],[[0.504781,0.863247,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_CSAT_brownhex_generic_closed_F",[28.5781,0.96875,0.00692749],[[0,0.998974,0.0452853],[0.0585653,-0.0452076,0.997259]],[true,true]],
     ["Land_MedicalTent_01_aaf_generic_open_F",[28.625,17.4023,0.0225372],[[0,0.997696,0.067844],[0.109993,-0.0674324,0.991642]],[true,true]],
     ["Land_ConnectorTent_01_AAF_cross_F",[-5.5918,-23.5,0.0177002],[[0,0.993932,0.109995],[-0.0492724,-0.109861,0.992725]],[true,true]],
     ["Land_ConnectorTent_01_AAF_closed_F",[-3.47461,-15.6738,0.00256348],[[0,0.998785,0.0492724],[0.00532655,-0.0492717,0.998771]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[30.4531,-19.1924,0.0185699],0],
     ["B_G_Quadbike_01_F",[-27.5,4.13184,0.0308685],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["Exile_Chopper_Huey_Desert",[-75.5215,27.8955,0.0250854],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-30.0273,36.5371,0.955658], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-3.55273,37.2832,0.685074], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [19.2129,35.0869,17.7999], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [25.4258,38.3555,18.0077], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-24.1973,-12.2021,3.08813], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-17.7051,-35.6016,7.15997], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [34.7891,-54.3516,17.9161], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [28.8887,-58.6777,18.3621], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [26.2773,-33.8516,0.597412], [[0,1,0],[0.000488106,0,1]], "Green"]
];

_missionGroups = [
     [[-67.957,3.85742,-0.00282288],1,3,"Green"],
     [[16.5273,23.1582,0.000488281],1,3,"Green"],
     [[16.6719,-28.5938,-0.0022583],1,2,"Green"],
     [[-1.19922,43.0225,0.627579],1,3,"Green"]
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