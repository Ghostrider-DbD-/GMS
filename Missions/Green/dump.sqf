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
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "An armed cargo plane is dropping guns and ammo to ground forces. INTERCEPT!";
_endMsg = "Mercenary cargo plane and ground forces have been eliminated. Loot secure!";
_timeoutMsg = "Mercs have dropped guns and ammo to ground forces, and they grow stronger (MISSION FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Cargo Dump";
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
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 0;
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
_endCondition = playerNear;
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
     //["I_CargoNet_01_ammo_F",[24.1609,-17.3442,-0.099977],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[26.8579,-21.0732,-0.099977],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[31.9299,-18.4116,-0.099977],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[37.6802,-9.43604,-0.099977],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[0,0,-0.099977],0],
     ["CUP_I_4WD_LMG_ION",[57.2051,-2.39111,-0.099977],0],
     ["CUP_I_4WD_LMG_ION",[29.239,-39.2974,-0.099977],0],
     ["CUP_I_SUV_Armored_ION",[29.52,-13.3936,-0.0984073],0],
     ["CUP_I_4WD_AT_ION",[30.3835,17.1572,-0.099977],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_CESSNA_T41_ARMED_HIL",[52.0054,20.375,-0.100623],0]
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
     ["I_CargoNet_01_ammo_F",[24.1609,-17.3442,-0.099977],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[26.8579,-21.0732,-0.099977],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[31.9299,-18.4116,-0.099977],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";