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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy construction and supplies has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy construction has been cleared and looted.";
_timeoutMsg = "Enemy forces have abandoned the construction operation.";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Bandit Construction";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisRed;
_chancePara = GMS_chanceParaRed;
_noPara = GMS_noParaRed;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Red;
_paraLootCounts = GMS_lootCountsRed;
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

_crateLoot = GMS_BoxLoot_Red;
_lootCounts = GMS_lootCountsRed;
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
     ["Land_WIP_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[1.80518,-2.93311,0.458683],[[0,1,0],[-0.0109181,0,0.99994]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[5.65381,-35.9226,0],0]
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
     ["B_HMG_01_high_F", [-11.1069,-15.5367,15.3275], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-14.7139,8.56726,8.37062], [[0,1,0],[-0.00146484,0,0.999999]], "Red"],
     ["B_HMG_01_high_F", [-3.09766,-15.0094,4.31914], [[0,1,0.000488281],[0,-0.000488281,1]], "Red"],
     ["B_HMG_01_high_F", [-9.42334,9.85791,4.32428], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-0.385742,-8.10083,0.428122], [[0,0.999935,0.0114093],[0.00129187,-0.0114093,0.999934]], "Red"]
];

_missionGroups = [
     [[-3.92285,12.6506,0.401291],2,3,"Red"],
     [[3.12744,1.11157,8.37153],1,3,"Red"],
     [[8.59473,-18.2095,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[6.37939,1.82324,0.49],_crateLoot,_lootCounts,[[0,0.99991,-0.0133863],[-0.0121995,0.0133853,0.999836]]],
     ["I_CargoNet_01_ammo_F",[-7.06543,3.29126,12.1922],_crateLoot,_lootCounts,[[0,0.99981,0.0194764],[0.00989547,-0.0194755,0.999761]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";