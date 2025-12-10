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
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A small enemy HQ has been scouted and marked on the map. (GREEN)";
_endMsg = "Small Enemy HQ has been been cleared!";
_timeoutMsg = "Small Enemy HQ has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Merc Tents";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 3;
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
     //["I_CargoNet_01_ammo_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-1.51318,-6.51514,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[9.52637,-8.69434,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-6.97388,-10.2583,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-2.22363,-16.5815,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[2.84766,-17.9409,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[0.150146,-17.8647,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-2.43896,-14.9717,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["PowerGenerator",[2.90308,-6.5083,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_TTowerSmall_2_F",[3.15039,-4.86523,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[-6.84961,-2.11523,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[1.0979,6.08545,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-3.97339,4.72656,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.59961,6.00977,0],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-4.18848,3.1167,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[2.0896,4.79883,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BarrelWater_grey_F",[-4.84961,-4.49023,0],[[-0.000331704,1,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[11.4661,-16.854,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_F",[4.65039,-6.86523,0],[[-1.74681e-005,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[16.9004,-9.86523,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[17.5254,-7.24023,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_WoodenBox_F",[3.42334,-8.2373,0],[[0.258802,-0.96593,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[15.4006,-10.4902,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[3.83936,-16.6538,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Sacks_heap_F",[4.65039,-5.49023,0],[[0,1,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[12.4463,3.05566,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[16.9004,-4.61523,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[15.4001,-3.99023,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-1.12402,3.93506,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_GMG_01_high_F", [15.2781,-7.03223,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [0.762207,-15.7939,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[-9.48462,10.0234,0.00143909],2,3,"Blue"],
     [[-30.6729,17.834,0.00143909],2,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[9.52637,-8.69434,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";