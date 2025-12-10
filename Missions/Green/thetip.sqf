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
_defaultMissionLocations = [[14798.5,10770,-0.0116787]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenaries have taken over a central peninsula! (RED/HARD)";
_endMsg = "Peninsula and loot secured!";
_timeoutMsg = "Mercs have fled the peninsula, taking the loot with them! (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Just The Tip";
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
     ["Land_Dome_Big_F",[0.624023,0.364258,0.0116792],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Offices_01_V1_F",[-35.4424,78.2871,0.0116789],[[-0.789053,0.614326,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[-58.4424,-0.173828,0.0230827],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[34.917,126.271,0.0116785],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[-52.5918,32.7998,0.0116787],[[-0.969466,0.245226,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[5,59.2139,0.0116787],[[-0.870027,0.493004,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-19.5313,33.9619,0.0119259],[[0,0.999608,-0.0279873],[-0.0093285,0.0279861,0.999565]],[true,true]],
     ["IEDLandBig_F",[8.48438,92.9854,0.0116367],[[-0,-0.999978,0.00666818],[-0.0823851,0.00664551,0.996579]],[true,true]],
     ["IEDLandBig_F",[-7.36914,124.579,0.0116711],[[-0,-0.999712,-0.0239912],[0.00265204,-0.0239911,0.999709]],[true,true]],
     ["IEDLandBig_F",[27.1797,147.259,0.0116158],[[-0,-0.997873,-0.0651943],[-0.0160014,-0.0651859,0.997745]],[true,true]],
     ["IEDLandBig_F",[22.7871,185.964,0.0116129],[[-0,-0.999608,-0.0279894],[-0.0399685,-0.0279671,0.99881]],[true,true]],
     ["IEDLandBig_F",[41.9629,180.959,0.011662],[[-0,-0.999773,-0.0213272],[-0.0293222,-0.0213181,0.999343]],[true,true]],
     ["IEDLandBig_F",[-20.3857,62.9395,0.0117269],[[-0,-0.999743,0.0226603],[0.0133317,0.0226583,0.999654]],[true,true]],
     ["APERSTripMine",[-2.94727,20.0117,0.0116787],[[-0,-0.997124,0.0757817],[-0.039967,0.0757211,0.996328]],[true,true]],
     ["APERSTripMine",[1.99512,19.4814,0.0116787],[[0.00304646,0.997124,-0.0757206],[-0.0199977,0.0757665,0.996925]],[true,true]],
     ["APERSTripMine",[-54.2256,38.0479,0.640435],[[0.260219,0.96555,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[-63.1543,88.4805,0.0116787],[[-0,-0.999253,0.038638],[0.0053265,0.0386375,0.999239]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[8.55078,157.521,0.049582],0],
     ["CUP_I_4WD_LMG_ION",[-13.7656,96.5557,0.0121181],0],
     ["CUP_I_RG31_M2_ION",[-53.2412,-42.8828,0.0247254],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Transport_01_F",[-86.8584,-42.9189,0.0200109],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["I_HMG_01_high_F", [-55.0371,0.301758,18.1453], [[0,1,0],[0,0,1]], "Green"],
     ["I_GMG_01_high_F", [-61.3818,-2.88086,17.8368], [[0,1,0],[0,0,1]], "Green"],
     ["I_HMG_01_high_F", [38.2109,126.316,17.7589], [[0,1,0],[0,0,1]], "Green"],
     ["I_GMG_01_high_F", [31.7656,123.925,18.2188], [[0,1,0],[0,0,1]], "Green"],
     ["I_HMG_01_high_F", [-13.5283,-6.42383,0.0171824], [[0,0.999353,-0.0359766],[-0.0452868,0.0359397,0.998327]], "Green"],
     ["I_GMG_01_high_F", [12.082,12.9268,0.0124731], [[0,0.9998,-0.0199947],[-0.0080009,0.0199941,0.999768]], "Green"],
     ["B_HMG_01_high_F", [-49.3105,32.8262,0.51567], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [4.20801,50.8262,0.485457], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-5.13086,47.4619,1.27621], [[0,1,0],[0,0,1]], "Green"],
     ["B_G_Mortar_01_F", [-37.1621,67.1895,18.2078], [[0,1,0],[0,0,1]], "Green"],
     ["B_G_Mortar_01_F", [-36.1904,75.8447,17.995], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-26.8232,15.6016,0.0169187], [[0,0.998581,-0.0532575],[-0.0173316,0.0532495,0.998431]], "Green"],
     ["B_HMG_01_high_F", [-87.6221,88.334,0.0127335], [[0,0.999773,0.0213272],[0.0133317,-0.0213253,0.999684]], "Green"],
     ["B_HMG_01_high_F", [-33.1309,87.4482,17.6211], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [39.2227,28.7998,0.0377307], [[0,0.999928,0.011995],[0.12436,-0.0119019,0.992166]], "Green"],
     ["B_static_AT_F", [34.0732,57.834,0.021565], [[0,0.997512,-0.0704904],[0.0704904,0.070315,0.995031]], "Green"]
];

_missionGroups = [
     [[42.7939,169.654,0.00836611],1,2,"Green",30,45],
     [[-21.7793,104.737,0.0133193],1,2,"Green",30,45],
     [[50.168,-17.96,0.0123672],1,2,"Green",30,45],
     [[-59.0107,-21.8486,0.0166278],1,2,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-3.42871,2.39941,0.0163779],_crateLoot,_lootCounts,[[0,0.997418,-0.0718108],[-0.00933738,0.0718077,0.997375]]],
     ["I_CargoNet_01_ammo_F",[-39.4102,78.791,17.7227],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";