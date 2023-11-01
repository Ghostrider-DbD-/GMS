/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.41 : Build 23 : Build Date 10/17/23
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
_startMsg = "An enemy camp has been scouted and marked on the map. (Blue)";
_endMsg = "Enemy Camp Gin has been been cleared!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorBlue";


_markerMissionName = "Camp Gin";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Blue;
_maxNoAI = GMS_MaxAI_Blue;
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
     ["Land_Unfinished_Building_02_F",[-0.565674,-0.0466309,0],180.205,[true,true]],
     ["Land_Wreck_Car3_F",[-12.2322,-2.91504,0],6.54897,[true,true]],
     ["Land_Scaffolding_F",[5.50586,-7.58691,0],269.743,[true,true]],
     ["Land_Bricks_V1_F",[-5.74146,7.43262,0],175.95,[true,true]],
     ["Land_WheelCart_F",[10.9922,-5.70313,0],265.465,[true,true]],
     ["Land_BarrelSand_grey_F",[8.99219,-8.375,0],256.847,[true,true]],
     ["MetalBarrel_burning_F",[-2.95117,-2.07617,3.73],128.839,[true,true]],
     ["Land_CinderBlocks_F",[-8.6438,-4.54834,0],287.942,[true,true]],
     ["Land_CinderBlocks_F",[-8.18286,-1.37256,0],178.704,[true,true]],
     ["Land_Shoot_House_Corner_Stand_F",[-7.46069,3.79736,0],90.1112,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-7.84595,2.22241,0],89.8735,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-7.82642,0.224365,0],88.7147,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-6.90991,-6.85962,0],359.941,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-4.92554,-6.8479,0],359.941,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-8.01001,-5.95532,0],88.7147,[true,true]],
     ["Land_Shoot_House_Wall_Stand_F",[-1.89868,4.9939,0],88.7147,[true,true]],
     ["Land_Shoot_House_Wall_Crouch_F",[2.45288,6.5686,0],180.205,[true,true]],
     ["Land_Shoot_House_Wall_Crouch_F",[3.36353,5.48657,0],269.188,[true,true]],
     ["Land_Shoot_House_Wall_Long_F",[5.28247,4.40234,0],180.205,[true,true]],
     ["Land_Shoot_House_Corner_F",[7.8728,3.99658,0],180.205,[true,true]],
     ["Land_Bricks_V2_F",[-6.92432,6.5188,0],272.435,[true,true]],
     ["Land_Bricks_V4_F",[-4.35889,6.84644,0],162.602,[true,true]],
     ["RoadCone_F",[0.683594,1.20654,3.73],0,[true,true]]
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
     ["B_HMG_01_high_F", [0.421387,4.16455,3.73], 0, "Blue"],
     ["B_HMG_01_high_F", [6.03931,-3.85498,0.252224], 0, "Blue"],
     ["B_HMG_01_high_F", [-4.71875,-4.2583,3.73], 0, "Blue"]
];

_missionGroups = [

];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [

];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";