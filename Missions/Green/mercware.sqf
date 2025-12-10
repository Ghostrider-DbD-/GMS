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
_defaultMissionLocations = [[4922.53,11071.6,0.00175095]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy explosives manufacturing warehouses scouted and marked on map! (RED/HARD)";
_endMsg = "Enemy warehouses cleared and looted!";
_timeoutMsg = "Enemy forces have finished warehouse operations and fled the area.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Mercenary Warehouses";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 4;
_noAIGroups = 0;
_noVehiclePatrols = GMS_SpawnVeh_Green;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = GMS_noPatrolHelisGreen;
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
     ["RoadCone_F",[-0.0170898,-0.0136719,1.90735e-006],[[0,0.998719,0.0506016],[-0.0651943,-0.050494,0.996594]],[true,true]],
     ["Box_IED_Exp_F",[-5.5,52.5166,0.428675],[[0,0.999866,0.0163475],[-0.0224303,-0.0163433,0.999615]],[true,true]],
     ["Box_IND_AmmoOrd_F",[-5.10693,60.8467,0.256296],[[0,1,0.000345055],[-0.00860393,-0.000345042,0.999963]],[true,true]],
     ["CUP_BOX_I_NAPA_AmmoOrd_F",[74.0269,-16.3467,0.223392],[[0,0.999973,-0.00734854],[0.0277882,0.0073457,0.999587]],[true,true]],
     ["APERSTripMine",[66.7524,-3.60645,0.106819],[[-0.739685,0.672311,-0.0293981],[-0.00150498,0.0420325,0.999115]],[true,true]],
     ["APERSTripMine",[78.7964,-22.6221,0.309414],[[-0.644267,-0.764402,0.0246953],[0.0319942,0.00532377,0.999474]],[true,true]],
     ["APERSTripMine",[17.9136,-37.8594,0.193134],[[0.786552,0.617523,0.00027893],[0.00138107,-0.00221078,0.999997]],[true,true]],
     ["APERSTripMine",[-5.7373,66.2539,0.0816765],[[-0.0888837,0.995659,-0.0276078],[0.0298578,0.0303684,0.999093]],[true,true]],
     ["APERSTripMine",[-12.4316,43.7764,0.442341],[[-0.995719,-0.0922394,0.00601265],[0.00381359,0.0239985,0.999705]],[true,true]],
     ["CUP_IED_V1",[36.4292,-10.8994,-0.00173187],[[-0,-0.999772,-0.02133],[-0.0744604,-0.0212708,0.996997]],[true,true]],
     ["CUP_IED_V3",[56.96,4.05176,-0.00179672],[[-0,-0.999872,-0.0159977],[-0.073137,-0.0159548,0.997194]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[10.4585,15.3438,0.0612831],0],
     ["B_APC_Wheeled_01_cannon_F",[-28.4248,5.58594,0.0226536],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[25.1528,-81.25,0.00187111],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [50.0063,-26.5977,4.52826], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-2.16064,-48.6992,0.00432205], [[0,0.999201,-0.0399685],[-0.0452881,0.0399275,0.998176]], "Green"],
     ["B_HMG_01_high_F", [83.0215,-16.7412,0.288509], [[0,0.999986,0.00523595],[-0.0293303,-0.0052337,0.999556]], "Green"],
     ["B_HMG_01_F", [-10.8726,58.5459,0.401419], [[0,1,0],[0.00114471,0,0.999999]], "Green"],
     ["B_HMG_01_high_F", [-5.05615,44.082,0.467758], [[0,0.999829,-0.0185185],[-0.0237089,0.0185133,0.999547]], "Green"],
     ["B_static_AA_F", [8.70361,-30.7568,0.0212193], [[0,0.999488,0.0319849],[-0.148985,-0.0316279,0.988333]], "Green"],
     ["B_static_AT_F", [60.5923,94.3857,3.64649], [[0,0.996287,0.0860981],[-0.0955656,-0.085704,0.991727]], "Green"],
     ["B_HMG_01_high_F", [53.7334,-28.3828,0.852516], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [17.7437,-40.4346,0.40621], [[0,0.999998,0.00221044],[0.00138075,-0.00221044,0.999997]], "Green"],
     ["B_GMG_01_high_F", [9.91846,31.168,0.509674], [[0,0.997166,-0.0752275],[-0.116323,0.0747168,0.990397]], "Green"],
     ["B_GMG_01_high_F", [68.6968,-16.5303,-0.00115204], [[0,0.99985,0.0173315],[-0.0080009,-0.017331,0.999818]], "Green"],
     ["CUP_B_ZU23_CDF", [-7.89355,-36.8643,0.00274658], [[0,0.999743,0.0226629],[-0.0426276,-0.0226423,0.998834]], "Green"],
     ["CUP_B_SPG9_CDF", [39.8911,20.2236,-0.000516891], [[0,0.99985,-0.0173316],[-0.0532575,0.017307,0.998431]], "Green"]
];

_missionGroups = [
     [[-22.2612,-49.5713,0.00259399],1,3,"Green"],
     [[-14.0801,-8.76855,-0.0028801],1,3,"Green"],
     [[23.2393,32.8066,-0.00476837],1,3,"Green"],
     [[39.6401,-47.875,-0.00668716],1,3,"Green"],
     [[-30.082,36.0254,-0.00209808],1,3,"Green"]
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