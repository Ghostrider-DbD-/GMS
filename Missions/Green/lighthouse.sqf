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
_defaultMissionLocations = [[28247,25757.2,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces are gearing up at the north lighthouse!(RED/HARD)";
_endMsg = "North lighthouse mercenary base has fallen!";
_timeoutMsg = "Mercs have fled the lighthouse and move clsoer to traders. FAILURE!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Lighthouse Takedown";
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
     ["Land_Cargo_Tower_V3_F",[0.0800781,1.63477,0],[[0.145694,-0.98933,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[87.8125,-73.9023,0.252804],[[0.977677,0.210112,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[64.1523,-34.3848,-0.00465012],[[0.815703,0.578471,0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[39.207,-56.8008,0.000566483],[[-0,-0.999645,-0.0266571],[0.126964,-0.0264413,0.991555]],[true,true]],
     ["IEDLandBig_F",[31.4961,1.16211,9.34601e-005],[[-0,-0.999872,0.0159977],[0.0439577,0.0159822,0.998906]],[true,true]],
     ["IEDLandBig_F",[-13.6445,-22.459,0.00130081],[[-0,-0.998785,0.0492736],[0.218583,0.0480821,0.974633]],[true,true]],
     ["IEDLandBig_F",[70.5625,-83.7617,0.00018692],[[-0,-0.998361,0.0572388],[0.05193,0.0571616,0.997013]],[true,true]],
     ["APERSTripMine",[69.3789,-36.7754,0.970156],[[0.550237,-0.835009,-0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[90.3438,10.7813,9.53674e-006],[[0,0.999996,0.00265294],[0.00265294,-0.00265293,0.999993]],[true,true]],
     //["I_CargoNet_01_ammo_F",[98.4707,11.7246,0.000273705],[[0,0.999986,-0.00532323],[0.0173306,0.00532243,0.999836]],[true,true]],
     //["I_CargoNet_01_ammo_F",[61.8496,-37.3594,0.344999],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[61.9375,13.7441,0.000574112],[[0,0.999911,0.0133317],[0.0412979,-0.0133203,0.999058]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[76.0098,-63.4141,0.00903893],0],
     ["CUP_I_4WD_LMG_ION",[15.752,8.76563,0.108389],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_CESSNA_T41_ARMED_HIL",[7.57031,-42.2109,0.0203819],0],
     ["CUP_O_UH1H_TKA",[129.305,-70.9434,0.0723915],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-3.39453,1.24805,17.2532], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [2.60352,4.44141,18.1378], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [84.2051,-71.6445,18.0415], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [88.8066,-76.9434,18.0261], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [58.0313,-20.0957,0.375723], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [74.1367,-45.2246,1.20063], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [65.8379,4.79492,0.00241184], [[0,0.9998,-0.0199977],[0.0306533,0.0199883,0.99933]], "Green"],
     ["B_HMG_01_high_F", [91.9121,29.8867,0.177464], [[0,1,0],[0.0018911,0,0.999998]], "Green"],
     ["B_GMG_01_F", [102.656,9.3418,0.000384331], [[0,0.999986,-0.0053265],[0.0173282,0.0053257,0.999836]], "Green"],
     ["B_HMG_01_high_F", [112.328,-6.24609,1.25746], [[0,0.980709,-0.195474],[-0.0162747,0.195448,0.980579]], "Green"],
     ["B_HMG_01_high_F", [52.3047,22.0039,0.302606], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [26.2168,-15.9473,0.0298157], [[0,0.9994,-0.0346456],[0.129565,0.0343535,0.990976]], "Green"],
     ["B_HMG_01_F", [80.6055,24.252,0.000332832], [[0,0.999892,0.0146643],[0.0093285,-0.0146637,0.999849]], "Green"],
     ["B_HMG_01_high_F", [37.8496,17.8848,0.00297165], [[0,0.99957,-0.0293202],[0.0306514,0.0293064,0.9991]], "Green"]
];

_missionGroups = [
     [[104.553,20.8223,0.00504303],1,2,"Green"],
     [[50.5586,21.3672,3.62622],1,2,"Green"],
     [[8.95313,-7.92383,0.00348091],1,2,"Green"],
     [[82.3555,-61.9883,0.00305843],1,2,"Green"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[90.3438,10.7813,9.53674e-006],_crateLoot,_lootCounts,[[0,0.999996,0.00265294],[0.00265294,-0.00265293,0.999993]]],
     ["I_CargoNet_01_ammo_F",[98.4707,11.7246,0.000273705],_crateLoot,_lootCounts,[[0,0.999986,-0.00532323],[0.0173306,0.00532243,0.999836]]],
     ["I_CargoNet_01_ammo_F",[61.8496,-37.3594,0.344999],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";