/*
	any Mission Generated
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
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "An enemy cargo tower has been scouted and marked on the map. (GREEN)";
_endMsg = "Enemy cargo tower has been been cleared and looted!";
_timeoutMsg = "Enemy cargo towerhas packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Cargo Tower";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 3;
_maxNoAI = 6;
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
     //["I_CargoNet_01_ammo_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[4.35278,-0.159668,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[2.30396,0.00390625,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-7.08691,-9.7002,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-3.83032,-14.2715,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[-7.14038,-12.9458,0],[[0.959319,-0.282325,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[-6.73169,-13.9741,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-9.5874,-4.3252,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-3.8374,-7.0752,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-9.01514,-9.08594,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-8.9624,-2.7002,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-5.21191,-9.0752,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-9.5874,-6.57568,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.3374,-6.4502,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-3.46191,-2.0752,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-6.33252,-2.05225,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sacks_heap_F",[4.7876,-11.3252,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[-0.439941,-12.2041,0],[[-0.706872,-0.707341,0],[0,0,1]],[true,true]],
     ["Barrel1",[3.7876,-11.3252,0],[[0.965894,0.258939,0],[0,0,1]],[true,true]],
     ["Barrel1",[3.78809,-10.3252,0],[[-0.706971,-0.707243,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[0.662598,-9.8252,0],[[0.353605,-0.935395,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[3.4126,-9.44971,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[6.28369,-9.47266,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[5.66943,-14.6465,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-0.705566,-14.6465,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[8.66943,-14.271,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[7.1626,-3.2002,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[8.91309,-8.8252,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[3.91309,-5.8252,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[5.2876,-3.8252,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[9.09082,-3.81445,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[0.794434,-2.02197,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[1.4126,-6.4502,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[9.66309,-6.32471,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[1.91577,-8.95117,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[0.387939,2.86816,0],[[0,1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-7.2915,-5.89307,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [5.50659,-8.42432,17.8895], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[4.96973,-7.09473,15.3661],1,2,"Red"],
     [[-17.323,-5.39355,0.00143909],1,3,"Red"],
     [[27.6199,-7.61963,0.00143909],1,2,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     //["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[2.30396,0.00390625,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[0.387939,2.86816,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";