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
_startMsg = "An small enemy campsite has been scouted and marked on the map. (GREEN)";
_endMsg = "Small enemy campsite has been been cleared and looted!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Small Campsite";
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

//
_missionLandscape = [
     ["Land_TentDome_F",[0.188477,-0.161621,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_CanisterPlastic_F",[3.06348,-5.28662,0],[[0.71877,-0.695248,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[1.59277,7.43164,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-1.68652,5.83838,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-1.54028,4.33545,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[2.58447,6.14502,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-0.311523,7.33838,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[4.18848,-1.28662,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TentDome_F",[9.56348,0.213379,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[7.51123,-10.4175,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[9.43848,-9.28662,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Campfire_burning_F",[5.18848,-2.41162,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodPile_F",[10.1887,-3.91211,0],[[0.611854,0.790971,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[6.21997,-9.43066,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[9.29224,-7.7832,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_CanisterPlastic_F",[3.43848,-4.91162,0],[[0.979684,0.200546,0],[0,0,1]],[true,true]],
     ["Land_Axe_F",[10.1387,-2.83984,0],[[0.575334,-0.817919,0],[0,0,1]],[true,true]],
     ["Land_WoodPile_large_F",[5.81348,3.21338,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[0.574707,-4.94238,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[8.1936,-2.86377,0],[[0,1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [0.299316,5.73291,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [7.80762,-8.55322,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-9.49316,-0.722168,0.00143909],2,3,"Blue"],
     [[18.7739,-1.60059,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0.574707,-4.94238,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";