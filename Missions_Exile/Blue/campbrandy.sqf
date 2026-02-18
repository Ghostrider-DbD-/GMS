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
_endMsg = "Enemy Camp Brandy has been been cleared!!";
_timeoutMsg = "Enemy camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Camp Brandy";
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
     ["Land_d_Windmill01_F",[0.93335,-0.279541,0],8.40899,[false,false]],
     ["Land_d_House_Small_02_V1_F",[-16.7925,3.76196,0],8.40899,[false,false]],
     ["Land_Wreck_Truck_dropside_F",[-5.82764,-7.52271,0],268.716,[false,false]],
     ["Land_Wreck_Car2_F",[-10.3225,-7.23999,0],110.971,[false,false]],
     ["Land_Pipes_large_F",[-5.37036,5.61572,0],358.884,[false,false]],
     ["Land_Pallets_stack_F",[-2.33789,5.34375,0],97.283,[false,false]],
     ["Land_WoodenBox_F",[-0.724854,4.72339,0],250.848,[false,false]],
     ["Land_Pallets_stack_F",[-1.82422,3.74414,0],166.979,[false,false]],
     ["Land_Sacks_heap_F",[-0.140625,-7.23828,0],353.17,[false,false]],
     ["Land_Sacks_heap_F",[0.00585938,-5.82617,0],97.166,[false,false]],
     ["Land_Sacks_heap_F",[-2.49609,-7.81152,0],91.113,[false,false]],
     ["Land_Sacks_heap_F",[-1.41992,-7.52539,0],254.03,[false,false]],
     ["Land_CratesShabby_F",[-12.8123,-5.6626,0],4.89426,[false,false]],
     ["Land_CratesWooden_F",[-11.8789,-1.16992,0],190.636,[false,false]],
     ["Land_WoodenCart_F",[7.08594,-0.929688,0],359.928,[false,false]],
     ["Land_CratesShabby_F",[-12.6147,-2.18481,0],278.435,[false,false]],
     ["Land_Sacks_heap_F",[6.82227,1.06348,0],63.793,[false,false]],
     ["RoadCone_F",[-16.9468,-3.62524,0],0,[false,false]]
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
     ["B_HMG_01_high_F", [-2.30103,-4.84326,0], 0, "Blue"],
     ["B_HMG_01_high_F", [-5.40967,3.75073,0], 0, "Blue"],
     ["B_HMG_01_high_F", [-11.5029,4.77368,0.400784], 0, "Blue"]
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