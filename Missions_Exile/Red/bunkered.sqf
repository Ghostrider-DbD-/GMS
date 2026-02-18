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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A Mercenary Bunker and outpost has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Mercenary bunker has been cleared and looted.";
_timeoutMsg = "Mercenary forces have abandoned the bunker to plan a larger operation (FAILED)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Bunkered In";
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
     ["Land_HBarrier5",[-0.0755615,-2.25635,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[0.674561,-7.5061,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[2.78528,-12.5183,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[2.42456,-7.0061,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[1.17456,0.493652,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[23.1746,-26.0061,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[19.0752,-9.06128,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[24.5497,-9.88159,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[5.94763,-16.6851,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[25.1744,-22.3813,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[36.0494,-20.3813,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[18.3516,-24.4539,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier1",[17.3138,-7.4248,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFence_End_F",[17.0575,-2.35205,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[18.7996,1.1189,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[16.826,-0.731201,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_CamoNet_NATO_EP1",[22.5876,-7.5437,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_GarbagePallet_F",[5.42468,-10.2566,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[36.3026,-2.25684,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Fort_Watchtower_EP1",[12.8669,-18.8423,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[5.92468,3.99365,0],[[1.74846e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[31.5494,-9.63135,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[5.79956,-14.3813,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[28.1746,2.86865,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier3",[21.2997,2.49365,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[14.2997,24.9939,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[8.17456,11.7439,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[36.4247,28.3684,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Short_F",[24.8383,15.0166,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Short_F",[29.7996,16.2437,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Short_F",[26.7997,18.1189,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[25.0791,16.9988,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[25.9999,13.3757,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_Wreck_BMP2_F",[27.5497,8.99341,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Fort_Watchtower_EP1",[10.4246,18.8689,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_fortified_nest_small_EP1",[17.9246,28.1184,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_fortified_nest_small_EP1",[31.9246,29.4939,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[33.1744,6.24365,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[28.7815,17.8777,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[56.7996,-19.6313,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[38.1744,-23.8811,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[43.6744,-23.8811,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_End_F",[50.0497,-7.13159,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[52.0494,-4.13135,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[51.4246,-6.6311,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_Fort_Watchtower_EP1",[51.2886,-24.6772,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[45.0496,-8.3811,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[52.0496,1.49365,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[41.2996,5.4939,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[39.5496,-10.5066,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[63.502,-6.47681,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[40.9244,-22.2563,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[60.6746,-14.1313,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Truck_F",[46.7996,-11.7563,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[50.4164,24.075,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier5",[54.5497,20.8687,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFence_End_F",[49.7902,10.238,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Long_F",[51.9247,6.99365,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFence_Round_F",[51.3091,9.62817,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_GarbageWashingMachine_F",[39.9244,7.9939,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_GarbageBags_F",[37.4246,7.74341,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Fort_Watchtower_EP1",[43.1746,24.3687,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[59.4246,16.1187,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_large",[64.6395,9.84326,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Skodovka_F",[40.1746,9.86865,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[4.89966,0.489014,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[33.5957,-3.96191,15.365],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[33.1477,9.19312,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[22.1278,6.58936,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_RG31_M2_ION",[32.6995,-39.3135,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_UH1H_TK_GUE",[3.04126,45.2419,-0.003335],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [32.8092,-4.5686,17.8895], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [39.8054,-2.58569,17.8895], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [27.5627,15.2153,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [17.9258,28.0493,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [11.6984,-18.0657,2.78], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [49.9133,-5.09229,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [19.4692,-2.09473,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [49.7133,7.35913,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[23.7504,22.7505,0.00143909],2,3,"Red"],
     [[10.1968,-4.25977,0.00143909],2,3,"Red"],
     [[59.5118,4.36279,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[4.89966,0.489014,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[33.5957,-3.96191,15.365],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[33.1477,9.19312,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";