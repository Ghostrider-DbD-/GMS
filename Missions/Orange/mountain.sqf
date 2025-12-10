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
_defaultMissionLocations = [[4594.86,15436.6,1.04959]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "You want to join my mountaineering expedition do you? Large military presence at MAGOS (BLACK/HARDEST)";
_endMsg = "Mountaineering success.... both of you...";
_timeoutMsg = "Military at MAGOS -- Operation Failed";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Operation Mountaineer (AA)";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 1;
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
     ["RoadCone_F",[-46.3945,-12.1924,-1.04688],[[0,0.998124,-0.0612219],[0.0784276,0.0610333,0.99505]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-68.5913,-46.2725,-1.00522],[[0,0.993034,0.117832],[-0.188564,-0.115718,0.975219]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-70.333,-41.6729,-1.00513],[[0,0.993034,0.117832],[-0.188564,-0.115718,0.975219]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_M163_Vulcan_USA",[0.309082,-1.15527,-0.902252],0],
     ["O_APC_Tracked_02_AA_F",[-75.4824,-14.8672,-0.891022],0],
     ["CUP_B_FV510_GB_D",[3.99268,44.9297,-0.933609],0],
     ["CUP_B_FV510_GB_D",[44.2529,152.411,-0.976898],0],
     ["CUP_B_Hilux_MLRS_BLU_G_F",[-51.3828,-53.5742,-1.0097],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Attack_01_dynamicLoadout_F",[-26.3369,47.7832,-0.958939],0],
     ["B_Heli_Attack_01_dynamicLoadout_F",[27.6606,125.438,-0.970871],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_G_Mortar_01_F", [25.541,38.5059,-1.01329], [[0,0.979563,-0.201138],[0.0929307,0.200267,0.975324]], "Orange"],
     ["B_G_Mortar_01_F", [-63.3042,-13.002,-1.04929], [[0,0.99985,0.0173247],[0.0133317,-0.0173232,0.999761]], "Orange"],
     ["B_G_Mortar_01_F", [15.2402,-57.0781,-1.04112], [[0,0.999986,0.00533768],[0.107377,-0.00530682,0.994204]], "Orange"],
     ["B_HMG_01_high_F", [19.8037,-58.5371,-0.805573], [[0,1,0],[0.000690534,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-17.3247,-12.458,3.50275], [[0,1,0],[0.000845728,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-30.3438,-57.0713,2.47711], [[0,0.999997,-0.00260671],[0.128706,0.00258503,0.991679]], "Orange"],
     ["B_HMG_01_high_F", [-29.2236,-37.0068,2.59491], [[0,1,0],[0.000845728,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-39.4082,-53.0537,22.9344], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-30.5,-16.9346,-0.771881], [[0,1,0],[0.000690534,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-30.2349,-14.4463,2.7316], [[0,1,0],[0.00109183,0,0.999999]], "Orange"],
     ["B_GMG_01_high_F", [-48.6426,22.4648,-0.935394], [[0,0.989033,-0.147695],[0.214861,0.144246,0.965934]], "Orange"],
     ["B_HMG_01_high_F", [22.0625,40.1475,3.21902], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [26.0181,-38.1064,-0.586395], [[0,0.999645,0.0266593],[0.492133,-0.0232075,0.870211]], "Orange"],
     ["B_GMG_01_high_F", [-18.2178,58.4883,-1.00946], [[0,0.993786,0.111304],[0.108687,-0.110644,0.987899]], "Orange"],
     ["B_HMG_01_high_F", [-31.1431,-56.4189,-0.750183], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-56.9961,-42.292,-0.491364], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[17.4277,-48.4316,-1.0564],1,3,"Orange"],
     [[-53.6904,-30.4658,-1.04822],1,2,"Orange"],
     [[-6.31592,-9.68262,-1.04099],1,3,"Orange"],
     [[-66.6499,37.7129,-1.01154],1,2,"Orange"],
     [[14.5249,51.4561,-1.04305],1,3,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-68.5913,-46.2725,-1.00522],_crateLoot,_lootCounts,[[0,0.993034,0.117832],[-0.188564,-0.115718,0.975219]]],
     ["I_CargoNet_01_ammo_F",[-70.333,-41.6729,-1.00513],_crateLoot,_lootCounts,[[0,0.993034,0.117832],[-0.188564,-0.115718,0.975219]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";