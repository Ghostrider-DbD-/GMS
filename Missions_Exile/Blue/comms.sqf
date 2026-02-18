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
_startMsg = "An small enemy comms has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy Comms has been been cleared and looted!";
_timeoutMsg = "Enemy comms has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Small Comms";
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
     ["RoadCone_F",[7.80396,-1.95459,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-6.8269,-5.05176,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-4.82715,-8.42676,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_F",[-4.7019,-6.92285,0],[[0.000403607,1,0],[0,0,1]],[true,true]],
     ["AmmoCrates_NoInteractive_Large",[-5.0769,-3.92676,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CamoNet_NATO",[-5.53296,-2.80176,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-3.57715,4.57324,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-6.8269,0.198242,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-5.20215,-0.926758,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-5.20215,-2.55176,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-4.07715,-0.426758,0],[[0.499202,0.866486,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-3.70215,0.323242,0],[[-0.000157181,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_empty_F",[-4.45166,0.323242,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[4.29785,-7.67627,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[10.9229,-4.55176,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[2.54785,-3.80176,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[3.29785,-3.92676,0],[[0.499202,0.866486,0],[0,0,1]],[true,true]],
     ["Land_Pallets_stack_F",[4.92285,-3.80176,0],[[-0.258802,-0.96593,0],[0,0,1]],[true,true]],
     ["USMC_WarfareBUAVterminal",[5.29785,2.69824,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[4.2981,5.82324,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[11.6731,-0.176758,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_1_F",[9.54785,5.44824,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[3.67285,-3.17676,0],[[0.000119969,1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_empty_F",[2.92334,-3.17676,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [8.52783,-6.80127,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [11.5178,3.41162,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[19.4348,9.34229,0.00143909],2,3,"Blue"],
     [[-13.0657,-16.1323,0.00143909],2,3,"Blue"]
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