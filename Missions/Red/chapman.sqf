/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.42 : Build 24 : Build Date 10/19/23
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
_startMsg = "Enemy outpost has been scouted and marked on the map (RED)";
_endMsg = "Enemy outpost has been cleared and looted.";
_timeoutMsg = "Enemy forces have abandoned the outpost.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Chapman Outpost";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Red;
_maxNoAI = GMS_MaxAI_Red;
_noAIGroups = GMS_AIGrps_Red;
_noVehiclePatrols = GMS_SpawnVeh_Red;
_noEmplacedWeapons = GMS_SpawnEmplaced_Red;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = GMS_noPatrolHelisRed;
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
     ["RoadCone_F",[0.000244141,-0.000244141,0],0,[true,true]],
     ["Land_HBarrierBig_F",[18.9143,-10.6416,0],271.956,[true,true]],
     ["Land_HBarrierBig_F",[15.5942,20.1006,0],181.89,[true,true]],
     ["Land_Cargo_HQ_V2_F",[-6.13086,10.1614,4.76837e-007],179.046,[true,true]],
     ["Land_HBarrierBig_F",[18.8435,4.37842,0],271.054,[true,true]],
     ["Land_HBarrierBig_F",[0.737549,20.0474,0],181.375,[true,true]],
     ["Land_HBarrierBig_F",[-19.0042,6.06226,0],271.204,[true,true]],
     ["Land_HBarrierBig_F",[-3.44995,20.0376,0],181.375,[true,true]],
     ["Land_HBarrierBig_F",[-18.646,-10.9131,0],269.27,[true,true]],
     ["Land_HBarrierBig_F",[5.45557,-14.1545,0],0.792412,[true,true]],
     ["Land_Mil_WiredFence_F",[23.3525,-9.46265,0],269.14,[true,true]],
     ["Land_Mil_WiredFence_F",[23.1787,6.17603,0],269.14,[true,true]],
     ["Land_Mil_WiredFence_F",[23.0713,14.01,0],269.14,[true,true]],
     ["Land_Mil_WiredFence_F",[22.9307,21.8831,0],269.14,[true,true]],
     ["Land_Mil_WiredFence_F",[19.3096,25.4861,0],179.508,[true,true]],
     ["Land_Mil_WiredFence_F",[3.63574,25.365,0],179.508,[true,true]],
     ["Land_Mil_WiredFence_F",[-4.20801,25.2927,0],179.508,[true,true]],
     ["Land_Mil_WiredFence_F",[-19.8701,25.158,0],179.508,[true,true]],
     ["Land_HBarrierBig_F",[13.9402,-13.9741,0],359.697,[true,true]],
     ["Land_Mil_WiredFence_F",[-23.3989,21.5427,0],89.3037,[true,true]],
     ["Land_Mil_WiredFence_F",[-23.0317,-1.95337,0],89.3037,[true,true]],
     ["Land_Mil_WiredFence_F",[-23.1509,5.85718,0],89.3037,[true,true]],
     ["Land_Mil_WiredFence_F",[-23.0337,-9.77368,0],89.3037,[true,true]],
     ["Land_Mil_WiredFence_F",[23.4912,-17.2888,0],269.14,[true,true]],
     ["Land_Mil_WiredFence_F",[-22.897,-17.6057,0],89.3037,[true,true]],
     ["Land_HBarrierBig_F",[18.7795,16.9014,0],271.956,[true,true]],
     ["Land_HBarrierBig_F",[-19.0293,14.5823,0],271.568,[true,true]],
     ["Land_HBarrierBig_F",[-18.928,-2.34204,0],271.204,[true,true]],
     ["Land_HBarrierBig_F",[18.9211,-2.11475,0],270.301,[true,true]],
     ["Land_Mil_WiredFence_F",[23.2783,-1.67163,0],269.14,[true,true]],
     ["Land_Mil_WiredFenceD_F",[11.5195,25.4993,0],179.244,[true,true]],
     ["Land_Mil_WiredFence_F",[20.0112,-20.8025,0],0.102386,[true,true]],
     ["Land_Mil_WiredFence_F",[4.31201,-20.9666,0],359.2,[true,true]],
     ["Land_Mil_WiredFence_F",[12.1636,-20.8162,0],0.102386,[true,true]],
     ["Land_Mil_WiredFence_F",[-19.231,-21.1033,0],359.2,[true,true]],
     ["Land_Sign_WarningMilitaryArea_F",[2.46777,-21.7966,0],359.892,[true,true]],
     ["Land_Mil_WiredFenceD_F",[-23.3923,13.7649,0],89.5986,[true,true]],
     ["Land_HBarrierBig_F",[9.3606,20.1509,0],181.375,[true,true]],
     ["Land_Wreck_UAZ_F",[-1.32373,-13.5852,0],158.359,[true,true]],
     ["Land_Mil_WiredFence_F",[-12.04,25.2126,0],179.508,[true,true]],
     ["Land_Mil_WiredFence_F",[-11.3286,-21.0369,0],359.2,[true,true]],
     ["Land_HBarrierBig_F",[-13.0581,-14.012,0],0.792412,[true,true]],
     ["Land_HBarrierBig_F",[-15.9265,19.7993,0],181.375,[true,true]],
     ["Land_Wreck_Ural_F",[12.4172,13.7871,0],351.888,[true,true]],
     ["Land_Wreck_T72_hull_F",[-12.2705,-9.28784,0],281.822,[true,true]],
     ["Land_Wreck_BMP2_F",[-13.9792,-1.06934,0],269.338,[true,true]],
     ["Land_Wreck_T72_turret_F",[-8.08887,-7.59497,0],176.212,[true,true]],
     ["Land_GarbageBags_F",[13.4263,4.86987,0],252.593,[true,true]],
     ["Land_JunkPile_F",[4.98999,15.2234,0],177.115,[true,true]],
     ["Land_Tyres_F",[9.39282,12.0771,0],245.996,[true,true]],
     ["Land_Cargo_Tower_V3_F",[9.323,-4.68555,0],0,[true,true]]
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
     ["B_HMG_01_high_F", [6.23389,-7.16309,17.8895], 0, "Red"],
     ["B_GMG_01_high_F", [13.1008,-4.94409,17.8895], 0, "Red"],
     ["B_HMG_01_high_F", [-9.69238,9.60571,3.12649], 0, "Red"],
     ["B_GMG_01_high_F", [-4.5249,11.874,3.12654], 0, "Red"],
     ["B_HMG_01_high_F", [6.12207,-0.257324,17.8895], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green"],
     [[-13.558,24.0972,3.12796],2,3,"Green"]
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