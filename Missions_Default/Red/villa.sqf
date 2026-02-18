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
_startMsg = "Intel suggests bandits have stashed multiple crates in a small villa. (ORANGE/MEDIUM)";
_endMsg = "Bandit Villa has been cleared and looted.";
_timeoutMsg = "Bandits have shifted supplies out of the Villa. (OPPORTUNITY LOST)";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Bandit Villa";
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
     ["Land_A_Villa_EP1",[-2.63574,-2.75684,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_Guardhouse_EP1",[-32.5889,10.7837,0],[[-0.999958,0.0091132,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-7.26245,9.60889,7.324],[[0,0.999966,-0.00827277],[0.00340348,0.00827272,0.99996]],[true,true]],
     //["I_CargoNet_01_ammo_F",[17.2766,-41.7803,4.977],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-30.1934,11.8965,0.327],[[0,1,0],[0,0,1]],[true,true]],
     ["APERSTripMine",[-33.7517,8.97754,0.326519],[[0.0225614,0.999745,-0],[0,0,1]],[true,true]],
     ["APERSTripMine",[5.03638,-3.45166,0.275111],[[0.722735,-0.691125,-0],[0,0,1]],[true,true]],
     ["Land_Mil_House_EP1",[3.92529,-39.5342,4.76837e-007],[[-0.0266731,-0.999644,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[13.4226,-34.2695,0.659],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[-30.4063,-28.8452,0],0]
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
     ["B_HMG_01_high_F", [-9.43896,-42.373,0], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-5.80835,-5.2168,7.32741], [[0,0.999999,-0.00165584],[-0.000690534,0.00165584,0.999998]], "Red"],
     ["B_HMG_01_high_F", [-18.4412,10.0635,7.35454], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [8.61768,-18.7524,8.20906], [[0,1,0],[0,0,1]], "Red"],
     ["I_GMG_01_high_F", [-6.3623,-6.49951,3.85829], [[0,1,0],[0,0,1]], "Red"],
     ["I_HMG_01_high_F", [5.39185,-3.76807,3.85791], [[0,1,0],[0,0,1]], "Red"],
     ["I_HMG_01_high_F", [3.41992,1.74805,0.277087], [[0,1,0],[0,0,1]], "Red"],
     ["I_GMG_01_high_F", [-9.03979,-36.2207,4.12151], [[0,0.997286,-0.0736182],[0.00198341,0.0736181,0.997285]], "Red"],
     ["I_HMG_01_high_F", [13.6189,-33.5518,4.97666], [[0,1,0],[0,0,1]], "Red"],
     ["CUP_B_ZU23_AFU", [2.26929,4.12793,10.1144], [[0,0.999966,0.00830071],[-0.0167937,-0.00829954,0.999825]], "Red"]
];

_missionGroups = [
     [[13.4768,-38.9521,4.9781],2,2,"Red"],
     [[5.52563,1.02637,3.86],2,2,"Red"],
     [[-7.8562,8.11572,3.85935],2,2,"Red"],
     [[-33.8962,11.2769,0.327958],2,2,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-7.26245,9.60889,7.324],_crateLoot,_lootCounts,[[0,0.999966,-0.00827277],[0.00340348,0.00827272,0.99996]]],
     ["I_CargoNet_01_ammo_F",[17.2766,-41.7803,4.977],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[-30.1934,11.8965,0.327],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
     //["I_CargoNet_01_ammo_F",[13.4226,-34.2695,0.659],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";