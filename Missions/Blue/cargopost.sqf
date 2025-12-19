/*
	any Mission Generated
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
_startMsg = "An enemy cargo post has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy cargo post has been been cleared and looted!";
_timeoutMsg = "Enemy cargo post has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Cargo Post";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 3;
_maxNoAI = 6;
_noAIGroups = GMS_AIGrps_Blue;
_noVehiclePatrols = GMS_SpawnVeh_Blue;
_noEmplacedWeapons = GMS_SpawnEmplaced_Blue;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = GMS_noPatrolHelisBlue;
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

_missionLandscape = [
     //["I_CargoNet_01_ammo_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[4.35278,-0.159668,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[2.30396,0.00390625,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-10.1064,5.271,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-9.2312,2.89551,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pneu",[-6.73145,6.02051,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Barrel2",[-8.73145,5.14551,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Barrel2",[-8.29395,4.3877,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel4",[-8.00562,5.51025,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Barrel4",[-8.06958,6.24902,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Barrel4",[-8.74023,5.97559,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-10.1064,8.646,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-9.23169,10.6455,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-6.23145,14.2705,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-6.85645,11.6455,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-5.9812,2.89551,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-2.85474,2.93164,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pallets_F",[-5.7312,4.77002,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V1_F",[-6.1062,6.771,4.76837e-007],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[2.14355,2.77051,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-0.106445,2.77051,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[4.01855,3.39551,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["AmmoCrates_NoInteractive_Small",[-4.35645,4.52051,0],[[1.74846e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[0.268555,10.2705,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-0.606689,12.5205,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-3.85645,14.8955,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[2.39355,12.5205,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[4.64355,11.7705,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[5.26855,9.89502,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Misc_concrete_High",[-1.60645,10.1455,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [3.32373,8.81201,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-4.99316,7.48535,4.34404], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[10.373,6.51221,0.00143909],2,3,"Blue"],
     [[-19.7693,11.3306,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[2.30396,0.00390625,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";