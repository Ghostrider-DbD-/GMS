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
_defaultMissionLocations = [[14561.6,6278.6,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Southern Island has been invaded by a military force. Eliminate!";
_endMsg = "Operation Python was success! The powerful enemy military base has fallen... for now...";
_timeoutMsg = "Operation Python has finished. Chance to attack lost (FAILURE)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Operation Python";
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
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisOrange;
_chancePara = GMS_chanceParaOrange;
_noPara = GMS_noParaOrange;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Orange;
_paraLootCounts = GMS_lootCountsOrange;
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

_crateLoot = GMS_BoxLoot_Orange;
_lootCounts = GMS_lootCountsOrange;
/*
	Do not touch the code below except to comment out rows containing objects you do not wish to have spawned
*/

_missionLandscape = [
     ["Land_Cargo_Tower_V3_F",[-0.318359,-1.60547,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[-118.521,-110.436,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Dome_Small_F",[-91.1826,-99.6802,1.90735e-006],[[0.0864294,0.996258,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[-215.28,-44.7671,0.953799],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-94.2314,-92.8042,4.3869e-005],[[0,0.999986,-0.00532323],[0.00399714,0.00532319,0.999978]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-87.3838,-106.342,0.00663757],[[0,0.997605,0.0691646],[0.051935,-0.0690713,0.996259]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-71.1396,-402.745,0.0539589],[[0,0.977991,-0.208646],[0.126961,0.206957,0.970077]],[true,true]],
     ["RoadCone_F",[-122.563,-68.9482,0.00689888],[[0,0.999091,0.042629],[-0.155422,-0.042111,0.98695]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["O_APC_Tracked_02_AA_F",[-70.5566,-387.179,0.146022],0],
     //["CUP_B_ZUBR_CDF",[128.375,-174.31,19.6149],0],
	 ["CUP_B_LCU1600_USMC",[128.375,-174.31,19.6149],0],
     ["O_MBT_02_cannon_F",[-95.3691,-50.4722,0.254068],0],
     ["O_T_Boat_Armed_01_hmg_F",[-244.407,-189.53,10.107],0],
     ["O_T_Boat_Armed_01_hmg_F",[-168.669,53.0259,2.50855],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Plane_CAS_01_dynamicLoadout_F",[-75.1367,-17.6074,0.64781],0],
     ["O_Heli_Attack_02_dynamicLoadout_F",[-60.5752,-361.6,0.0157146],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-90.3838,-99.1045,0.000789642], [[0,0.999773,-0.0213272],[0.0026744,0.0213272,0.999769]], "Orange"],
     ["B_HMG_01_high_F", [-101.249,-103.581,0.0657463], [[0,0.988839,-0.148985],[0.130865,0.147704,0.980336]], "Orange"],
     ["B_HMG_01_high_F", [-115.026,-110.139,17.8133], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_F", [-121.483,-112.508,18.1507], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [2.89844,-1.2793,18.2852], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_F", [-3.73535,-2.73682,17.3237], [[0,1,0],[0,0,1]], "Orange"],
     ["B_static_AA_F", [-233.112,-47.8667,0.000469208], [[0,0.999978,0.00666787],[-0.0213272,-0.00666635,0.99975]], "Orange"],
     ["B_G_Mortar_01_F", [-109.601,-77.9263,0.0107193], [[0,0.994905,-0.100817],[0.0665181,0.100594,0.992701]], "Orange"],
     ["B_G_Mortar_01_F", [-42.252,-68.3501,0.104729], [[0,0.998913,-0.0466175],[0.364961,0.043402,0.930011]], "Orange"],
     ["B_HMG_01_high_F", [-218.541,-46.8345,18.1928], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_F", [-212.324,-44.1069,18.9838], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [-340.661,15.7212,0.0174339], [[0,0.996709,0.0810651],[0.132163,-0.080354,0.987966]], "Orange"],
     ["B_G_Mortar_01_F", [-43.9668,-54.2695,0.0105419], [[0,0.992719,0.120449],[0.0106641,-0.120443,0.992663]], "Orange"],
     ["B_G_Mortar_01_F", [-41.0986,-36.6997,0.0962753], [[0,0.93928,-0.34315],[-0.0889791,0.341789,0.935555]], "Orange"],
     ["B_G_Mortar_01_F", [7.71484,-11.4438,0.0068922], [[0,0.998124,-0.061218],[0.0757814,0.0610419,0.995254]], "Orange"],
     ["B_G_Mortar_01_F", [-228.411,-38.3989,0.0405369], [[0,0.973264,-0.22969],[0.0452867,0.229455,0.972265]], "Orange"],
     ["B_G_Mortar_01_F", [-132.415,-88.2163,0.00485229], [[0,0.997224,0.0744595],[0.0333165,-0.0744182,0.99667]], "Orange"]
];

_missionGroups = [
     [[-15.1543,-4.63965,0.00359058],1,2,"Orange"],
     [[-64.4893,-44.2217,0.00611687],1,2,"Orange"],
     [[-130.948,-112.006,-0.0069313],1,2,"Orange"],
     [[-202.723,-51.0913,0.0217981],1,2,"Orange"],
     [[-76.8447,-380.513,0.0202971],1,2,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-94.2314,-92.8042,4.3869e-005],_crateLoot,_lootCounts,[[0,0.999986,-0.00532323],[0.00399714,0.00532319,0.999978]]],
     ["I_CargoNet_01_ammo_F",[-87.3838,-106.342,0.00663757],_crateLoot,_lootCounts,[[0,0.997605,0.0691646],[0.051935,-0.0690713,0.996259]]],
     ["I_CargoNet_01_ammo_F",[-71.1396,-402.745,0.0539589],_crateLoot,_lootCounts,[[0,0.977991,-0.208646],[0.126961,0.206957,0.970077]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";