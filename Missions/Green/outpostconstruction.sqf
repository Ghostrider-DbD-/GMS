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
_defaultMissionLocations = [[12446.4,15193.9,-0.0748901]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces are air dropping supplies to establish a military outpost. STOP THEM!(RED/HARD)";
_endMsg = "South Military Hill outpost construction has been stopped! (SUCCESS)";
_timeoutMsg = "Mercenaries have established an outpost and are shifting forces to attack (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Outpost Construction";
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
     ["RoadCone_F",[26.3281,4.39355,0.0751495],[[0,0.999999,-0.00133721],[-0.0293202,0.00133664,0.999569]],[true,true]]
     //["I_CargoNet_01_ammo_F",[-15.1309,11.9463,0.075531],[[0,0.999956,0.00933759],[-0.025322,-0.0093346,0.999636]],[true,true]],
     //["I_CargoNet_01_ammo_F",[12.7383,0.273438,0.0749664],[[0,0.999978,-0.00666711],[-0.00666711,0.00666696,0.999956]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[48.3457,1.22852,0.076683],0],
     ["CUP_C_Tractor_Old_CIV",[-31.1084,15.749,0.0441589],0],
     ["CUP_C_Tractor_Old_CIV",[40.958,-12.0068,0.15802],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_C_CESSNA_CIV",[56.6797,-18.3486,0.0956268],0],
     ["CUP_O_UH1H_TKA",[39.3682,14.9629,0.103378],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [0,0,17.919], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_GMG_01_high_F", [-6.43652,-3.8623,18.0069], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_HMG_01_high_F", [22.0381,13.8438,4.41682], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [22.4131,-23.873,0.171074], [[0,0.973264,0.229691],[-0.0625447,-0.229241,0.971358]], "Green"],
     ["B_HMG_01_high_F", [-19.1143,-0.179688,0.0775909], [[0,0.999978,0.00666818],[-0.039967,-0.00666285,0.999179]], "Green"],
     ["B_HMG_01_high_F", [-6.26367,4.20508,13.1205], [[0,0.999995,-0.0031074],[0.000488281,0.0031074,0.999995]], "Green"],
     ["B_HMG_01_high_F", [-6.25,4.33008,18.0149], [[0,1,0],[0.000488281,0,1]], "Green"]
];

_missionGroups = [
     [[64.1113,3.89551,0.0782089],1,3,"Green",30,45],
     [[-11.043,8.82324,0.0759125],1,3,"Green",30,45],
     [[-58.1211,6.28906,0.0795746],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-15.1309,11.9463,0.075531],_crateLoot,_lootCounts,[[0,0.999956,0.00933759],[-0.025322,-0.0093346,0.999636]]],
     ["I_CargoNet_01_ammo_F",[12.7383,0.273438,0.0749664],_crateLoot,_lootCounts,[[0,0.999978,-0.00666711],[-0.00666711,0.00666696,0.999956]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";