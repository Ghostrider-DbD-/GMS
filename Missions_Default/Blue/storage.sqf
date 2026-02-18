/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.6 : Build 27 : Build Date 10/24/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
#include "\x\addons\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A small storage facility has been scouted and marked on the map. (GREEN/EASY)";
_endMsg = "The storage facility has been cleared of enemies!";
_timeoutMsg = "Enemy forces at the storage facility have packed up and have fled.";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Storage Facility";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 4;
_maxNoAI = 6;
_noAIGroups = 2;
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
     ["RoadCone_F",[0.000244141,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Bunker_F",[5.646,9.87012,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Bunker_F",[13.894,9.84082,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Bunker_F",[-2.9292,9.80957,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[13.4219,13.9238,4.76837e-007],[[0.00464214,-0.999989,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[5.66309,13.8828,4.76837e-007],[[0.00657855,-0.999978,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[0.0922852,13.7695,4.76837e-007],[[0.0228849,-0.999738,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-7.7207,13.6445,4.76837e-007],[[-0.0116077,-0.999933,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[16.998,10.2881,4.76837e-007],[[-0.998856,-0.0478157,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-13.8838,10.8818,4.76837e-007],[[0.761159,-0.648565,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-16.9819,-2.64307,4.76837e-007],[[0.999256,-0.0385549,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-15.4111,-9.78516,4.76837e-007],[[0.894365,0.447338,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-10.2114,-13.0249,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-2.42236,-13.041,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[5.29053,-12.9824,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[12.6069,-11.5376,4.76837e-007],[[-0.375579,0.92679,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[16.4385,-6.86865,4.76837e-007],[[-0.999806,0.0196955,0],[0,0,1]],[true,true]],
     ["Land_GuardTower_02_F",[-14.0337,-7.36523,-4.76837e-007],[[-0.880069,-0.474846,0],[0,0,1]],[true,true]],
     ["Land_GuardTower_02_F",[14.0244,-8.22314,-4.76837e-007],[[0.66425,-0.747511,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[20.1841,8.98438,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[18.9443,13.6426,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[14.9834,16.4424,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[9.95752,16.2422,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[4.9082,16.4941,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[0.717773,16.2793,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-3.20068,16.418,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-7.00635,16.2202,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[0.340332,14.5366,4.76837e-007],[[0.0323532,-0.999476,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[4.11328,14.8003,4.76837e-007],[[-0.016479,0.999864,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[5.83496,14.7461,4.76837e-007],[[-0.00407439,0.999992,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[7.84863,14.5703,4.76837e-007],[[0.0181521,-0.999835,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-1.21436,14.5313,4.76837e-007],[[0.031236,-0.999512,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[2.05615,14.6963,4.76837e-007],[[-0.00364095,0.999993,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[16.1128,14.7993,4.76837e-007],[[0.0402891,-0.999188,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[9.75879,14.6187,4.76837e-007],[[0.0593539,-0.998237,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[14.0581,14.9316,4.76837e-007],[[-0.0158869,0.999874,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[12.1182,14.7148,4.76837e-007],[[0.0581215,-0.998309,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[4.4126,-13.9004,4.76837e-007],[[-0.00368624,0.999993,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[0.634277,-14.0557,4.76837e-007],[[-0.0121923,-0.999926,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-1.08545,-13.9526,4.76837e-007],[[-0.0245955,-0.999698,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-3.09375,-13.7192,4.76837e-007],[[0.0105195,0.999945,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[5.9668,-13.9399,4.76837e-007],[[-0.00256854,0.999997,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[2.69287,-14.0112,4.76837e-007],[[-0.0250288,-0.999687,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-11.3608,-13.7109,4.76837e-007],[[-0.0116272,0.999932,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-5.00439,-13.7119,4.76837e-007],[[-0.0307114,0.999528,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-9.31104,-13.9019,4.76837e-007],[[-0.0127845,-0.999918,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-7.36572,-13.7412,4.76837e-007],[[-0.0294774,0.999565,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.7729,13.0664,4.76837e-007],[[0.998948,-0.0458599,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.5054,10.918,4.76837e-007],[[-0.999924,0.0123574,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.7295,8.91406,4.76837e-007],[[1,0.00026317,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.7178,7.6377,4.76837e-007],[[1,0.000305967,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.1416,-9.45313,4.76837e-007],[[0.999771,-0.0213989,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[6.94824,-14.0688,4.76837e-007],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[9.73633,-13.4331,4.76837e-007],[[-0.313232,0.949677,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[11.7061,-12.9775,4.76837e-007],[[0.32657,-0.945173,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.189,-5.30469,4.76837e-007],[[-0.999701,0.0244345,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[8.44775,-13.8594,4.76837e-007],[[-0.31282,0.949812,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.1982,-7.34863,4.76837e-007],[[0.99934,-0.0363335,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[13.5078,-12.3408,0.0692105],[[0.365256,-0.930907,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[16.8564,-10.7007,4.76837e-007],[[0.902509,-0.430671,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[15.7217,-11.519,4.76837e-007],[[0.364107,-0.931357,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-17.9727,-4.85547,4.76837e-007],[[-0.999736,0.0229811,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-5.32471,14.4131,4.76837e-007],[[0.0314412,-0.999506,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-3.30225,14.5337,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-7.4126,14.3755,4.76837e-007],[[0.0353519,-0.999375,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-9.51611,14.4517,4.76837e-007],[[-0.0201386,0.999797,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-17.7456,-6.47217,4.76837e-007],[[-0.900359,-0.435148,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-17.8984,-2.76074,4.76837e-007],[[-0.999949,0.0101441,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-17.9155,-0.837402,4.76837e-007],[[-0.999746,0.0225477,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-17.7925,0.438477,4.76837e-007],[[0.999964,-0.00847119,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-16.9375,-8.38232,4.76837e-007],[[-0.893238,-0.449584,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-10.521,14.4907,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-12.0972,13.8491,4.76837e-007],[[0.649866,-0.760049,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-13.5337,12.6025,4.76837e-007],[[0.641459,-0.767157,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-14.8496,11.2505,4.76837e-007],[[0.807569,-0.589773,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-16.02,9.58691,4.76837e-007],[[0.827682,-0.561197,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-13.2573,-13.7881,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-15.8838,-10.1514,4.76837e-007],[[0.898975,0.438001,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-14.9897,-11.978,4.76837e-007],[[0.889868,0.456217,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[-14.46,-13.1309,4.76837e-007],[[-0.843752,-0.536733,0],[0,0,1]],[true,true]],
     ["Land_SandbagBarricade_01_half_F",[17.2749,-3.76074,4.76837e-007],[[0.999998,-0.00202183,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-11.4077,16.1719,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-15.1963,13.7988,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-17.8105,10.4185,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-20.1182,0.137695,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-20.1279,-4.9165,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-17.9321,-10.3613,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-15.4844,-15.1011,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-7.84766,-15.543,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[-1.06494,-15.5605,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[4.54688,-15.5435,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[16.6226,-13.083,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[19.1914,-8.89014,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[18.8564,-4.68896,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-13.0396,-15.3228,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-5.38965,-15.5117,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-3.06104,-15.52,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[1.15674,-15.5615,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[2.93994,-15.4941,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[6.91309,-15.5029,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[8.97852,-15.166,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[12.9004,-14.1528,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[14.8257,-13.5713,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[18.0425,-11.6152,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[18.7705,-10.3975,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[18.9248,-6.81543,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[19.7261,11.0811,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[18.1064,15.6416,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[13.2114,16.459,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[11.5361,16.3857,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[8.37109,16.7446,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[6.80469,16.7007,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[3.08838,16.4907,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-1.28809,16.2241,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-5.10107,16.332,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-9.26221,16.2866,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-13.0918,15.1519,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-16.7563,12.3003,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-19.9766,-1.94971,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-18.9067,-7.98047,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DragonsTeeth_01_1x1_old_F",[-16.4287,-12.8198,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_palette_F",[2.26514,-11.7207,4.76837e-007],[[-0.543415,0.839464,0],[0,0,1]],[true,true]],
     ["Land_Cargo10_military_green_F",[-9.1626,11.9565,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-11.52,12.3325,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-12.5977,11.7974,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-13.2563,11.1631,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pallet_MilBoxes_F",[0.358887,-12.3906,4.76837e-007],[[0.998746,0.0500691,0],[0,0,1]],[true,true]],
     ["Land_PortableCabinet_01_closed_black_F",[-0.905273,-12.8784,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PortableCabinet_01_closed_black_F",[-1.74902,-12.6841,4.76837e-007],[[0.999947,0.0103324,0],[0,0,1]],[true,true]],
     ["Land_TBox_F",[5.54004,-11.7671,4.76837e-007],[[0.0125027,-0.999922,0],[0,0,1]],[true,true]],
     ["Land_BarGate_F",[-17.2734,4.86035,9.53674e-007],[[0.993757,-0.111563,0],[0,0,1]],[true,true]],
     ["Land_BarGate_F",[17.3413,1.63721,9.53674e-007],[[-0.999552,0.0299242,0],[0,0,1]],[true,true]],
     ["Box_NATO_Wps_F",[-7.22266,-10.7539,4.76837e-007],[[-0.928982,0.370125,0],[0,0,1]],[true,true]],
     ["Box_NATO_Ammo_F",[-6.71045,-11.6685,4.76837e-007],[[-0.881602,-0.471993,0],[0,0,1]],[true,true]],
     ["Land_LampShabby_F",[-6.65918,8.71582,0],[[-0.698911,-0.715208,0],[0,0,1]],[true,true]],
     ["Land_LampShabby_F",[16.9351,6.60107,0],[[0.495081,-0.868847,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_F",[-16.0996,-0.650391,4.76837e-007],[[0.999999,0.00127597,0],[0,0,1]],[true,true]],
     ["Land_ConcreteHedgehog_01_F",[10.752,-14.9561,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pallets_stack_F",[-9.35938,9.78223,4.76837e-007],[[0.997008,0.0773016,0],[0,0,1]],[true,true]],
     ["Land_IronPipes_F",[-10.7993,-12.397,4.76837e-007],[[0.0430365,0.999074,0],[0,0,1]],[true,true]],
     ["Box_NATO_AmmoVeh_F",[-14.0752,-10.6978,9.53674e-007],[[0.863695,0.504014,0],[0,0,1]],[true,true]],
     ["Box_NATO_Support_F",[-7.43164,-9.26953,4.76837e-007],[[0.869869,0.493282,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[15.4653,-2.75732,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[12.6318,-2.75293,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[10.9429,-4.00244,4.76837e-007],[[0.999971,-0.00758228,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[10.3555,-11.3838,4.76837e-007],[[0.994452,0.10519,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[-15.8418,1.26514,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[-13.0005,1.21436,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[-11.1675,0.103516,4.76837e-007],[[-0.966419,-0.256972,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[1.22363,8.14355,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[9.81055,8.15674,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[-6.56689,8.77637,4.76837e-007],[[-0.99996,-0.00898872,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[16.501,7.10938,4.76837e-007],[[-0.999169,-0.0407697,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-19.1118,1.62842,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-17.8696,8.396,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-19.6372,8.35645,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[19.0308,6.60986,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[20.9175,6.57324,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[18.4956,-3.17236,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[20.248,-3.15088,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-20.7432,8.375,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_full_F",[-5.5918,7.37793,4.76837e-007],[[-0.999976,0.00694986,0],[0,0,1]],[true,true]],
     ["Land_Pallet_MilBoxes_F",[-0.378906,5.65039,4.76837e-007],[[0.982312,-0.187253,0],[0,0,1]],[true,true]],
     ["Land_Ammobox_rounds_F",[-1.51514,5.32715,4.76837e-007],[[-0.791758,-0.610835,0],[0,0,1]],[true,true]],
     ["Land_Ammobox_rounds_F",[-0.748047,6.66504,4.76837e-007],[[-0.570081,0.821588,0],[0,0,1]],[true,true]],
     ["Land_Ammobox_rounds_F",[-1.29541,6.06982,0.141801],[[-0.661564,0.115867,0.740884],[0.745882,-0.000325233,0.666078]],[true,true]],
     ["Land_CanisterFuel_Red_F",[-0.181152,6.521,4.76837e-007],[[0.150474,0.988614,0],[0,0,1]],[true,true]],
     ["Land_CanisterFuel_Red_F",[-0.136719,6.75977,4.76837e-007],[[0.056958,0.998377,0],[0,0,1]],[true,true]],
     ["Land_CanisterPlastic_F",[0.797852,5.66162,4.76837e-007],[[-0.660218,-0.751074,0],[0,0,1]],[true,true]],
     ["Land_TankTracks_01_long_F",[-0.0249023,7.46533,4.76837e-007],[[-0.998263,0.0589211,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[1.87061,6.45703,4.76837e-007],[[0.998174,0.0604,0],[0,0,1]],[true,true]],
     ["Land_AirConditioner_02_F",[-5.46631,5.60107,4.76837e-007],[[0.462347,-0.886699,0],[0,0,1]],[true,true]],
     ["Land_Portable_generator_F",[1.90967,5.06396,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Box_NATO_Ammo_F",[-1.90527,6.18604,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Box_NATO_Wps_F",[-0.754883,4.15869,4.76837e-007],[[-0.199851,-0.979826,0],[0,0,1]],[true,true]],
     ["Box_NATO_AmmoOrd_F",[-4.41992,7.66504,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Box_NATO_Equip_F",[-13.9961,9.95459,4.76837e-007],[[-0.956925,-0.290335,0],[0,0,1]],[true,true]],
     ["Box_NATO_Uniforms_F",[15.9551,7.29492,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Box_NATO_Support_F",[15.9829,6.18164,4.76837e-007],[[-0.557407,0.830239,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[8.53467,-11.5391,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Coffin_02_Cover_F",[9.66895,-11.4067,4.76837e-007],[[0.0596804,-0.998218,0],[0,0,1]],[true,true]],
     ["Land_sign_noentry_small_en_pl_F",[21.2793,-2.80322,0],[[-0.997964,0.0637856,0],[0,0,1]],[true,true]],
     ["Land_sign_noentry_small_en_pl_F",[-21.7432,8.24512,0],[[0.999603,-0.0281687,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[-15.6621,7.99902,4.76837e-007],[[-0.477605,-0.878575,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_stripes_F",[-8.27979,7.04199,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GasTank_02_F",[-8.58643,7.72217,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GasTank_02_F",[-8.54834,8.31543,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GasTank_02_F",[-8.91895,8.40674,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GasTank_02_F",[-8.9375,7.96387,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GasTank_02_F",[-8.18652,7.69775,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WeldingTrolley_01_F",[-7.40381,9.25391,4.76837e-007],[[0.99832,-0.057942,0],[0,0,1]],[true,true]],
     ["Land_PlasticBucket_01_closed_F",[-8.39893,10.3633,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PlasticBucket_01_closed_F",[-7.97852,10.2056,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PlasticBucket_01_closed_F",[-8.41064,9.93555,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CanisterFuel_Red_F",[15.8667,8.13965,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CanisterPlastic_F",[14.9775,7.90137,4.76837e-007],[[-0.87655,-0.48131,0],[0,0,1]],[true,true]],
     ["Land_GarbageBarrel_02_F",[11.8809,-11.2451,9.53674e-007],[[0.63793,-0.770095,0],[0,0,1]],[true,true]],
     ["Land_GarbageBarrel_02_F",[11.0542,-11.7051,9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[13.2446,-10.5039,4.76837e-007],[[-0.396944,0.917843,0],[0,0,1]],[true,true]],
     ["Land_LampShabby_F",[7.78174,-10.2959,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FieldToilet_F",[-15.2656,-5.73096,0.0922456],[[-0.999556,-0.0298041,0],[0,0,1]],[true,true]],
     ["Land_CinderBlocks_01_F",[11.3877,-10.0708,9.53674e-007],[[-0.187744,0.982218,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[3.54053,-9.75488,4.76837e-007],[[-0.999943,-0.0106623,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[4.33447,-7.59912,4.76837e-007],[[0.749731,-0.661743,0],[0,0,1]],[true,true]],
     ["CargoNet_01_barrels_F",[4.53906,-9.88184,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["FlexibleTank_01_forest_F",[4.70654,-8.69043,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["FlexibleTank_01_forest_F",[5.0542,-7.75195,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Flag_NATO_F",[-11.2939,-0.380371,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Scrap_MRAP_01_F",[-10.4185,-7.92773,4.76837e-007],[[-0.581069,-0.813854,0],[0,0,1]],[true,true]]
];

_simpleObjects = [
     ["B_Truck_01_cargo_F",[-2.97412,-8.25342,9.53674e-007],[[0.856078,0.516847,0],[0,0,1]]],
     ["Land_Pallet_F",[-1.63623,-10.8208,4.76837e-007],[[0,1,0],[0,0,1]]],
     ["Land_Pallet_F",[0.512207,-9.28955,4.76837e-007],[[0.699042,-0.715081,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_half_F",[-2.98486,-12.0981,4.76837e-007],[[-0.514496,-0.857493,0],[0,0,1]]],
     ["Land_CanisterFuel_Red_F",[-0.198242,-9.14014,0.204089],[[-0.688592,0.725149,0],[0,0,1]]],
     ["Land_CanisterFuel_Red_F",[-0.0283203,-9.30127,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_CanisterFuel_Red_F",[0.149902,-9.57031,0.204089],[[-0.773512,0.633781,0],[0,0,1]]],
     ["Land_Crowbar_01_F",[0.525879,-8.80518,0.204089],[[-0.88249,-0.470332,0],[0,0,1]]],
     ["Land_Ammobox_rounds_F",[0.429199,-9.84277,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_Ammobox_rounds_F",[0.563965,-10.1367,0.204089],[[0.690476,-0.723355,0],[0,0,1]]],
     ["Land_MetalCase_01_small_F",[0.685547,-9.42969,0.204089],[[0.682898,-0.730513,0],[0,0,1]]],
     ["Box_B_UAV_06_medical_F",[1.14404,-9.29785,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_PlasticCase_01_small_black_F",[-2.01416,-10.9448,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_PlasticCase_01_small_black_F",[-1.51953,-10.9609,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_PlasticCase_01_small_black_F",[-1.07129,-10.9653,0.204089],[[0,1,0],[0,0,1]]],
     ["Land_PlasticCase_01_small_black_F",[-1.9209,-10.3623,0.204089],[[0.700013,-0.714131,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_half_F",[-3.42188,-10.9102,4.76837e-007],[[0.827939,0.560819,0],[0,0,1]]],
     ["Land_ConcreteHedgehog_01_half_F",[-4.5542,-11.9429,4.76837e-007],[[0.760034,-0.649884,0],[0,0,1]]]
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
     ["B_HMG_01_high_F", [13.9375,-4.72607,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-13.3257,-1.00098,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-0.844238,-0.943848,0.00143909],4,6,"Blue"],
     [[-34.0747,2.57666,0.00143909],4,6,"Blue"]
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