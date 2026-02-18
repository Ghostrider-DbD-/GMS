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
_startMsg = "A Mercenary LZ has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Merc LZ has been cleared and looted.";
_timeoutMsg = "Mercenary LZ has transferred supplies to front lines (FAILED)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Merc LZ";
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
     ["Land_HBarrier_Big_F",[0.0351563,0.0825195,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-11.8394,13.2075,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-8.33984,-0.0424805,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-11.7144,4.83252,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[0.285156,8.58252,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[-6.03833,18.2427,0],[[0,1,0],[0,0,1]],[true,true]],
     ["WaterPump_01_forest_F",[3.28271,5.58105,0],[[0.866038,0.499979,0],[0,0,1]],[true,true]],
     ["Misc_cargo_cont_net1",[-9.71436,17.3325,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-2.4646,14.9575,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[12.0354,-2.04248,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[6.78516,-2.04248,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[9.4104,-2.66748,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.8396,17.5825,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Barrels",[-9.83301,15.9424,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_open_empty_F",[-9.5896,19.0825,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Barrel3",[-5.55957,18.873,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Barrel3",[-5.3396,19.5825,0],[[-0.258819,0.965926,0],[0,0,1]],[true,true]],
     ["Barrel3",[-6.22241,19.3613,0],[[-0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-3.96484,14.3325,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[6.16016,-0.54248,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[12.6602,-0.54248,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[-0.2146,8.58252,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-4.32764,5.78564,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_CamoNetVar_NATO",[-6.96436,20.3325,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-6.33936,34.8325,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-12.0894,21.5825,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-9.46484,28.2075,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[-4.20093,23.5381,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Gunrack1",[-5.4646,22.0825,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_F",[12.4104,43.7075,0],[[6.29566e-006,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-4.47827,44.1416,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-4.52271,48.0645,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-0.857422,47.7676,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[-2.4646,25.9575,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.8396,20.4575,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[-1.8396,23.3325,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-2.58179,48.6763,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[-5.08936,46.0825,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Fort_Crate_wood",[-10.0779,23.9512,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Fort_Crate_wood",[-9.7146,25.2075,0],[[0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_Sack_F",[-9.32788,24.4512,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel1",[-9.0896,23.5825,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Barrel1",[-10.3396,21.4575,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Barrel1",[-9.5896,22.8325,0],[[-0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Barrel1",[-10.3213,22.4795,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Barrel5",[-9.5896,22.0825,0],[[-0.866025,-0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-0.641846,46.1572,0],[[0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-2.97827,43.5166,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[-3.96484,26.5825,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Gunrack1",[-5.4646,23.0825,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Hhedgehog_concrete",[30.0354,10.7075,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[33.6604,17.8325,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square5_F",[20.7854,8.08252,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbagePallet_F",[20.7854,7.83252,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[25.2852,3.33252,0],[[-0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[39.7854,17.3325,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[21.9629,1.75684,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[23.2854,6.70801,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[24.7854,5.33252,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[23.9104,1.83252,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Barrel5",[30.7766,19.0093,0],[[-0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Barrel5",[30.0354,19.0825,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Barrel5",[30.2854,18.3325,0],[[0.5,0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[38.2852,16.7075,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[21.6743,6.49854,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[20.9709,3.04346,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_HelipadCircle_F",[16.2854,21.8325,0],[[0,1,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[33.2854,24.5825,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["USMC_WarfareBVehicleServicePoint",[19.6606,42.2075,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[13.7856,45.7075,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[22.1606,45.9575,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[40.5354,24.2075,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[36.2854,39.7075,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[39.6604,31.832,0],[[0.965926,0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[32.1816,45.1689,0],[[-0.258819,-0.965926,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[40.9111,29.5801,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceRound",[39.6169,34.4097,0],[[-0.965926,-0.258819,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[34.0354,43.2075,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[38.2854,36.5825,0],[[0.866025,0.5,0],[0,0,1]],[true,true]],
     ["Land_BagFenceLong",[40.4104,19.9575,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_BagFenceShort",[40.9102,27.5825,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_PalletTrolley_01_khaki_F",[19.5354,39.5825,0],[[-0.712626,0.701544,0],[0,0,1]],[true,true]],
     ["Land_BagFenceEnd",[30.5701,44.9595,0],[[0.5,-0.866025,0],[0,0,1]],[true,true]],
     ["Land_BarrelWater_grey_F",[28.2854,23.5825,0],[[-0.00034887,1,0],[0,0,1]],[true,true]],
     ["CampEast_EP1",[29.2854,35.5825,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[2.47461,34.8599,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[2.33154,32.689,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-1.3147,33.7471,0],[[0,1,0],[0,0,1]],[true,true]]
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
     ["CUP_I_MH6J_RACS",[10.4893,32.4507,0.000385761],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-2.62549,45.9229,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [31.6194,42.498,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [22.8057,4.23145,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-5.7749,5.68799,2.78], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[30.2893,56.9409,0.00143909],2,3,"Red"],
     [[17.0474,24.2617,0.00143909],2,3,"Red"],
     [[-13.1365,-9.83887,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[2.47461,34.8599,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[2.33154,32.689,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";