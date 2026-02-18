/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.6 : Build 27 : Build Date 10/24/23
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
_startMsg = "Enemy POW camp scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy POW camp has been DEALT WITH.";
_timeoutMsg = "Enemy POW camp has been scrapped and relocated.";
_showMarker = true;
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "POW Camp";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 4;
_noAIGroups = 3;
_noVehiclePatrols = 1;
_noEmplacedWeapons = 2;
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
     ["RoadCone_F",[0.000244141,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-31.823,29.3398,5.72205e-005],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-23.9753,29.4541,0.307276],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-16.218,29.5605,0],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-8.38794,29.4893,9.34601e-005],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-0.545654,29.6338,3.8147e-006],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[7.302,29.748,0.307224],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[15.0593,29.8545,0],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[22.8894,29.7832,3.8147e-005],[[4.76837e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-35.8142,-29.6543,1.90735e-005],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-35.9285,-21.8066,0.307238],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-36.0349,-14.0498,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-35.9636,-6.21973,5.53131e-005],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-36.1082,1.62305,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-36.2224,9.4707,0.307186],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-36.3289,17.2275,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-36.2576,25.0576,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.2551,25.5439,1.90735e-006],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.3694,17.6963,0.307219],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.4758,9.93848,1.90735e-006],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.4045,2.1084,3.62396e-005],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.5491,-5.7334,0],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.6633,-13.5811,0.307167],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.7698,-21.3389,0],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[27.6985,-29.1689,0],[[1,-5.20549e-007,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[23.2097,-33.4844,1.33514e-005],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-0.225342,-33.6338,4.95911e-005],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-8.06763,-33.7783,0],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-15.9153,-33.8926,0.307178],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-23.6726,-33.999,0],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-31.5027,-33.9277,-3.8147e-006],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Barracks_01_dilapidated_F",[-13.926,-22.5625,-3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sawmill_01_illuminati_tower_F",[-33.9822,-32.6855,0.368678],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sawmill_01_illuminati_tower_F",[-34.4563,28.0664,0.294629],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Sawmill_01_illuminati_tower_F",[25.2527,28.3398,0.242801],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Sawmill_01_illuminati_tower_F",[25.7415,-32.4434,0.250205],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_Gate_F",[8.80786,-33.1035,3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[17.6995,-33.6289,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[10.9031,-32.6475,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GuardBox_01_green_F",[5.29419,-31.9131,0.099123],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GuardHouse_03_F",[20.4104,-27.9355,0.229376],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-26.3713,-6.11621,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-20.3464,-6.08887,3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-14.2927,-6.14941,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-2.23608,-6.05957,3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[3.86499,-5.97266,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[9.89673,-5.91016,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[15.9216,-5.88281,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[21.9529,-5.85449,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[24.5076,3.04395,3.8147e-006],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[23.908,15.1074,3.8147e-006],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[23.53,21.127,3.8147e-006],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[24.8855,-2.97656,1.90735e-006],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-27.8845,23.9609,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-21.8596,23.9883,3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-15.8059,23.9277,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-9.77417,23.9902,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-3.74927,24.0176,3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[2.35181,24.1045,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[14.4084,24.1943,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[20.4397,24.2227,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_Pole_F",[23.3694,24.2324,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-30.7317,20.9727,0],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-30.3538,14.9531,0],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-30.0974,8.9043,-3.8147e-006],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-29.7542,2.88965,0],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_F",[-29.3762,-3.13086,0],[[-0.99863,-0.0523347,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_D_F",[8.32886,24.5547,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_4_D_F",[23.5564,9.11914,0],[[-0.999848,0.0174523,0],[0,0,1]],[true,true]],
     ["Land_Barracks_05_F",[-19.0647,-2.08105,0.174623],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Barracks_05_F",[0.661377,-1.93066,0.156564],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_W_sharpStone_03",[21.3611,-0.0732422,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DryToilet_01_F",[11.8489,-2.56543,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_DryToilet_01_F",[11.906,-0.645508,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_DryToilet_01_F",[23.6868,-4.81641,3.8147e-006],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_DryToilet_01_F",[23.5857,-2.85547,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_Sink_F",[17.5193,-2.82031,0],[[-1,4.88762e-007,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_F",[17.5784,-4.98633,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sign_WarningNoWeapon_F",[15.3049,-33.7734,1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_sign_uwaga_pl_1_F",[6.89331,-33.8643,-1.90735e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FirewoodPile_01_F",[-30.0564,22.1729,0],[[0,1,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[-12.468,-5.18945,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[17.5134,-1.11914,5.72205e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[22.7312,-24.8896,0.6537],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_V3S_wreck_F",[13.2346,-25.9756,0],[[0.173649,0.984808,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Ural_F",[21.1917,-9.45313,0],[[0.996195,0.0871558,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Ural_F",[21.0779,-14.6602,0],[[-0.906308,0.422619,0],[0,0,1]],[true,true]],
     ["Land_Wreck_UAZ_F",[21.5374,-19.9385,0.081027],[[0.939693,0.34202,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V2_F",[-8.59888,-6.53125,4.29153e-006],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Caravan_01_rust_F",[-26.1213,-11.8096,-3.8147e-006],[[-0.866025,0.5,0],[0,0,1]],[true,true]],
     ["MetalBarrel_burning_F",[8.60181,23.4121,3.8147e-006],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-34.4719,28.0991,20.5729], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [25.7141,-32.4048,20.515], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-7.37158,-5.84521,4.34405], [[0,1,0],[0,0,1]], "Red"],
     ["B_GMG_01_high_F", [20.5212,-2.93018,0], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-2.44092,13.9883,0.00143909],2,3,"Red"],
     [[9.85303,-15.8623,0.00143909],2,3,"Green"],
     [[-12.5906,-51.6309,0.00143909],2,3,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [

];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";