/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.42 : Build 24 : Build Date 10/19/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 
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
_startMsg = "Enemy outpost has been scouted and marked on the map (RED)";
_endMsg = "Enemy outpost has been cleared and looted.";
_timeoutMsg = "Enemy forces have abandoned the outpost.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Sittingduck Point";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Red;
_maxNoAI = GMS_MaxAI_Red;
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
     ["RoadCone_F",[0.000244141,-0.000244141,0],0,[true,true]],
     ["Land_HBarrier_5_F",[-3.20581,19.377,0],0.0233765,[true,true]],
     ["Land_HBarrier_5_F",[13.5684,-10.1479,0],2.05508,[true,true]],
     ["Land_HBarrier_5_F",[19.5728,-5.88135,0],307.294,[true,true]],
     ["Land_HBarrier_5_F",[-8.77417,19.3867,0],0.0233765,[true,true]],
     ["Land_HBarrier_5_F",[-8.42773,-9.62646,0],2.05508,[true,true]],
     ["Land_HBarrier_5_F",[10.0188,-12.0122,0],270.667,[true,true]],
     ["Land_HBarrier_5_F",[9.9231,-17.6724,0],270.667,[true,true]],
     ["Land_HBarrier_5_F",[-5.09839,-11.7349,0],270.667,[true,true]],
     ["Land_HBarrier_5_F",[-5.13745,-17.3892,0],270.667,[true,true]],
     ["Land_HBarrier_5_F",[2.45044,19.3301,0],0.0233765,[true,true]],
     ["Land_HBarrier_5_F",[21.0803,-1.28345,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[-16.2888,3.7478,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[-16.281,9.31812,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[-16.3572,10.3923,0],269.796,[true,true]],
     ["Land_Cargo_HQ_V2_F",[13.1138,9.09326,4.76837e-007],270.541,[true,true]],
     ["Land_HBarrier_5_F",[4.55103,4.73218,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[4.55884,10.3005,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[4.52173,15.8396,0],269.796,[true,true]],
     ["Land_HBarrier_3_F",[16.9075,-9.23242,0],130,[true,true]],
     ["Land_HBarrier_5_F",[-14.6028,-5.65723,0],223.764,[true,true]],
     ["Land_HBarrier_3_F",[-11.5654,-8.68726,0],46.4701,[true,true]],
     ["Land_HBarrier_5_F",[-12.782,17.4463,0],305.711,[true,true]],
     ["Land_HBarrier_3_F",[-15.3845,14.0435,0],128.417,[true,true]],
     ["Land_Cargo_Patrol_V2_F",[8.2207,-14.2607,4.76837e-007],1.91972,[true,true]],
     ["Land_HBarrier_5_F",[6.34961,-19.6753,0],2.05508,[true,true]],
     ["Land_HBarrier_5_F",[6.63867,-9.82568,0],2.05508,[true,true]],
     ["Land_HBarrier_5_F",[4.6145,-6.18188,0],270.119,[true,true]],
     ["Land_HBarrier_5_F",[-16.3162,-1.71509,0],269.796,[true,true]],
     ["Land_GarbageBags_F",[7.91675,-6.97607,0],301.591,[true,true]],
     ["Land_HBarrier_3_F",[4.37549,-17.1792,0],92.4857,[true,true]],
     ["Land_HBarrier_5_F",[21.0803,9.85132,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[21.0881,15.4216,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[21.053,4.39233,0],269.796,[true,true]],
     ["Land_HBarrier_5_F",[13.5566,19.1094,0],180.674,[true,true]],
     ["Land_HBarrier_5_F",[8.00391,19.2422,0],180.674,[true,true]],
     ["Land_HBarrier_5_F",[18.9922,18.9785,0],180.674,[true,true]],
     ["Land_Cargo_Patrol_V2_F",[-12.8511,14.97,4.76837e-007],126.833,[true,true]],
     ["Land_ScrapHeap_1_F",[0.215332,10.49,0],265.634,[true,true]],
     ["Land_ScrapHeap_2_F",[0.347168,4.22729,0],85.4637,[true,true]],
     ["MetalBarrel_burning_F",[12.8228,-2.74902,0],289.211,[true,true]],
     ["Land_Garbage_square5_F",[13.4072,-2.86401,0],219.536,[true,true]],
     ["Land_JunkPile_F",[-9.7627,-2.86621,0],270.784,[true,true]],
     ["Land_Sign_WarningMilitaryArea_F",[5.04541,-20.8191,0],2.31973,[true,true]],
     ["Land_Pallets_stack_F",[-8.26514,-1.25098,0],44.6072,[true,true]],
     ["Land_GarbageBarrel_01_F",[-3.46631,4.20801,0],98.2682,[true,true]],
     ["Land_Garbage_square5_F",[4.35034,-12.9548,0],271.827,[true,true]],
     ["Land_Garbage_square5_F",[-1.54224,6.71387,0],294.992,[true,true]],
     ["Land_CratesShabby_F",[-8.4751,0.258789,0],161.852,[true,true]],
     ["Land_Loudspeakers_F",[9.40039,3.82007,0],271.827,[true,true]]
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
     ["B_HMG_01_high_F", [7.12891,-15.0647,4.34404], 0, "Red"],
     ["B_HMG_01_high_F", [-14.0496,14.7151,4.34404], 0, "Red"],
     ["B_GMG_01_high_F", [15.8967,7.802,3.12652], 0, "Red"],
     ["B_HMG_01_high_F", [12.3574,12.7839,3.12651], 0, "Red"],
     ["B_HMG_01_high_F", [7.36865,-17.1321,0], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green"],
     [[-13.558,24.0972,3.12796],2,3,"Green"]
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
#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";