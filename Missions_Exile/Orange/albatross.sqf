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
_defaultMissionLocations = [[23513.3,21164,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Northeast Military base has grown too powerful. Wipe them out! (BLACK/HARDEST)";
_endMsg = "Operation Albatross was success! The powerful enemy military base has fallen... for now...";
_timeoutMsg = "No one wants to dance with the Albatross in the pale moon light? Operation FAILED.";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Operation Albatross (AA)";
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
     ["Land_Cargo_Tower_V1_F",[-0.318359,-1.60547,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[134.844,-67.2793,0],[[0.731297,0.682059,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[223.91,-100.299,-7.62939e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V2_F",[77.4453,-32.9941,-0.0669708],[[-0.762086,-0.644462,0.0623936],[0.033315,0.0572071,0.997806]],[true,true]],
     ["Land_Cargo_Patrol_V2_F",[-55.0586,-45.666,-0.0430222],[[0.72142,0.690996,0.0455809],[-0.0744596,0.0119617,0.997152]],[true,true]],
     ["Land_Cargo_Patrol_V2_F",[17.8203,-94.4102,-0.0918884],[[-0.146915,0.984622,0.0945243],[-0.0266593,-0.099468,0.994684]],[true,true]],
     ["RoadCone_F",[57.6719,-53.6582,0.00318909],[[0,0.994498,-0.104754],[0.0106641,0.104748,0.994442]],[true,true]],
     ["Land_i_Garage_V2_F",[6.98242,-75.9297,-0.0335693],[[0.998937,-0.0218562,-0.0405836],[0.0412979,0.0332866,0.998592]],[true,true]],
     ["Land_GarageRow_01_large_F",[25.041,-78.1719,0],[[-0.0470823,-0.998891,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[12.5215,-50.0703,0],[[0,1,0],[0,0,1]],[true,true]],
     ["APERSTripMine",[0.5,-44.4512,0.743202],[[0.0368077,0.999322,-0],[0,0,1]],[true,true]],
     ["APERSTripMine",[17.6465,-47.2734,0.807823],[[0.999826,0.0186633,-0],[0,0,1]],[true,true]],
     ["Exile_Container_SupplyBox",[13.6191,-52.9102,0.322998],[[0,1,0],[0,0,1]],[true,true]],
     ["Exile_Container_SupplyBox",[9.00586,-53.2188,0.200996],[[0,1,0],[0,0,1]],[true,true]],
     ["Exile_Container_SupplyBox",[8.01172,-41.7383,0.888],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_APC_Tracked_01_AA_F",[-63.9258,-4.41602,0.0380402],0],
     ["O_APC_Tracked_02_AA_F",[102.975,-87.7441,0.0775909],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Attack_01_dynamicLoadout_F",[255.432,-139.184,0.0310059],0],
     ["O_Heli_Attack_02_dynamicLoadout_F",[-37.1484,-18.6113,0.0145264],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-3.49805,2.62305,18.0682], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-69.2656,12.5078,4.15134], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-56.541,-45.2383,4.35194], [[0,0.999928,-0.01199],[-0.0744652,0.0119568,0.997152]], "Orange"],
     ["B_HMG_01_high_F", [-31.959,-64.9121,18.0773], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [16.7129,-95.4883,4.35861], [[0,0.995037,0.0995034],[-0.0267931,-0.0994677,0.99468]], "Orange"],
     ["B_HMG_01_high_F", [110.729,-103.42,4.4122], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [131.191,-66.4414,18.0519], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [202.955,-52.123,4.4788], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [137.568,-69.3242,17.8289], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [3.13086,-1.81445,17.7155], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-29.4238,-71.4004,18.1221], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [124.936,-87.6738,2.95869], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [120.588,-85.5801,3.22086], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [220.814,-102.586,18.3037], [[0,1,0],[0,0,1]], "Orange"],
     ["B_static_AA_F", [244.08,-91.1836,0.00223541], [[0,0.999928,0.0119996],[0.0466162,-0.0119866,0.998841]], "Orange"],
     ["B_static_AA_F", [193.348,-50.043,0.0537109], [[0,0.973553,-0.228461],[0.0346456,0.228323,0.972969]], "Orange"],
     ["B_static_AA_F", [-98.0254,-48.4824,0.0243759], [[0,0.996491,0.0837045],[-0.133462,-0.0829556,0.987576]], "Orange"],
     ["B_HMG_01_high_F", [34.0469,-79.1504,0.628052], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [7.08789,-76.0898,0.160469], [[0,0.999445,-0.033315],[0.0413208,0.0332865,0.998591]], "Orange"],
     ["B_HMG_01_high_F", [4.85742,-52.9316,0.148659], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [14.8164,-41.5332,0.919029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [-74.918,-11.2305,0.0202789], [[0,0.98979,0.14253],[-0.0889798,-0.141965,0.985864]], "Orange"],
     ["B_G_Mortar_01_F", [-3.08203,-4.06836,17.8399], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [48.1953,39.0313,4.06629], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_F", [4.74414,-45.3203,0.742546], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[198.982,-119.072,-0.00136566],1,2,"Orange",30,45],
     [[88.6309,-66.8652,0.0108795],1,2,"Orange",30,45],
     [[41.5,-51.7227,0.00513458],1,2,"Orange",30,45],
     [[-52.2012,-10.8047,-0.00136566],1,2,"Orange",30,45],
     [[98.6875,-121.658,-0.0108032],1,2,"Orange",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["Exile_Container_SupplyBox",[13.6191,-52.9102,0.322998],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["Exile_Container_SupplyBox",[9.00586,-53.2188,0.200996],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";