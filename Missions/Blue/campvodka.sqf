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
_startMsg = "An enemy camp has been scouted and marked on the map. (GREEN/EASY)";
_endMsg = "Enemy Camp Vodka has been been cleared!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Camp Vodka";
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

//
_missionLandscape = [
     ["Land_Campfire_F",[0,0,-0.0299988],209.89,[false,false]],
     ["Land_Sleeping_bag_F",[2.3457,-2.79102,-0.0299988],317.349,[false,false]],
     ["Land_Sleeping_bag_F",[0.124512,-3.92944,-0.0299988],357.809,[false,false]],
     ["Land_BagFence_Round_F",[13.354,7.32642,-0.0299988],195.967,[false,false]],
     ["Land_BagFence_Round_F",[14.553,5.29053,-0.0299988],282.475,[false,false]],
     ["Land_BagFence_Round_F",[-12.2502,7.62354,-0.0299988],113.632,[false,false]],
     ["Land_BagFence_Round_F",[-10.0972,8.47852,-0.0299988],200.141,[false,false]],
     ["Land_BagFence_Round_F",[-11.5964,5.42139,-0.0299988],29.3423,[false,false]],
     ["Land_Camping_Light_F",[-1.896,1.04932,-0.0299988],178.63,[false,false]],
     ["Land_Sleeping_bag_brown_F",[3.8125,-0.619385,-0.0299988],281.451,[false,false]],
     ["Land_BagFence_Round_F",[2.27612,-14.3569,-0.0299988],2.52763,[false,false]],
     ["Land_Razorwire_F",[13.4277,-10.9404,-0.0299988],316.225,[false,false]],
     ["Land_Razorwire_F",[17.3496,-4.20728,-0.0299988],284.504,[false,false]],
     ["Land_Razorwire_F",[-13.3684,-3.9917,-0.0299988],72.4305,[false,false]],
     ["Land_Razorwire_F",[-9.06934,-10.5117,-0.0299988],40.7091,[false,false]],
     ["Land_BagFence_Short_F",[4.20776,-13.5015,-0.0299988],315.163,[false,false]],
     ["Land_BagFence_Short_F",[0.344971,-13.2856,-0.0299988],224.331,[false,false]],
     ["Land_CanisterPlastic_F",[4.12109,-12.3682,-0.0299988],99.8685,[false,false]],
     ["Land_TentDome_F",[-0.210693,8.05469,-0.0299988],267.026,[false,false]],
     ["Land_TentDome_F",[4.05396,7.44849,-0.0299988],280.785,[false,false]],
     ["Land_Garbage_square5_F",[1.1543,0.407471,-0.0299988],189.408,[false,false]],
     ["RoadCone_F",[6.6665,-3.31982,-0.0299988],0,[false,false]]
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
     ["B_HMG_01_high_F", [13.0264,5.63403,-0.0299988], 0, "Blue"],
     ["B_HMG_01_high_F", [-10.377,6.94458,-0.0299988], 0, "Blue"],
     ["B_HMG_01_high_F", [2.69507,-12.7312,-0.0299988], 0, "Blue"]
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