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
_startMsg = "An enemy flight school is in session... we hear their training planes are UNARMED! LOL! (ORANGE/MEDIUM)";
_endMsg = "Enemy pilots have been taken out before training could take place! (SUCCESS)";
_timeoutMsg = "Enemy flight school has finished, their pilots have been trained (MISSION FAILED)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Bambi Flight School";
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
     ["Land_MilOffices_V1_F",[-0.0078125,-2.79492,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-4.21094,12.5913,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[-31.7612,-1.15479,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_C_CESSNA_CIV",[-1.8418,38.5791,-0.000645638],0],
     ["CUP_C_CESSNA_CIV",[-6.72266,-65.3481,-0.000645638],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-15.1504,19.6279,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-7.83691,-6.03906,0.503], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [14.6465,-25.978,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[-0.29834,0.533691,0.504438],1,2,"Red"],
     [[-2.87402,23.5664,0.00143909],1,2,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-3.40576,-5.86133,0.503],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[0.977051,-5.77734,0.503],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";