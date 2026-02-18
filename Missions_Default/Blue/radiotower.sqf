/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.61 : Build 28 : Build Date 11/02/23
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
_startMsg = "An enemy radio tower has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy Radio Tower has been been cleared and looted!";
_timeoutMsg = "Enemy radio tower has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Radio Tower";
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
     //["I_CargoNet_01_ammo_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[5.62817,-5.49658,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-13.1091,-11.9063,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-13.7341,-6.40576,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-13.7341,-9.28076,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["FoldTable",[-6.99341,-6.60303,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-11.6091,-12.5308,0],[[0,1,0],[0,0,1]],[true,true]],
     ["FoldChair",[-7.84668,-6.31299,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["FoldChair",[-6.13867,-6.89307,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["FoldChair",[-7.34814,-7.21387,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["FoldChair",[-6.63989,-5.9917,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-6.73413,-3.78174,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_CratesWooden_F",[-6.5791,-0.591797,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-13.1091,3.84424,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-13.7341,1.21924,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Fort_Crate_wood",[-5.13037,-0.203613,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_Sack_F",[-5.92822,0.358887,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-13.6091,-4.65674,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-11.6091,4.46924,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-13.4844,-0.53125,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Fort_Crate_wood",[-4.73413,-1.40625,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_Vysilac_FM",[2.89063,-8.03125,-4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[-0.609131,-8.28125,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_GarbagePallet_F",[-0.484375,-8.06494,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[4.14111,-15.2808,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[1.26587,-14.9058,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[6.26611,-13.5313,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-0.983887,-13.0313,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceCorner",[6.01587,-14.9063,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceCorner",[-0.608887,-14.2813,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel4",[-0.670166,-6.64502,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Barrel4",[-0.734131,-5.90625,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-1.10889,-11.9067,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[6.14087,-12.4067,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Barrel4",[-1.35913,-6.65625,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[3.27441,-2.0918,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_GarbagePallet_F",[3.51587,-2.15576,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Pallets_F",[2.01587,-2.03125,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_Pallets_F",[4.51611,-1.03125,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [4.48706,-8.77002,14.5982], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-10.7739,-10.2891,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[7.67651,4.87354,0.00143909],2,3,"Blue"],
     [[-8.06714,-21.8193,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";