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
_defaultMissionLocations = [[16663,12292,0.0220709]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces have taken the connecting bridge in PYRGOS!(RED/HARD)";
_endMsg = "Pyrgos bridge is safe on that side. SUCCESS!";
_timeoutMsg = "Mercs have fled the PYRGOS PIER and left mines behind. FAILURE!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Port Pepperpots";
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
     ["Land_Cargo_Tower_V1_F",[-0.318359,-1.60547,-2.38419e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Tower_V1_F",[-14.1543,62.7344,-0.0220704],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[-13.7305,18.373,-0.0217967],[[0,0.999488,-0.031983],[0.00133721,0.031983,0.999488]],[true,true]],
     ["CUP_IED_V4",[-12.8301,95.5645,-0.0220718],[[-0,-0.999996,-0.00265204],[-0.00265204,-0.00265203,0.999993]],[true,true]],
     ["IEDLandBig_F",[20.2461,54.0605,-0.022063],[[-0,-0.999986,0.0053265],[-0.00399675,0.00532646,0.999978]],[true,true]],
     ["IEDUrbanBig_F",[39.748,23.2803,-0.0220888],[[-0,-0.999488,0.031983],[-0.0173282,0.0319782,0.999338]],[true,true]],
     ["CUP_IED_V2",[44.373,-38.6367,-0.022608],[[-0,-0.969377,-0.245576],[-0.111305,-0.24405,0.963354]],[true,true]],
     ["IEDLandSmall_F",[68.8262,-56.9727,-0.0220332],[[-0,-0.999712,-0.0239937],[-0.0279894,-0.0239843,0.99932]],[true,true]],
     ["IEDUrbanSmall_F",[16.3789,-14.7529,-0.0219715],[[-0,-0.999679,-0.0253251],[-0.0452868,-0.0252992,0.998654]],[true,true]],
     ["CUP_IED_V1",[-19.0547,10.4932,-0.0219593],[[-0,-0.999943,0.0106641],[0.0346456,0.0106577,0.999343]],[true,true]],
     ["CUP_IED_V2",[38.6094,64.624,-0.0220637],[[-0,-0.999992,-0.00399675],[-0.132164,-0.00396169,0.99122]],[true,true]],
     ["ATMine",[49.6992,-27.2021,-0.0221539],[[-0,-0.999353,0.0359766],[-0.0439564,0.0359418,0.998387]],[true,true]],
     ["ATMine",[-28.7969,120.412,-0.0220404],[[-0,-0.999996,-0.00267442],[0.0426276,-0.00267199,0.999087]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-12.9434,22.3164,-0.0211186],[[0,0.999488,-0.0319864],[-0.00799352,0.0319854,0.999456]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_T_Boat_Armed_01_minigun_F",[-103.77,-22.5156,10.4484],0],
     ["CUP_B_FV510_GB_D",[-20.8301,48.7236,-0.0220711],0],
     ["CUP_B_FV510_GB_D",[55.8516,-37.0713,-0.0080781],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1D_armed_GER_KSK",[86.1563,-59.1328,-0.0131199],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-3.37695,-4.53516,18.0202], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-17.2871,60.1621,17.8674], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-23.8574,24.9326,4.34223], [[0,1,0],[0.000488281,0,1]], "Green"],
     ["B_HMG_01_high_F", [-6.33398,41.9531,0.374414], [[0,0.999791,0.0204631],[-0.04819,-0.0204393,0.998629]], "Green"],
     ["B_GMG_01_high_F", [17.582,31.3232,-0.00934029], [[0,0.99836,0.0572399],[-0.0665191,-0.0571131,0.996149]], "Green"],
     ["B_GMG_01_high_F", [58.3828,-22.5469,-0.0181432], [[0,0.999968,0.0080009],[-0.0479448,-0.0079917,0.998818]], "Green"],
     ["B_HMG_01_high_F", [65.3359,19.7295,1.0097], [[0,0.999995,0.00327549],[-0.0111771,-0.00327528,0.999932]], "Green"]
];

_missionGroups = [
     [[64.918,-48.3271,-0.0225978],1,2,"Green"],
     [[13.377,-10.54,-0.0211911],1,2,"Green"],
     [[37.959,62.5996,-0.0211039],1,2,"Green"],
     [[-18.5469,75.667,-0.0206811],1,2,"Green"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-12.9434,22.3164,0.0211186],_crateLoot,_lootCounts,[[0,0.999488,-0.0319864],[-0.00799352,0.0319854,0.999456]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";