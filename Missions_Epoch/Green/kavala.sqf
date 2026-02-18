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
_defaultMissionLocations = [[3247.15,12439.5,8.91685e-005]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Bandits are offloading supplies from a factory near Kavala. Intercept the loot!(RED/HARD)";
_endMsg = "Kavala bandits have been stopped, supplies are ours!";
_timeoutMsg = "Bandits have looted the kavala warehouse and fled in boats!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Kavala Factory";
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
     ["RoadCone_F",[-0.00268555,0.00390625,0],[[0,0.999911,-0.0133317],[-0.0106641,0.0133309,0.999854]],[true,true]],
     ["APERSTripMine",[28.3254,0.292969,0.0720649],[[-0.320795,0.947135,-0.00509615],[-0.0231597,-0.00246504,0.999729]],[true,true]],
     ["APERSTripMine",[4.52124,1.75684,0.191501],[[-0.949301,-0.313219,-0.0268673],[-0.0353418,0.0214086,0.999146]],[true,true]],
     ["CUP_IED_V4",[-22.4529,39.5674,-2.24113e-005],[[-0,-0.995795,0.0916127],[-0.103442,0.0911213,0.990453]],[true,true]],
     ["IEDUrbanSmall_F",[1.14429,34.4277,-0.000111103],[[-0,-0.999996,-0.00265204],[-0.061218,-0.00264707,0.998121]],[true,true]],
     ["IEDUrbanSmall_F",[49.8091,48.0332,-7.43866e-005],[[-0,-0.999978,0.00666818],[0.00399675,0.00666812,0.99997]],[true,true]],
     ["IEDUrbanSmall_F",[-2.95142,-13.4063,-8.01086e-005],[[-0,-0.999996,0.00267442],[0.0213272,0.00267382,0.999769]],[true,true]],
     ["IEDLandBig_F",[32.6812,45.9521,-8.96454e-005],[[-0,-1,-0],[-0.00265204,0,0.999996]],[true,true]],
     ["IEDLandBig_F",[-69.7957,38.8057,-9.25064e-005],[[-0,-1,-0],[-0.012,0,0.999928]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_O_T55_CHDKZ",[-8.53003,19.9531,0.0153589],0],
     ["CUP_O_T55_CHDKZ",[42.8843,86.9229,0.00254774],0],
     ["CUP_I_4WD_LMG_ION",[-117.327,83.4268,-8.91685e-005],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[-95.4102,63.9648,-8.60691e-005],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [24.3555,6.66992,0.125622], [[0,0.999608,0.0279937],[-0.0115133,-0.0279918,0.999542]], "Green"],
     ["B_HMG_01_high_F", [12.5713,-2.10645,0.122153], [[0,0.999936,-0.011278],[0.00762714,0.0112776,0.999907]], "Green"],
     ["B_HMG_01_high_F", [44.8245,-2.97949,18.2998], [[0,0.999838,-0.0179797],[-0.0297538,0.0179717,0.999396]], "Green"],
     ["B_GMG_01_high_F", [39.1931,16.7695,18.2995], [[0,0.999859,0.0167866],[-0.0304427,-0.0167788,0.999396]], "Green"],
     ["B_HMG_01_high_F", [19.3577,25.8408,3.96823], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [35.3982,40.3174,3.49157], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [7.99194,33.7646,3.8416], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [48.0859,52.5244,0.000730515], [[0,0.997958,0.0638698],[-0.0665191,-0.0637283,0.995748]], "Green"],
     ["B_HMG_01_high_F", [-11.2651,45.8125,0.157124], [[0,0.95389,-0.300157],[-0.00933489,0.300144,0.953848]], "Green"],
     ["B_HMG_01_high_F", [-36.615,34.6826,0.0648952], [[0,0.986394,-0.164399],[-0.108686,0.163425,0.980551]], "Green"],
     ["B_GMG_01_high_F", [-12.3452,73.5293,0.0190978], [[0,0.994219,0.107376],[0.00133721,-0.107375,0.994218]], "Green"],
     ["B_GMG_01_high_F", [-35.7598,66.0645,0.00402117], [[0,0.998913,0.0466163],[-0.0173316,-0.0466093,0.998763]], "Green"]
];

_missionGroups = [
     [[-64.925,45.3848,0.00128007],1,3,"Green",30,45],
     [[-12.1824,59.9063,0.00140405],1,3,"Green",30,45],
     [[-3.3479,-9.23828,0.00264406],1,3,"Green",30,45],
     [[24.4863,42.9746,0.00134945],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[19.5422,0.0898438,0.140899],_crateLoot,_lootCounts,[[0,0.99965,-0.0264736],[0.00979104,0.0264723,0.999602]]],
     ["I_CargoNet_01_ammo_F",[16.271,-0.517578,0.14492],_crateLoot,_lootCounts,[[0,0.999998,0.00199014],[-0.00823786,-0.00199007,0.999964]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";