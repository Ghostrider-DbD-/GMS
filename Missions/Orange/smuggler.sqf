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
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "I am a real smuggler. I'm a smuggler! Don't you understand, I'm a smuggler, a lawbreaker... a smuggler (BLACK/HARDEST)";
_endMsg = "Poor fellow. I think he needs help. (WATCH SMUGGLER DEFEATED)";
_timeoutMsg = "Right, cut the wisecracks, vicar. Get to the search room, and strip. (WATCH SMUGGLER FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Operation Watch Smuggler (AA)";
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
     ["Land_HBarrierWall6_F",[1.1665,0.474609,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.25635,-7.77246,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.31104,-16.1504,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.50488,-24.4917,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.44434,-32.7725,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.6792,-41.0845,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.6167,-49.4341,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.77344,-57.7368,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.63135,-66.0688,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.56885,-74.4185,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.72559,-82.7212,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[10.2686,-91.0474,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[18.6182,-91.1099,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[26.9209,-90.9531,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[2.81934,-88.8008,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[35.2441,-90.6558,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[43.5938,-90.7183,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[51.8965,-90.5615,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[60.0269,-90.2517,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[68.3765,-90.3142,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[76.6792,-90.1575,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[46.1978,-34.1816,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[46.5103,-25.5232,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[46.4937,-16.7402,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[46.5215,-8.1792,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[51.8188,-5.04834,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[60.2632,-5.01563,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[90.8115,-68.9917,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[90.7837,-77.5527,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[85.4565,-4.96875,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[76.8511,-4.93604,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[85.4863,-80.6836,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[77.042,-80.7163,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_Cargo_HQ_V3_F",[80.3901,-72.5996,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[46.876,-5.01563,4.76837e-007],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[0.275391,-86.2764,4.76837e-007],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-0.525391,3.92822,4.76837e-007],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[2.10645,6.08179,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[26.1235,8.81348,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[17.877,8.72363,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[9.49902,8.66895,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[51.0908,9.25488,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[42.8442,9.16504,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[34.4663,9.11035,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[75.936,9.7417,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.6895,9.65186,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[59.3115,9.59717,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[100.836,10.1169,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[92.5894,10.0271,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[84.2114,9.97241,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[125.843,10.4888,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[117.596,10.3989,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[84.8428,-89.9634,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[93.0894,-89.8735,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[101.467,-89.8188,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[109.834,-89.5964,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[118.081,-89.5066,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[126.459,-89.4519,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[131.384,9.19971,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[133.917,-87.4041,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[135.023,-81.5313,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.934,-73.2847,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.879,-64.9067,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.658,-56.5425,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.568,-48.2959,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.514,-39.918,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.141,-31.6055,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[134.051,-23.3589,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[133.997,-14.981,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[133.729,-6.69751,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[133.38,1.63428,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall4_F",[102.807,9.58301,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall4_F",[115.685,9.76904,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[99.4238,9.05469,4.76837e-007],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_BarGate_F",[108.915,13.0376,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[136.78,-85.1069,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[134.736,5.20361,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[114.035,11.9487,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[104.374,11.7764,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[136.287,-55.8975,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[135.488,-28.0171,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[21.7793,10.1768,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[22.9131,-92.636,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[69.2212,-91.647,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[68.5977,11.0913,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Dome_Big_F",[78.3818,-35.8047,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[50.7192,-10.5173,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[123.571,-70.1907,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[122.8,-4.97168,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[21.4858,-17.7498,0],[[0.99997,-0.00773653,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[29.5181,-69.5867,0],[[0,1,0],[0,0,1]],[true,true]],
     ["I_CargoNet_01_ammo_F",[79.7153,-41.4268,0],[[0,1,0],[0,0,1]],[true,true]],
     ["I_CargoNet_01_ammo_F",[74.8345,-40.3708,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_FV510_GB_D",[50.4111,32.957,0],0],
     ["CUP_B_FV510_GB_D",[62.8735,-117.016,0],0],
     ["B_APC_Tracked_01_AA_F",[106.747,-73.0164,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Attack_01_dynamicLoadout_F",[-33.1743,-34.9182,0],0],
     ["B_Heli_Attack_01_dynamicLoadout_F",[167.79,-33.915,0],0],
	 ["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [126.153,-4.49707,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [126.967,-70.3757,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [84.8936,-71.436,3.12651], [[0,1,0],[0,0,1]], "Orange"],
     ["B_G_Mortar_01_F", [79.9448,-73.4114,3.1265], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [119.677,-7.74487,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [120.513,-73.043,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [18.3506,-10.0388,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [23.3853,-31.9585,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [21.6807,-73.0515,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [32.0786,-60.5078,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [97.48,-31.4167,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [68.2178,-51.8181,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [100.547,9.74487,4.34404], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [8.59668,4.95313,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [9.16309,-86.2759,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [133.909,-87.978,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [131.744,9.06641,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [53.7397,-10.832,0], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[120.537,31.6023,0.00143909],1,2,"Orange",30,45],
     [[105.537,-9.97925,0.00143909],1,2,"Orange",30,45],
     [[27.0259,-48.1482,0.00143909],1,2,"Orange",30,45],
     [[78.6074,-32.9368,0.00143909],1,2,"Orange",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[79.7153,-41.4268,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[74.8345,-40.3708,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";