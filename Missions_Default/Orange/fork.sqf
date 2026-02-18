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
_startMsg = "Em... that sounds good. Anyway just have a look... take your time. Oh, er by the way - got a bit of a dirty fork, could you ... er·.. get me another one? (BLACK/HARDEST)";
_endMsg = "You bastards! You vicious, heartless bastards! They've destroyed him! He's dead!! They killed him!!!";
_timeoutMsg = "Dirtyfork HQ has moved locations (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Dirtyfork HQ";
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
     ["Land_MilOffices_V1_F",[110.38,-59.2368,0],[[0.999977,-0.00671827,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[79.0693,-59.0139,0],[[-0.999967,0.00807468,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[110.334,-17.4036,0],[[0.999977,-0.00671827,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[79.0234,-16.8896,0],[[-0.999967,0.00807468,0],[0,0,1]],[true,true]],
     ["Land_Dome_Big_F",[33.9131,-27.1099,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V3_F",[20.6855,-78.2695,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Barracks_02_F",[45.8687,-67.2764,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Barracks_02_F",[46.2061,-81.5715,0],[[0,1,0],[0,0,1]],[true,true]],
     ["I_CargoNet_01_ammo_F",[37.9673,-19.4529,0],[[0,1,0],[0,0,1]],[true,true]],
     ["I_CargoNet_01_ammo_F",[42.5654,-21.4019,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[56.499,-51.4072,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["O_APC_Tracked_02_AA_F",[17.3726,-59.167,0],0],
     ["CUP_B_FV510_GB_D",[70.2817,51.0076,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["O_Heli_Attack_02_dynamicLoadout_F",[-20.4531,-46.2351,0],0],
     ["O_Heli_Attack_02_dynamicLoadout_F",[164.012,-40.623,0],0]
	 //["CUP_B_CESSNA_T41_ARMED_USA",[42.3213,41.1426,-0.000457764],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [100.547,9.74487,4.34404], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [8.59668,4.95313,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [133.909,-87.978,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [131.744,9.06641,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [9.16309,-86.2759,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [23.9873,-77.8159,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [17.8433,-81.3369,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [15.4253,-28.9517,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [53.4365,-32.7786,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [40.4819,-8.84619,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [2.93652,-89.7534,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [1.90674,6.68384,2.28029], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [118.891,-18.176,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [111.975,-31.019,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [107.039,-51.2986,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [119.39,-60.0989,0.502999], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [70.0386,-63.4292,0.502999], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [82.4102,-66.7205,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [77.5195,-32.5278,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [76.7036,-8.73926,0.503], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [41.1484,-68.697,0.251271], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [42.9189,-81.9329,0.251271], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[112.693,-54.5391,0.504438],1,2,"Orange"],
     [[112.523,-8.06421,0.504438],1,2,"Orange"],
     [[71.6514,-48.197,0.504438],1,2,"Orange"],
     [[32.6177,-25.563,0.00143909],1,2,"Orange"],
     [[-10.0127,-4.95386,0.00143909],1,2,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[37.9673,-19.4529,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[42.5654,-21.4019,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";