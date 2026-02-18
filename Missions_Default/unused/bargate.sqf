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
_defaultMissionLocations = [[15714.8,17443.1,0.000339508]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary assholes have setup a roadblock on the main highway!(GREEN)";
_endMsg = "The roadblock has been cleared of enemies!";
_timeoutMsg = "Enemy forces have abandoned the road block... for now... (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Bar Gate Bastards";
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
     ["Land_CncBarrierMedium4_F",[0.0302734,0.00585938,-2.95639e-005],[[-0.886209,0.463286,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-7.48047,-2.66211,-0.000325203],[[0.954209,0.299131,-0.00229232],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CamoNetVar_NATO",[-6.42676,3.76563,0.00533295],[[-0.218089,-0.975897,-0.00794233],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-1.76563,8.60352,-0.000338554],[[0.218131,0.975919,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-13.6348,8.29102,-0.00038147],[[-0.97025,0.242027,0.00613589],[0.00399675,-0.00932842,0.999949]],[true,true]],
     ["Land_CncBarrier_F",[-14.4063,4.77344,-0.000380516],[[-0.971172,0.238301,0.00610481],[0.00399675,-0.00932842,0.999949]],[true,true]],
     ["Land_CncBarrier_F",[-10.248,-2.43164,-0.000350952],[[0.484889,0.874554,0.00622055],[0.00399675,-0.00932842,0.999949]],[true,true]],
     ["Land_CncBarrierMedium_F",[-5.9707,8.7793,-0.000108719],[[-0.736122,0.676772,0.0102347],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrierMedium_F",[-7.06055,7.23438,-0.000125885],[[-0.886215,0.463186,0.00904171],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrierMedium_F",[-9.15723,0.146484,-0.000437737],[[0.88622,-0.463177,-0.00904166],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.69727,-1.23828,-0.000177383],[[0.463235,0.886217,0.00579987],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.50391,1.92188,-0.000417709],[[0.975916,-0.218025,-0.00723246],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_BagBunker_Small_F",[-8.88184,4.82422,0.0037365],[[0.975914,-0.218034,-0.00723253],[0.0053265,-0.00932837,0.999942]],[true,true]],
     ["Land_CncBarrier_F",[-13.8828,0.818359,-0.000261307],[[0.855277,0.518169,0.00141544],[0.00399675,-0.00932842,0.999949]],[true,true]],
     ["Land_CncBarrierMedium4_F",[8.41699,39.5566,-0.000338554],[[0.197158,0.980372,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[2.69434,28.2129,-0.000338554],[[0.197158,0.980372,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[7.9707,32.8887,-0.000339508],[[0.980372,-0.197158,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-5.38965,29.8418,-0.000375748],[[-0.976084,0.217285,0.00679857],[0.00399675,-0.0133316,0.999903]],[true,true]],
     ["Land_CncBarrier_F",[-4.69629,33.3809,-0.000376701],[[-0.975228,0.221097,0.00684597],[0.00399675,-0.0133316,0.999903]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-0.0693359,32.8477,-0.000338554],[[0.980372,-0.197158,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[1.11719,37.4609,-5.24521e-005],[[-0.89594,0.444047,0.0106931],[0.0053265,-0.0133315,0.999897]],[true,true]],
     ["Land_CncBarrierMedium_F",[2.17383,39.0313,-2.09808e-005],[[-0.750453,0.6608,0.012808],[0.0053265,-0.0133315,0.999897]],[true,true]],
     ["Land_CncBarrier_F",[-3.61426,37.3848,-0.000368118],[[-0.976063,0.217382,0.00679978],[0.00399675,-0.0133316,0.999903]],[true,true]],
     ["RoadCone_F",[9.18848,28.0488,-0.00028801],[[0,0.999928,0.011995],[0.00665923,-0.0119948,0.999906]],[true,true]]
     //["IG_supplyCrate_F",[9.62012,36.9883,-0.000162125],[[0,0.999911,0.0133317],[0.00665923,-0.0133314,0.999889]],[true,true]],
     //["IG_supplyCrate_F",[-2.64063,3.11328,-0.000228882],[[0,0.999956,0.0093285],[0.0053265,-0.00932837,0.999942]],[true,true]]
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
     ["B_HMG_01_high_F", [-8.77148,4.80469,-0.000146866], [[0,0.999956,0.0093285],[0.0053265,-0.00932837,0.999942]], "Blue"],
     ["B_HMG_01_high_F", [9.23926,32.625,2.78642], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-2.45215,18.3047,0.000553131],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[9.62012,36.9883,-0.000162125],_crateLoot,_lootCounts,[[0,0.999911,0.0133317],[0.00665923,-0.0133314,0.999889]]],
     ["IG_supplyCrate_F",[-2.64063,3.11328,-0.000228882],_crateLoot,_lootCounts,[[0,0.999956,0.0093285],[0.0053265,-0.00932837,0.999942]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";