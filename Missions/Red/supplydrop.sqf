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
_startMsg = "An unarmed plane is dropping supplies to waiting mercenaries! INTERCEPT! (ORANGE/MEDIUM)";
_endMsg = "Mercenry crates have been intercepted. Loot secured!";
_timeoutMsg = "Mercenary forces have collected the supplies and grow stronger (FAILED)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Merc Supply Drop";
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
_endCondition = playerNear;
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
     //["I_CargoNet_01_ammo_F",[-33.0442,-14.9531,-0.0999765],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-30.3472,-18.6821,-0.0999765],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-25.2751,-16.0205,-0.0999765],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-19.5249,-7.04492,-0.0999765],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[0,0,-0.0999765],0],
     ["CUP_I_SUV_Armored_ION",[-27.6851,-11.0024,-0.0984068],0],
     ["CUP_I_4WD_AT_ION",[-26.8215,19.5483,-0.0999765],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_C_CESSNA_CIV",[-44.4944,1.81934,-0.100622],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [

];

_missionGroups = [

];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-33.0442,-14.9531,-0.0999765],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-30.3472,-18.6821,-0.0999765],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-25.2751,-16.0205,-0.0999765],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";