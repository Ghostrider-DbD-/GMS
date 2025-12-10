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
_startMsg = "Enemy foritifcation has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Fortified HQ has been cleared and looted.";
_timeoutMsg = "Enemy forces have regrouped from the foritied HQ (FAILED).";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Fortified HQ";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 3;
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
     //["I_CargoNet_01_ammo_F",[-0.143066,-2.1709,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-3.78931,-1.1123,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-1.77905,-18.9795,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_JunkPile_F",[-20.5293,-13.3545,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Ural_F",[-18.9043,-13.355,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-4.40405,-22.605,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-3.77905,-24.105,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.15405,-24.7295,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-5.77905,-13.4795,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[0.0959473,-13.23,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[0.0959473,-15.1045,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-28.6541,12.1455,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-27.1541,15.3955,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-17.2791,2.89551,0],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_Pipes_small_F",[-3.04248,14.6299,0],[[0.965923,0.258829,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_closed_F",[-2.6543,12.395,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-24.1599,1.67285,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-25.1753,3.41406,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-26.6499,3.11035,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-27.2793,1.02051,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-25.093,0.503418,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_CamoNet_NATO",[-3.1543,9.89502,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-0.529053,11.645,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-11.7703,-10.9219,0],[[0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-17.5291,-9.22998,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-19.7527,-1.41406,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-21.0293,18.77,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-21.1729,12.77,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[-11.7729,-3.2666,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[-13.4043,14.5205,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-2.52905,10.3955,0],[[0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_Pallet_MilBoxes_F",[-2.5293,8.02002,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-2.02905,6.77051,0],[[-0.500076,-0.865982,0],[0,0,1]],[true,true]],
     ["Land_MetalBarrel_F",[-2.4043,6.02051,0],[[0.707072,0.707141,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-14.0554,22.9404,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-5.27905,20.7705,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[22.8132,-13.978,0],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[5.09595,-18.9795,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[12.4194,-21.5508,0],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[17.2078,-19.6206,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[7.22095,-22.2295,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Small_F",[21.5222,-18.3354,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[1.72095,-24.7295,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[4.9707,-13.2295,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[4.34595,-24.1045,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[24.2207,3.14502,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[5.22095,12.8955,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[19.5959,15.1455,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[23.5959,8.27051,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[24.0957,-9.10498,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[15.2207,17.645,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[20.7207,1.02051,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Small_F",[23.4707,12.77,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[8.13379,-10.7373,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Truck_dropside_F",[9.97095,1.27051,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_GarbageWashingMachine_F",[7.84595,-8.72998,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbagePallet_F",[6.47095,14.6455,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[8.47388,-0.730469,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[29.2207,-7.47998,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[30.7212,-6.85449,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[30.7207,1.27051,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[31.3457,-4.22998,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[31.3457,-1.35498,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Camp_EP1",[14.7209,-11.3545,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[5.2207,10.2705,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[2.0957,18.52,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[5.97095,-7.35498,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[14.0959,-7.22998,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[17.2207,-2.10498,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[2.8457,6.52051,0],[[1.74846e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[10.9707,6.64551,0],[[1.74846e-007,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[29.2202,1.89502,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_Wreck_HMMWV_F",[6.09595,28.395,0],[[0.5,0.866025,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[-23.0833,-29.396,0],0]
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
     ["B_HMG_01_high_F", [12.1775,-0.569824,17.8895], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [-24.7705,10.6841,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [28.3428,-2.90674,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [1.42725,-21.6489,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [1.90479,18.3726,2.78], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [21.2671,-18.0469,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[0.529541,-9.77783,0.00143909],2,3,"Red"],
     [[-11.7542,8.04004,0.00143909],2,3,"Red"],
     [[-33.0359,-7.46338,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[0,0,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-0.143066,-2.1709,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";