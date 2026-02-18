/*
	Static Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.61 : Build 28 : Build Date 11/02/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
#include "\x\addons\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [[13782.6,18924.9,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Bandits have taken over a military outpost north of Athira! (RED/HARD)";
_endMsg = "Athira Bandits stopped, supplies are ours!";
_timeoutMsg = "Athira bandits have moved operation";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Athira Outpost";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisGreen;
_chancePara = GMS_chanceParaGreen;
_noPara = GMS_noParaGreen;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Green;
_paraLootCounts = GMS_lootCountsGreen;
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

_crateLoot = GMS_BoxLoot_Green;
_lootCounts = GMS_lootCountsGreen;
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
     ["Land_Cargo_Tower_V1_F",[-0.884766,1.37695,1.90735e-006],[[0.693877,-0.720094,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[34.0127,25.9531,0.00028038],[[0,0.999978,-0.00666818],[0.0306514,0.00666504,0.999508]],[true,true]],
     ["I_CargoNet_01_ammo_F",[58.252,43.5801,9.15527e-005],[[0,0.999992,-0.00399679],[0.00933759,0.00399662,0.999948]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     //["CUP_I_4WD_AT_ION",[92.709,65.8223,0.000293732],0],
     ["CUP_I_4WD_LMG_ION",[61.4043,-4.86523,0.000272751],0],
     ["CUP_I_4WD_AT_ION",[-6.80957,55.8535,0.00784874],0]
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
     ["B_HMG_01_high_F", [27.2939,39.8613,17.8693], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-0.270508,5.45313,17.6795], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-27.5234,2.99609,0.00166321], [[0,0.9998,-0.0199947],[0.0239937,0.0199889,0.999512]], "Green"],
     ["B_HMG_01_high_F", [-8.27441,32.0371,4.33879], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [50.3955,67.3184,4.36149], [[0,1,0],[0.00109183,0,0.999999]], "Green"],
     ["B_HMG_01_high_F", [59.9697,40.7051,0.000217438], [[0,0.999978,0.00666818],[0.0093285,-0.00666789,0.999934]], "Green"],
     ["B_GMG_01_F", [16.0068,3.13281,0.001297], [[0,0.999999,0.00133721],[0.0346456,-0.00133641,0.999399]], "Green"],
     ["B_HMG_01_high_F", [-20.6211,-11.0723,0.00138092], [[0,0.999645,0.0266548],[-0.011995,-0.0266529,0.999573]], "Green"],
     ["B_GMG_01_high_F", [-3.2959,-1.03906,17.7917], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [25.7275,46.7773,17.8614], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [69.6934,82.7617,0.00028801], [[0,1,0],[-0.0133272,0,0.999911]], "Green"],
     ["B_HMG_01_high_F", [-3.44043,-15.1914,0.00182724], [[0,0.999773,-0.0213272],[0.0253251,0.0213204,0.999452]], "Green"],
     ["B_G_Mortar_01_F", [34.8311,16.7559,0.000434875], [[0,0.999999,0.00133721],[0.0239912,-0.00133683,0.999711]], "Green"]
];

_missionGroups = [
     [[-13.6982,11.752,-0.000267029],1,3,"Green"],
     [[36.9063,43.9414,0.00102806],1,3,"Green"],
     [[72.9502,68.627,0.000959396],1,3,"Green"],
     [[-21.0811,-23.7207,0.002388],1,3,"Green"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[58.252,43.5801,9.15527e-005],_crateLoot,_lootCounts,[[0,0.999992,-0.00399679],[0.00933759,0.00399662,0.999948]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";