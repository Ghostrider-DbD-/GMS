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


_markerMissionName = "Overwatch";
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
     ["Land_HBarrier_3_F",[-22.8816,-20.2949,0],230.161,[true,true]],
     ["Land_Cargo_Tower_V1_F",[0.750244,3.18164,0],268.844,[true,true]],
     ["Land_HBarrier_3_F",[22.8555,-17.9226,0],129.284,[true,true]],
     ["Land_HBarrier_3_F",[27.4412,17.9685,0],244.614,[true,true]],
     ["Land_HBarrier_3_F",[-31.3677,15.2207,0],298.384,[true,true]],
     ["Land_HBarrier_3_F",[-0.774658,36.3735,0],357.596,[true,true]],
     ["Land_HBarrierBig_F",[-8.88574,-25.0193,0],181.954,[true,true]],
     ["Land_HBarrierBig_F",[11.5449,-23.8904,0],178.689,[true,true]],
     ["Land_HBarrierBig_F",[11.3062,31.7561,0],226.963,[true,true]],
     ["Land_HBarrierBig_F",[18.2417,26.6709,0],209.03,[true,true]],
     ["Land_HBarrierBig_F",[-20.7473,25.48,0],158.802,[true,true]],
     ["Land_HBarrierBig_F",[-13.6226,30.396,0],135.998,[true,true]],
     ["Land_HBarrierBig_F",[-32.0564,1.47974,0],246.759,[true,true]],
     ["Land_HBarrierBig_F",[-7.44312,7.12231,0],90.0324,[true,true]],
     ["Land_HBarrierBig_F",[-7.05005,-1.20483,0],89.2487,[true,true]],
     ["Land_HBarrierBig_F",[7.94897,7.59937,0],90.9827,[true,true]],
     ["Land_HBarrierBig_F",[8.17358,-0.834229,0],90.9827,[true,true]],
     ["Land_HBarrierBig_F",[27.8513,6.09058,0],292.315,[true,true]],
     ["Land_HBarrierBig_F",[26.1548,-2.34204,0],274.382,[true,true]],
     ["Land_HBarrierBig_F",[-29.29,-6.67603,0],260.921,[true,true]],
     ["Land_PortableLight_double_F",[-2.97949,-0.870605,8.58897],88.9744,[true,true]],
     ["Land_PortableLight_double_F",[-0.270508,7.40747,4.64145],271.052,[true,true]],
     ["Land_Pallets_stack_F",[-15.6758,5.10474,0],263.779,[true,true]],
     ["Land_PaperBox_closed_F",[-6.90356,-12.5784,0],269.945,[true,true]],
     ["Land_WaterTank_F",[11.7793,4.76099,0],359.457,[true,true]],
     ["Land_WaterTank_F",[11.9082,1.91528,0],359.457,[true,true]],
     ["Land_PaperBox_closed_F",[-8.07202,-14.374,0],300.411,[true,true]],
     ["Land_HBarrier_3_F",[14.4512,-10.8035,0],129.284,[true,true]],
     ["Land_HBarrier_3_F",[16.2302,11.5349,0],244.614,[true,true]],
     ["Land_HBarrier_3_F",[-0.464111,23.5669,0],357.596,[true,true]],
     ["Land_HBarrier_3_F",[-18.7661,10.0859,0],298.384,[true,true]],
     ["Land_HBarrier_3_F",[-14.4148,-12.1699,0],230.161,[true,true]],
     ["Land_HBarrier_5_F",[5.98389,12.9143,0],179.126,[true,true]],
     ["Land_HBarrier_5_F",[-5.74805,12.3289,0],178.494,[true,true]],
     ["Land_HBarrier_5_F",[6.46899,-5.96338,0],178.314,[true,true]],
     ["Land_HBarrier_5_F",[-4.94165,-6.36182,0],178.861,[true,true]]
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
     ["B_HMG_01_high_F", [-0.540283,32.9336,0], 0, "Green"],
     ["B_HMG_01_high_F", [-29.1284,13.1614,0], 0, "Red"],
     ["B_HMG_01_high_F", [-21.0464,-18.9463,0], 0, "Red"],
     ["B_HMG_01_high_F", [21.1582,-16.0713,0], 0, "Orange"],
     ["B_HMG_01_high_F", [25.0803,16.96,0], 0, "Red"],
     ["B_HMG_01_high_F", [4.46924,0.205078,17.8895], 0, "Red"],
     ["B_GMG_01_high_F", [0.517822,6.75073,17.8895], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green"],
     [[-13.558,24.0972,3.12796],1,3,"Green"],
     [[3.74072,13.2544,0.00143909],2,3,"Green"]	 
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