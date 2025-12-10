/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.42 : Build 24 : Build Date 10/19/23
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
_startMsg = "Enemy outpost has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy outpost has been cleared and looted.";
_timeoutMsg = "Enemy forces have abandoned the outpost.";
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Cleese Point";
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
     ["Land_HBarrier_5_F",[-11.593,-5.56055,0],268.147,[true,true]],
     ["Land_HBarrier_5_F",[-9.74194,-10.0955,0],227.148,[true,true]],
     ["Land_HBarrier_5_F",[11.4988,-5.51465,0],267.546,[true,true]],
     ["Land_HBarrier_5_F",[9.7915,-9.57886,0],135.892,[true,true]],
     ["Land_HBarrier_5_F",[10.9663,5.66382,0],87.9017,[true,true]],
     ["Land_HBarrier_5_F",[5.06372,11.9734,0],178.557,[true,true]],
     ["Land_HBarrier_5_F",[9.10889,10.1914,0],46.9021,[true,true]],
     ["Land_HBarrier_5_F",[-6.00024,11.5894,0],356.646,[true,true]],
     ["Land_HBarrier_5_F",[-12.0295,5.58472,0],87.3005,[true,true]],
     ["Land_Cargo_Patrol_V1_F",[-0.343262,10.3911,4.76837e-007],178.651,[true,true]],
     ["Land_Cargo_House_V1_F",[-6.06592,-3.3457,0],267.76,[true,true]],
     ["Land_Cargo_House_V1_F",[5.65259,3.92383,0],87.6723,[true,true]],
     ["Land_HBarrier_5_F",[5.31567,-11.4211,0],178.557,[true,true]],
     ["Land_HBarrier_5_F",[-5.69019,-11.7083,0],178.557,[true,true]],
     ["Land_HBarrier_5_F",[-0.446045,11.7839,0],178.557,[true,true]],
     ["Land_HBarrier_5_F",[11.2273,0.0878906,0],87.7722,[true,true]],
     ["Land_HBarrier_5_F",[-11.7642,0.048584,0],87.9017,[true,true]],
     ["Land_Razorwire_F",[14.1826,-14.03,0],314.574,[true,true]],
     ["Land_Razorwire_F",[13.6792,15.3489,0],226.447,[true,true]],
     ["Land_Razorwire_F",[-14.0996,-14.6548,0],226.555,[true,true]],
     ["Land_Razorwire_F",[18.2385,0.744873,0],265.407,[true,true]],
     ["Land_Razorwire_F",[-0.91626,19.5703,0],177.222,[true,true]],
     ["Land_Razorwire_F",[-18.7263,0.287842,0],265.407,[true,true]],
     ["Land_HBarrier_1_F",[-10.5134,-18.2808,0],318.366,[true,true]],
     ["Land_HBarrier_1_F",[-17.2771,-11.0015,0],318.366,[true,true]],
     ["Land_HBarrier_1_F",[-18.2356,-4.47021,0],355.469,[true,true]],
     ["Land_HBarrier_1_F",[-19.1125,4.95361,0],355.469,[true,true]],
     ["Land_HBarrier_1_F",[-5.6123,19.3743,0],86.9207,[true,true]],
     ["Land_HBarrier_1_F",[4.02637,19.9211,0],86.9207,[true,true]],
     ["Land_HBarrier_1_F",[10.4888,18.8057,0],137.661,[true,true]],
     ["Land_HBarrier_1_F",[17.2388,11.9697,0],137.661,[true,true]],
     ["Land_HBarrier_1_F",[18.0315,5.59668,0],173.384,[true,true]],
     ["Land_HBarrier_1_F",[18.8069,-4.19238,0],173.384,[true,true]],
     ["Land_HBarrier_1_F",[17.5154,-10.6648,0],224.613,[true,true]],
     ["Land_HBarrier_1_F",[10.7458,-17.5574,0],224.613,[true,true]],
     ["Land_HBarrier_3_F",[-4.32495,-18.4043,0],358.802,[true,true]],
     ["Land_HBarrier_3_F",[4.2981,-18.1074,0],358.802,[true,true]],
     ["Land_WaterTank_F",[-6.46362,-8.56372,0],358.416,[true,true]],
     ["Land_ToiletBox_F",[8.56494,-0.862305,0],88.4168,[true,true]],
     ["Land_HBarrier_1_F",[-11.9878,8.49463,0],42.7515,[true,true]],
     ["Land_HBarrier_1_F",[-9.00488,11.2712,0],48.1634,[true,true]],
     ["Land_TTowerSmall_2_F",[5.33765,1.16333,0],358.802,[true,true]],
     ["Land_HBarrier_3_F",[-16.0476,10.6465,0],305.431,[true,true]],
     ["Land_HBarrier_3_F",[-11.2776,15.6228,0],324.789,[true,true]]
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
     ["B_HMG_01_high_F", [-4.43018,-15.582,0], 0, "Red"],
     ["B_HMG_01_high_F", [1.04272,11.2759,4.34404], 0, "Red"],
     ["B_HMG_01_high_F", [16.418,-4.17114,0], 0, "Green"],
     ["B_GMG_01_high_F", [-15.4568,0.457031,0], 0, "Green"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green"],
     [[-23.558,24.0972,3.12796],2,3,"Green"],
     [[-2.44092,13.9883,0.00143909],2,4,"Orange"] 
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