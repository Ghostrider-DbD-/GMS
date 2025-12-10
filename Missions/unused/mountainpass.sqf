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
_defaultMissionLocations = [[20243.6,9690.7,0.0184975]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary morons are blocking access through the mountains to Pyrgos! (GREEN)";
_endMsg = "The mountain pass roadblock has been cleared!";
_timeoutMsg = "Mercenary forces have left the roadblock in the mountain pass.";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Access Denied";
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
     ["Land_CncBarrierMedium4_F",[0.173828,0.0322266,-0.018219],[[-0.18549,0.982646,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.57422,4.27148,-0.0145721],[[0.821957,-0.567192,-0.0517735],[0.0955606,0.0477254,0.994279]],[true,true]],
     ["Land_CamoNetVar_NATO",[-0.876953,7.42676,-0.117363],[[-0.890062,-0.414252,0.190223],[0.156706,0.113804,0.981067]],[true,true]],
     ["Land_CncBarrierMedium4_F",[5.81055,6.76758,-0.0184975],[[0.901154,0.433498,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-1.79297,15.8896,-0.0109673],[[-0.405105,0.91409,-0.0181718],[0.165678,0.0929426,0.98179]],[true,true]],
     ["Land_CncBarrier_F",[-5.03125,14.3145,-0.0112457],[[-0.407575,0.913026,-0.0163278],[0.163119,0.0903857,0.982458]],[true,true]],
     ["Land_CncBarrier_F",[-8.10742,6.58789,-0.0151367],[[0.981741,0.155581,-0.109447],[0.102129,0.0542988,0.993288]],[true,true]],
     ["Land_CncBarrierMedium_F",[3.33984,10.1768,-0.0146332],[[0.0747457,0.995465,-0.0588486],[0.0942451,0.0516977,0.994206]],[true,true]],
     ["Land_CncBarrierMedium_F",[1.45508,10.0752,-0.0039711],[[-0.182698,0.979536,-0.084444],[0.156706,0.113804,0.981067]],[true,true]],
     ["Land_CncBarrierMedium_F",[-5.41016,7.32813,-0.0122719],[[0.184571,-0.982251,0.0334103],[0.10213,0.052979,0.993359]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.21289,6.11133,-0.0147705],[[0.977428,0.18016,-0.110347],[0.102129,0.0542988,0.993288]],[true,true]],
     ["Land_CncBarrierMedium_F",[-3.61133,7.91797,-0.0128098],[[0.430851,-0.902415,0.00383171],[0.10213,0.052979,0.993359]],[true,true]],
     ["Land_BagBunker_Small_F",[-1.56641,10.0117,-0.0179787],[[0.427081,-0.903584,0.0337314],[0.163119,0.113684,0.980035]],[true,true]],
     ["Land_CncBarrier_F",[-7.80859,11.4531,-0.0154686],[[0.931941,-0.354359,-0.0769163],[0.10213,0.052979,0.993359]],[true,true]],
     ["Land_CncBarrierMedium4_F",[36.416,17.9561,-0.0184975],[[0.891653,0.452719,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[23.9648,15.418,-0.0184975],[[0.891653,0.452719,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[30.9023,14.1738,-0.0184975],[[0.45272,-0.891653,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[20.2324,22.7715,-0.0181656],[[-0.434924,0.900296,-0.0175863],[0.012,0.0253233,0.999607]],[true,true]],
     ["Land_CncBarrier_F",[23.4434,24.418,-0.018116],[[-0.430936,0.902373,-0.00425385],[0.031983,0.0199845,0.999289]],[true,true]],
     ["Land_CncBarrierMedium4_F",[25.8887,20.46,-0.0184975],[[0.45272,-0.891653,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[30.248,22.3857,-0.01828],[[-0.204672,0.978818,0.00485602],[0.0173282,-0.00133701,0.999849]],[true,true]],
     ["Land_CncBarrierMedium_F",[32.1328,22.5332,-0.0183601],[[0.0554745,0.99846,0.000373738],[0.0173282,-0.00133701,0.999849]],[true,true]],
     ["Land_CncBarrier_F",[27.2559,26.0527,-0.0185051],[[-0.433564,0.901104,0.0058288],[0.0106641,-0.00133714,0.999942]],[true,true]],
     ["IG_supplyCrate_F",[0.939453,4.11914,0.0116463],[[0.773559,0.610288,-0.170745],[0.174609,0.0537468,0.98317]],[true,true]],
     ["IG_supplyCrate_F",[35.1172,15.4365,-0.0192337],[[0.784711,0.61957,-0.0190005],[0.0199947,0.00533661,0.999786]],[true,true]],
     ["RoadCone_F",[27.8594,10.2207,-0.0182457],[[0.784385,0.618802,-0.0427129],[0.038638,0.0199827,0.999053]],[true,true]]
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
     ["B_HMG_01_high_F", [31.4824,13.0137,5.56271], [[0.784895,0.619629,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-1.56641,10.0117,0.0481529], [[0.774786,0.600226,-0.198583],[0.163119,0.113684,0.980035]], "Blue"]
];

_missionGroups = [
     [[12.9609,13.3389,-0.0158081],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[0.939453,4.11914,0.0116463],_crateLoot,_lootCounts,[[0.773559,0.610288,-0.170745],[0.174609,0.0537468,0.98317]]],
     ["IG_supplyCrate_F",[35.1172,15.4365,-0.0192337],_crateLoot,_lootCounts,[[0.784711,0.61957,-0.0190005],[0.0199947,0.00533661,0.999786]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";