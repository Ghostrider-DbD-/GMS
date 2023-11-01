/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.4 : Build 22 : Build Date 10/16/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [[]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Temporary outpost has been established by enemy forced (RED)";
_endMsg = "Gilliam Outpost has been cleared of enemy threat.";
_timeoutMsg = "Gilliam Outpost has been abandoned and stripped of gear.";
_markerType = ["ELLIPSE",[200,200],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "";
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
     ["Land_HBarrier_3_F",[-0.731323,0.84082,0],230.161,[true,true]],
     ["Land_Cargo_Tower_V1_F",[22.9006,24.3169,0],268.844,[true,true]],
     ["Land_HBarrier_3_F",[45.0059,3.21289,0],129.284,[true,true]],
     ["Land_HBarrier_3_F",[49.5916,39.104,0],244.614,[true,true]],
     ["Land_HBarrier_3_F",[-9.21729,36.356,0],298.384,[true,true]],
     ["Land_HBarrier_3_F",[21.3756,57.5093,0],357.596,[true,true]],
     ["Land_HBarrierBig_F",[13.2646,-3.88428,0],181.954,[true,true]],
     ["Land_HBarrierBig_F",[33.6951,-2.75537,0],178.689,[true,true]],
     ["Land_HBarrierBig_F",[33.4568,52.8916,0],226.963,[true,true]],
     ["Land_HBarrierBig_F",[40.392,47.8062,0],209.03,[true,true]],
     ["Land_HBarrierBig_F",[1.4032,46.6157,0],158.802,[true,true]],
     ["Land_HBarrierBig_F",[8.52795,51.5317,0],135.998,[true,true]],
     ["Land_HBarrierBig_F",[-9.90601,22.6147,0],246.759,[true,true]],
     ["Land_HBarrierBig_F",[14.7074,28.2578,0],90.0324,[true,true]],
     ["Land_HBarrierBig_F",[15.1005,19.9307,0],89.2487,[true,true]],
     ["Land_HBarrierBig_F",[30.0994,28.7349,0],90.9827,[true,true]],
     ["Land_HBarrierBig_F",[30.324,20.3013,0],90.9827,[true,true]],
     ["Land_HBarrierBig_F",[50.0017,27.2261,0],292.315,[true,true]],
     ["Land_HBarrierBig_F",[48.3053,18.7935,0],274.382,[true,true]],
     ["Land_HBarrierBig_F",[-7.13977,14.459,0],260.921,[true,true]],
     ["Land_PortableLight_double_F",[19.1709,20.2646,8.58897],88.9744,[true,true]],
     ["Land_PortableLight_double_F",[21.8799,28.543,4.64145],271.052,[true,true]],
     ["Land_Razorwire_F",[49.8441,-0.39502,0],130.828,[true,true]],
     ["Land_Razorwire_F",[55.8605,42.1904,0],63.3236,[true,true]],
     ["Land_Razorwire_F",[20.2341,64.4136,0],353.962,[true,true]],
     ["Land_Razorwire_F",[-16.9028,39.2349,0],298.805,[true,true]],
     ["Land_Razorwire_F",[-2.7439,-7.31592,0],212.627,[true,true]],
     ["Land_Razorwire_F",[13.5043,-13.0283,0],177.922,[true,true]],
     ["Land_Razorwire_F",[33.7554,-11.4561,0],175.731,[true,true]],
     ["Land_Razorwire_F",[-17.5131,15.4873,0],251.529,[true,true]],
     ["Land_Razorwire_F",[0.0432129,56.0562,0],142.909,[true,true]],
     ["Land_Razorwire_F",[41.5941,56.5542,0],214.404,[true,true]],
     ["Land_Razorwire_F",[56.8004,22.2446,0],279.546,[true,true]],
     ["Land_Pallets_stack_F",[6.47461,26.2402,0],263.779,[true,true]],
     ["Land_PaperBox_closed_F",[15.2468,8.55713,0],269.945,[true,true]],
     ["Land_WaterTank_F",[33.9297,25.8965,0],359.457,[true,true]],
     ["Land_WaterTank_F",[34.0586,23.0508,0],359.457,[true,true]],
     ["Land_PaperBox_closed_F",[14.0784,6.76123,0],300.411,[true,true]],
     ["Land_Pallets_stack_F",[6.45508,28.6309,0],225.143,[true,true]],
     ["Land_HBarrier_3_F",[36.6016,10.332,0],129.284,[true,true]],
     ["Land_HBarrier_3_F",[38.3806,32.6704,0],244.614,[true,true]],
     ["Land_HBarrier_3_F",[21.6862,44.7026,0],357.596,[true,true]],
     ["Land_HBarrier_3_F",[3.38428,31.2212,0],298.384,[true,true]],
     ["Land_HBarrier_3_F",[7.73547,8.96582,0],230.161,[true,true]],
     ["Land_ToiletBox_F",[19.5186,26.7881,0],268.476,[true,true]],
     ["Land_HBarrier_5_F",[28.1343,34.0498,0],179.126,[true,true]],
     ["Land_HBarrier_5_F",[16.4026,33.4644,0],178.494,[true,true]],
     ["Land_HBarrier_5_F",[28.6195,15.1719,0],178.314,[true,true]],
     ["Land_HBarrier_5_F",[17.2089,14.7734,0],178.861,[true,true]],
     ["RoadCone_F",[22.1346,14.9189,0],0,[true,true]]
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
     ["B_HMG_01_high_F", [42.0635,5.59766,0], 0, "Red"],
     ["B_HMG_01_high_F", [45.5302,37.9907,0], 0, "Red"],
     ["B_HMG_01_high_F", [21.493,53.1309,0], 0, "Red"],
     ["B_HMG_01_high_F", [-6.18176,34.1196,0], 0, "Red"],
     ["B_HMG_01_high_F", [2.61719,3.33594,0], 0, "Red"],
     ["B_GMG_01_high_F", [25.5212,20.9878,17.8895], 0, "Red"]
];

_missionGroups = [

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