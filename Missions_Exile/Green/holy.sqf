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
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Holy Shit... literally... mercenaries are operating out of a mosque!(RED/HARD)";
_endMsg = "Mosque has been swept and cleared. Loot is secured.";
_timeoutMsg = "Fanatics have fled the mosque and are regrouping in larger numbers (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Holy Shit";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 3;
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
     ["Land_A_Mosque_big_wall_EP1",[6.21558,-6.54541,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_corner_EP1",[6.42114,-16.8376,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[17.2788,-16.511,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_gate_EP1",[4.42114,13.6626,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_CityGate1_EP1",[14.2966,14.5376,-4.76837e-007],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[16.2134,44.8684,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_corner_EP1",[5.92114,44.6624,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[6.2478,33.8052,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_gate_EP1",[37.4214,-18.3376,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_hq_EP1",[36.5464,14.2878,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[56.564,44.8362,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_gate_EP1",[36.4214,46.6628,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[57.6294,-16.5432,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_corner_EP1",[67.9216,-16.3372,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[67.595,-5.47998,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_gate_EP1",[69.4216,14.6626,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_CityGate1_EP1",[58.5466,14.0376,-4.76837e-007],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_EP1",[67.6272,34.8706,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Mosque_big_wall_corner_EP1",[67.4216,45.1628,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[45.582,0.147705,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[45.626,6.07153,10.054],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[28.646,6.37256,10.054],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[65.2322,42.0215,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_SUV_Armored_ION",[37.8086,-44.5735,0.00156975],0],
     ["CUP_I_4WD_AT_ION",[59.1567,-6.39795,0],0],
     ["CUP_I_4WD_LMG_ION",[15.3975,34.7629,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_I_CESSNA_T41_ARMED_ION",[38.0833,86.8281,-0.000645638],0],
     ["CUP_I_412_Military_Armed_AT_PMC",[70.2979,-52.5183,0],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [28.5403,22.875,10.0544], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [70.394,14.5798,14.6485], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [37.7607,-19.3914,14.6485], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [3.29736,13.5461,14.6485], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [37.0806,47.7856,14.6485], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [27.5518,11.5767,12.9059], [[0,1,0],[0,0,1]], "Green"],
     ["B_T_GMG_01_F", [47.2512,14.3018,10.0544], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [37.012,14.6604,0.167122], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[36.3477,12.3005,0.16856],1,3,"Green",30,45],
     [[15.2708,-8.85742,0.00143909],1,3,"Green",30,45],
     [[60.5547,35.6238,0.00143909],1,3,"Green",30,45],
     [[26.6602,15.8047,10.0558],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[45.626,6.07153,10.054],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[28.646,6.37256,10.054],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
     //["I_CargoNet_01_ammo_F",[65.2322,42.0215,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";