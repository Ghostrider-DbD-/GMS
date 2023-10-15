/*
	Static Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.2 : Build 17 : Build Date 09/26/23
	By Ghostrider-GRG-
*/

#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 

_difficulty = "Blue";
_chanceMissionSpawned = 1;
_defaultMissionLocations = [6507.43,15221.7,37.0618];
_maxMissionRespawns = -1;
_startMsg = "TODO: Change approiately";
_endMsg = "TODO: Change Appropriately";
_markerLabel = "";
_markerColor = "Default";
_markerText = "";
_markerMissionName = "TODO: Set this to an appropriate name";
_crateLoot = GMS_BoxLoot_Blue;
_lootCounts = GMS_lootCountsBlue;

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
     ["Land_Cargo_Tower_V1_F",[31.4673,34.1934,-37.2244],0,[true,true]],
     ["I_CargoNet_01_ammo_F",[-1.61035,110.757,-37.0574],0,[true,true]],
     ["O_CargoNet_01_ammo_F",[-9.80078,105.258,-37.0563],0,[true,true]]
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
     ["B_HMG_01_high_F", [28.2368,31.6963,-19.4588], 0, "Blue"],
     ["B_HMG_01_high_F", [35.3955,36.1826,-19.3084], 0, "Blue"],
     ["B_HMG_01_high_F", [2.10693,32.8105,-37.061], 0, "Blue"],
     B_HMG_01_high_F, [7.55273,24.5469,-37.0574], 0, Blue,
     B_HMG_01_high_F, [13.2388,18.4951,-37.0557], 0, Blue,
     B_HMG_01_high_F, [20.6919,10.5742,-37.0616], 0, Blue,
     B_HMG_01_high_F, [26.5786,3.59375,-37.0601], 0, Blue,
     B_HMG_01_high_F, [9.25146,6.08301,-37.059], 0, Blue,
     B_HMG_01_high_F, [-1.4126,0.796875,-37.0606], 0, Blue,
     B_HMG_01_high_F, [-4.81543,-2.92676,-37.0603], 0, Blue,
     B_HMG_01_high_F, [-5.48535,-6.06836,-37.0595], 0, Blue,
     B_HMG_01_high_F, [-0.618164,-14.873,-37.0601], 0, Blue,
     B_HMG_01_high_F, [1.9541,-18.4629,-37.0601], 0, Blue,
     B_HMG_01_high_F, [4.66016,-22.1094,-37.0612], 0, Blue,
     B_HMG_01_high_F, [0.832031,-23.3955,-37.0613], 0, Blue,
     B_HMG_01_high_F, [-8.85938,-16.1719,-37.0558], 0, Blue,
     B_HMG_01_high_F, [-16.3491,-3.63965,-37.0539], 0, Blue,
     B_HMG_01_high_F, [-20.4189,1.96973,-37.0595], 0, Blue,
     B_HMG_01_high_F, [-23.4844,4.43652,-37.0602], 0, Blue,
     B_HMG_01_high_F, [-25.9858,9.59668,-37.0605], 0, Blue,
     B_HMG_01_high_F, [-24.7813,13.1709,-37.0613], 0, Blue,
     B_HMG_01_high_F, [-21.7007,14.5381,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-17.1577,14.792,-37.0608], 0, Blue,
     B_HMG_01_high_F, [-11.5684,20.3164,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-8.18311,27.1064,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-6.55713,29.8926,-37.0613], 0, Blue,
     B_HMG_01_high_F, [-3.36963,31.375,-37.0612], 0, Blue,
     B_HMG_01_high_F, [-3.84033,30.793,-37.0612], 0, Blue,
     B_HMG_01_high_F, [-14.8984,20.4248,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-19.1865,19.1484,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-22.5049,17.3877,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-21.0415,19.668,-37.0615], 0, Blue,
     B_HMG_01_high_F, [-16.1641,24.0264,-37.0614], 0, Blue,
     B_HMG_01_high_F, [-13.6211,25.9648,-37.0614], 0, Blue
];

_missionGroups = [

];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-1.61035,110.757,-37.0574],_crateLoot,_lootCounts,1],
     ["O_CargoNet_01_ammo_F",[-9.80078,105.258,-37.0563],_crateLoot,_lootCounts,0]
];

/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = GMS_noPatrolHelisBlue;
_missionHelis = GMS_patrolHelisBlue;
_chancePara = GMS_chanceParaBlue;
_noPara = GMS_noParaBlue;
_paraTriggerDistance = 400;
_paraSkill = '0.7';
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
_spawnCratesTiming = atMissionSpawnGround;
_loadCratesTiming = atMissionSpawn;
_endCondition = allUnitsKilled;
_minNoAI = GMS_MinAI_Blue;
_maxNoAI = GMS_MaxAI_Blue;
_noAIGroups = GMS_AIGrps_Blue;
_noVehiclePatrols = GMS_SpawnVeh_Blue;
_noEmplacedWeapons = GMS_SpawnEmplaced_Blue;
_submarinePatrols = 0;
_scubaPatrols = 0;

#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";