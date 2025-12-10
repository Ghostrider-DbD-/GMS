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
_startMsg = "A weapons factory is manufacturing new guns for enemy mercenary forces! STOP THEM! (BLACK/HARDEST)";
_endMsg = "Jabberwocky Factory has been crushed, and their resources secured! (SUCCESS)";
_timeoutMsg = "Jabberwocky Factory has finished operations, Mercenary forces grow stronger (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Jabberwocky Factory";
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
     ["Land_Ind_Mlyn_03",[-2.74121,-2.89575,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Ind_Mlyn_02",[9.66211,19.1375,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Ind_Pec_02",[15.6377,47.9382,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Ind_Shed_02_EP1",[3.63403,54.3506,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_D_VSilo_Pec",[44.7588,27.9756,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Ind_Mlyn_04",[46.3835,15.7256,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Ind_Shed_02_EP1",[30.5088,2.10059,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_Ind_Pec_01",[39.634,62.2256,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Ind_Mlyn_01",[66.634,16.2256,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_ind_silomale",[89.6335,15.7256,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[2.1731,37.1074,0],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[13.1196,14.3049,0.073],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[43.1145,60.511,19.159],[[0,1,0],[0,0,1]],[true,true]],
     //["I_CargoNet_01_ammo_F",[3.87256,44.364,0],[[0,1,0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[-20.5356,49.845,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[-33.215,-5.31812,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[-5.55859,-18.5371,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[-21.394,15.2012,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[48.0896,-17.6206,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[106.567,-8.23145,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[118.336,36.0554,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[73.5344,40.0303,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[15.0884,78.2639,0],[[-0,-1,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[66.1128,69.8215,0],[[-0,-1,-0],[0,0,1]],[true,true]]
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
     ["CUP_I_Mi24_Mk3_ION",[59.2212,-43.3801,4.76837e-007],0],
     ["CUP_I_CESSNA_T41_ARMED_ION",[109.731,71.1357,-0.000645638],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-5.88281,-3.56958,8.14479], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [2.77271,-3.50977,21.3317], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [3.59668,64.4648,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_Mortar_01_F", [63.5364,19.3479,36.9], [[0,1,0],[0,0,1]], "Orange"],
     ["B_Mortar_01_F", [44.3831,65.5122,37.6666], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [28.7668,22.0383,2.07562], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-5.30811,4.14941,2.72006], [[0,1,0],[0,0,1]], "Orange"],
     ["CUP_B_D30_AT_AFU", [11.3992,-2.02222,0], [[0,1,0],[0,0,1]], "Orange"],
     ["CUP_B_D30_AT_AFU", [37.6475,40.2627,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [51.4583,60.8491,19.1591], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-12.4338,9.22046,0.0725107], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [42.2649,67.5061,29.2105], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [47.6169,71.7124,5.61807], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [59.6963,8.68018,36.9], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [21.6226,66.6646,2.47883], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [20.0039,32.5139,0.106097], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[35.5032,-15.2058,0.00143909],1,2,"Orange"],
     [[-1.50488,16.1147,0.0739489],1,3,"Orange"],
     [[15.8022,42.397,0.107536],1,2,"Orange"],
     [[45.009,62.752,0.547349],1,3,"Orange"],
     [[85.2712,41.7251,0.00143909],1,2,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[13.1196,14.3049,0.073],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[43.1145,60.511,19.159],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]],
     ["I_CargoNet_01_ammo_F",[3.87256,44.364,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";