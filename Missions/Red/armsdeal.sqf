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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Intel suggests bandit factions are brokering an arms deal involving MULTIPLE crates. (ORANGE/MEDIUM)";
_endMsg = "The arms deal has been stopped, and the merchandise taken.";
_timeoutMsg = "Bandits have completed their arms deal and fled the area. (LOST OPPORTUNITY)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Arms Dealer";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 2;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = 0;
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
     ["Land_House_C_9_EP1",[-0.272217,-0.288574,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_House_C_3_dam_EP1",[-20.9365,-0.798828,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_House_C_2_EP1",[-25.522,-20.9326,0],[[-0.0899985,-0.995942,0],[0,0,1]],[true,true]],
     ["Land_House_C_1_v2_EP1",[-6.54688,-20.1226,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[-15.4846,-3.2627,8.143],[[0,0.999998,0.00183279],[0,-0.00183279,0.999998]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-2.78174,2.64063,3.865],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-15.8257,1.23584,3.834],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-26.436,-23.0347,0.126],[[0,0.999993,-0.00380481],[-0.00382226,0.00380478,0.999985]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_SUV_Armored_ION",[-44.6853,-10.5591,0.00156975],0],
     ["CUP_I_4WD_AT_ION",[15.5256,-13.8643,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_UH1H_TK_GUE",[-6.95435,22.7358,-0.003335],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-1.74707,-2.7749,6.59525], [[0,0.999995,0.00322043],[0.00133721,-0.00322043,0.999994]], "Red"],
     ["B_HMG_01_high_F", [-28.8269,-16.7285,3.23472], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-21.6853,-3.24365,5.99673], [[0,1,0],[0.0136191,0,0.999907]], "Red"],
     ["B_GMG_01_high_F", [-27.1782,-2.58154,8.41288], [[0,1,0],[0,0,1]], "Red"],
     ["CUP_B_SPG9_AFU", [-18.2595,-20.4263,0.00122976], [[0,1,0],[0,0,1]], "Red"],
     ["CUP_B_AGS_AFU", [6.46436,5.70313,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[-0.256104,0.760254,3.86108],2,2,"Red"],
     [[-28.1265,-20.79,3.21523],2,2,"Red"],
     [[-2.73926,-27.1772,0.00143909],2,2,"Red"],
     [[-39.3557,9.00439,0.00143909],2,2,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-15.4846,-3.2627,8.143],_crateLoot,_lootCounts,[[0,0.999998,0.00183279],[0,-0.00183279,0.999998]]],
     ["I_CargoNet_01_ammo_F",[-2.78174,2.64063,3.865],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-15.8257,1.23584,3.834],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-26.436,-23.0347,0.126],_crateLoot,_lootCounts,[[0,0.999993,-0.00380481],[-0.00382226,0.00380478,0.999985]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";