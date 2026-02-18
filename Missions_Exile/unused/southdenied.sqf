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
_defaultMissionLocations = [[10780.8,10558.2,0.000335693]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary dick bags have setup a roadblock to the southern continent! (GREEN)";
_endMsg = "The roadblock to the south continent has been squashed and looted!";
_timeoutMsg = "Enemy forces have abandoned the southern roadblock (MISSED CHANCE)";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "South Denied";
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
     ["Land_CncBarrierMedium4_F",[0.0292969,-0.00585938,-2.57492e-005],[[0.260061,0.965592,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-4.20508,6.74512,0.000343323],[[0.498311,-0.866854,0.0158032],[0.0146684,0.0266542,0.999537]],[true,true]],
     ["Land_CamoNetVar_NATO",[2.29785,7.11035,-0.00791168],[[-0.999956,0.0015526,0.00930208],[0.00933489,0.0226593,0.9997]],[true,true]],
     ["Land_CncBarrierMedium4_F",[8.03516,3.60938,-0.000335693],[[0.999999,-0.0012856,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[5.15234,15.1299,-1.04904e-005],[[0.0261135,0.999366,-0.0241919],[0.0080009,0.0239905,0.99968]],[true,true]],
     ["Land_CncBarrier_F",[1.55176,15.1201,-1.81198e-005],[[0.0222919,0.99946,-0.0241364],[0.00666818,0.0239932,0.99969]],[true,true]],
     ["Land_CncBarrier_F",[-4.58008,9.49902,-0.000101089],[[0.958794,-0.28407,-0.00422234],[0.0146643,0.0346418,0.999292]],[true,true]],
     ["Land_CncBarrierMedium_F",[7.29297,7.75488,-0.000510216],[[0.501198,0.86501,-0.0236139],[0.00799344,0.0226595,0.999711]],[true,true]],
     ["Land_CncBarrierMedium_F",[5.54785,8.48145,-0.000510216],[[0.260185,0.965261,-0.0239591],[0.00799344,0.0226595,0.999711]],[true,true]],
     ["Land_CncBarrierMedium_F",[-1.82715,8.99121,0.000362396],[[-0.260067,-0.965285,0.0243076],[0.00933489,0.0226593,0.9997]],[true,true]],
     ["Land_CncBarrierMedium_F",[-3.07813,8.24414,-5.72205e-005],[[0.965536,-0.260202,-0.00593922],[0.0133317,0.0266547,0.999556]],[true,true]],
     ["Land_CncBarrierMedium_F",[0.0507813,8.74121,0.000320435],[[-0.00130401,-0.999742,0.0226724],[0.00933489,0.0226593,0.9997]],[true,true]],
     ["Land_BagBunker_Small_F",[2.80078,9.7373,-0.0147667],[[-0.0015088,-0.999643,0.0266711],[0.0093285,0.0266559,0.999601]],[true,true]],
     ["Land_CncBarrier_F",[-2.19434,13.75,-0.000282288],[[0.6912,-0.722549,0.0128175],[0.0093285,0.0266559,0.999601]],[true,true]],
     ["Land_CncBarrierMedium4_F",[40.459,0.382813,-0.000335693],[[0.999797,0.0201544,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[28.1445,3.50977,-0.00033474],[[0.999797,0.0201544,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[33.8516,-0.625977,-0.000335693],[[0.0201549,-0.999797,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[27.9785,11.7539,8.29697e-005],[[0.000648004,0.999743,-0.0226749],[0.0226603,0.0226544,0.999487]],[true,true]],
     ["Land_CncBarrier_F",[31.585,11.8428,8.2016e-005],[[0.00462044,0.99973,-0.0227647],[0.0226603,0.0226544,0.999487]],[true,true]],
     ["Land_CncBarrierMedium4_F",[32.0674,7.21484,-0.000335693],[[0.0201549,-0.999797,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[36.8301,7.05371,-0.000283241],[[0.240226,0.970599,-0.01514],[0.0253228,0.00932551,0.999636]],[true,true]],
     ["Land_CncBarrierMedium_F",[38.5928,6.36621,-0.000385284],[[0.483176,0.875285,-0.0204053],[0.0253228,0.00932551,0.999636]],[true,true]],
     ["Land_CncBarrier_F",[35.7295,11.6563,0.000120163],[[0.00104197,0.999742,-0.0226866],[0.0253251,0.022653,0.999423]],[true,true]],
     //["IG_supplyCrate_F",[2.50391,3.32422,0.000268936],[[0.976187,0.216118,-0.0187831],[0.0133317,0.0266547,0.999556]],[true,true]],
     //["IG_supplyCrate_F",[38.1875,-1.32227,0.000738144],[[0.975816,0.217936,-0.0169202],[0.033315,-0.0717741,0.996864]],[true,true]],
     ["RoadCone_F",[29.3916,-2.86523,-0.000132561],[[0.975746,0.215999,-0.0355492],[0.031983,0.0199845,0.999289]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[-4.13867,-9.76465,0.000865936],143.448]
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
     ["B_HMG_01_high_F", [33.8691,-1.92285,5.55907], [[0.976199,0.216876,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [2.80566,9.7168,0.000883102], [[0.976199,0.216363,-0.0148798],[0.0093285,0.0266559,0.999601]], "Blue"]
];

_missionGroups = [
     [[17.3076,6.4248,0.00231171],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[2.50391,3.32422,0.000268936],_crateLoot,_lootCounts,[[0.976187,0.216118,-0.0187831],[0.0133317,0.0266547,0.999556]]],
     ["IG_supplyCrate_F",[38.1875,-1.32227,0.000738144],_crateLoot,_lootCounts,[[0.975816,0.217936,-0.0169202],[0.033315,-0.0717741,0.996864]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";