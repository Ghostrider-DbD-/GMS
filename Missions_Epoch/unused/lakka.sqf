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
_defaultMissionLocations = [[12714,15895.8,-6.29425e-005]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces have setup a roadblock outside Lakka. WTF!? (GREEN)";
_endMsg = "The Lakka Roadblock has been cleared of assholes!";
_timeoutMsg = "Mercenaries forces have abandoned the Lakka Roadblock. (MISSED OPPORTUNITY)";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Lakka Cockblock Roadblock";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 3;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisBlue;
_chancePara = GMS_chanceParaBlue;
_noPara = GMS_noParaBlue;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Blue;
_paraLootCounts = GMS_lootCountsBlue;
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

_crateLoot = GMS_BoxLoot_Blue;
_lootCounts = GMS_lootCountsBlue;
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
     ["Land_CncBarrierMedium4_F",[-0.00585938,-0.015625,0.00037384],[[-0.978425,0.206603,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.51563,-4.61426,0.000861168],[[0.837647,0.546209,-0.00156865],[0.0253228,-0.035965,0.999032]],[true,true]],
     ["Land_CamoNetVar_NATO",[-7.23828,1.85938,0.0186558],[[0.0537478,-0.998233,-0.0253202],[0.0253251,-0.023986,0.999391]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-4.05762,7.77637,6.48499e-005],[[-0.0536721,0.998559,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-15.4014,4.26855,3.24249e-005],[[-0.999569,-0.0290988,0.00395615],[0.00399675,-0.0013372,0.999991]],[true,true]],
     ["Land_CncBarrier_F",[-15.1934,0.673828,2.09808e-005],[[-0.999386,-0.0331164,0.0114652],[0.012,-0.0159965,0.9998]],[true,true]],
     ["Land_CncBarrier_F",[-9.24316,-5.13965,0.000450134],[[0.230534,0.971328,0.0580988],[0.011995,-0.0625392,0.99797]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.1543,6.80957,0.000205994],[[-0.891606,0.452765,0.00652844],[0.0080009,0.00133717,0.999967]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.78613,5.02832,0.000228882],[[-0.978403,0.206569,0.00755213],[0.0080009,0.00133717,0.999967]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.88965,-2.36328,6.48499e-005],[[0.978108,-0.205965,-0.0297291],[0.0253251,-0.023986,0.999391]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.07227,-3.57227,0.00142097],[[0.206489,0.97799,0.0299736],[0.0253228,-0.035965,0.999032]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.74023,-0.476563,0.000154495],[[0.998239,0.0542471,-0.023994],[0.0253251,-0.023986,0.999391]],[true,true]],
     ["Land_BagBunker_Small_F",[-9.8877,2.21484,0.00185394],[[0.998548,0.053795,-0.00270115],[0.00399675,-0.023991,0.999704]],[true,true]],
     ["Land_CncBarrier_F",[-13.6211,-2.99316,0.000200272],[[0.683418,0.730019,0.00347746],[0.012,-0.0159965,0.9998]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-2.61719,40.3301,6.48499e-005],[[-0.0750687,0.997178,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-5.0625,27.8623,6.48499e-005],[[-0.0750687,0.997178,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-1.24512,33.7891,6.29425e-005],[[0.997178,0.075069,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-13.2852,27.2461,5.72205e-005],[[-0.998515,-0.0544675,0.00140806],[0.00133721,0.00133721,0.999998]],[true,true]],
     ["Land_CncBarrier_F",[-13.5742,30.8408,5.53131e-005],[[-0.99872,-0.0505523,0.0014031],[0.00133721,0.00133721,0.999998]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-8.97559,31.5771,6.29425e-005],[[0.997178,0.075069,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-9.0791,36.3398,0.000957489],[[-0.981314,0.187901,-0.0414304],[-0.0492736,-0.0372626,0.99809]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.48633,38.1367,0.000986099],[[-0.900824,0.433786,0.0185849],[0.00265204,-0.0373062,0.9993]],[true,true]],
     ["Land_CncBarrier_F",[-13.6143,34.9883,0.000139236],[[-0.998516,-0.0542269,-0.00495719],[-0.0053265,0.00666808,0.999964]],[true,true]],
     //["IG_supplyCrate_F",[-3.42676,2.25098,0.00170326],[[-0.270006,0.961946,0.041919],[0.00799344,-0.0412951,0.999115]],[true,true]],
     //["IG_supplyCrate_F",[-0.776367,38.1797,0.00476074],[[-0.269904,0.960106,0.0731328],[0.00533768,-0.0744585,0.99721]],[true,true]],
     ["RoadCone_F",[1.23535,29.459,0.000102997],[[-0.270187,0.962752,0.0104207],[0.0053265,-0.00932837,0.999942]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [

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
     ["B_HMG_01_high_F", [0.046875,33.8779,5.57456], [[-0.270196,0.962805,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-9.77637,2.22461,0.000612259], [[-0.270197,0.962502,0.0241785],[0.00399675,-0.023991,0.999704]], "Blue"]
];

_missionGroups = [
     [[-7.32617,16.9336,0.00136948],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[-3.42676,2.25098,0.00170326],_crateLoot,_lootCounts,[[-0.270006,0.961946,0.041919],[0.00799344,-0.0412951,0.999115]]],
     ["IG_supplyCrate_F",[-0.776367,38.1797,0.00476074],_crateLoot,_lootCounts,[[-0.269904,0.960106,0.0731328],[0.00533768,-0.0744585,0.99721]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";