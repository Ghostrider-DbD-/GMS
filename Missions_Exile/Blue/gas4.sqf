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
_defaultMissionLocations = [[20775.4,16675.8,-0.0921593]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A mercenary group has taken over a nearby gas station! (GREEN/EASY)";
_endMsg = "Gas station mercenaries have been wiped out. Fill 'er up!";
_timeoutMsg = "Mercenaries have stripped the gas station supplies and fled. (FAILED)";
_markerType = ["ELLIPSE",[200,200],"GRID"];
_markerColor = "ColorGreen";


_markerMissionName = "Gasholes";
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
     ["Land_coneLight",[0,0,0],[[0,0.998509,0.0545842],[0.00133721,-0.0545842,0.998508]],[true,true]]
     //["I_CargoNet_01_ammo_F",[1.23242,-0.787109,0.00245667],[[0,0.998509,0.0545842],[0.00133721,-0.0545842,0.998508]],[true,true]],
     //["I_CargoNet_01_ammo_F",[1.4082,-2.4707,0.0948639],[[0,0.998509,0.0545842],[0.00133721,-0.0545842,0.998508]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[4.60742,-16.7813,0.0934067],0]
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
     ["B_HMG_01_high_F", [-7.01953,-8.17969,0.269611], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-4.10352,-30.8848,0.0919609],1,3,"Blue"],
     [[23.4277,5.35742,0.092514],1,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[1.23242,-0.787109,0.00245667],_crateLoot,_lootCounts,[[0,0.998509,0.0545842],[0.00133721,-0.0545842,0.998508]]],
     ["I_CargoNet_01_ammo_F",[1.4082,-2.4707,0.0948639],_crateLoot,_lootCounts,[[0,0.998509,0.0545842],[0.00133721,-0.0545842,0.998508]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";