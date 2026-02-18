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
_defaultMissionLocations = [[8241.99,10900,3.8147e-005]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary forces have taken over a solar complex in the southwest! (RED/HARD)";
_endMsg = "Solar plant secure, power restored, area looted.";
_timeoutMsg = "Mercs have stripped a solar tower and pissed off to craft new weapons.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Solar Mercs";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
_maxNoAI = 4;
_noAIGroups = 0;
_noVehiclePatrols = 1;
_noEmplacedWeapons = 1;
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
     ["RoadCone_F",[0,-0.00292969,0],[[0,0.999928,0.0119996],[-0.00133721,-0.0119996,0.999927]],[true,true]],
     ["APERSTripMine",[10.1064,31.6943,0.334808],[[-0,-0.999569,0.0293425],[0.0302105,0.0293291,0.999113]],[true,true]],
     ["Claymore_F",[1.41406,29.6592,-4.3869e-005],[[0.571693,-0.820463,0.00281783],[-0.0106641,-0.00399644,0.999935]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_APC_Wheeled_01_cannon_F",[24.0342,-64.9043,2.86102e-006],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_AH6J_USA",[48.5527,8.0752,0.00781345],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-40.8281,18.2217,9.85873], [[0.999614,-0.027787,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-43.7744,17.6045,48.477], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-108.689,37.6309,0.000258446], [[0,0.999968,0.00800059],[0.0106641,-0.00800014,0.999911]], "Green"],
     ["B_HMG_01_high_F", [48.3135,-34.3789,0.00708294], [[0,0.999986,0.00533751],[-0.0651943,-0.00532616,0.997858]], "Green"],
     ["B_HMG_01_high_F", [10.7529,10.1934,0.164198], [[0,0.999812,-0.0193648],[-0.023739,0.0193594,0.999531]], "Green"],
     ["B_HMG_01_high_F", [-40.377,-5.60254,0.557361], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-40.7842,-6.12402,4.31257], [[0,0.982924,-0.184011],[0.0318781,0.183918,0.982425]], "Green"],
     ["B_HMG_01_high_F", [-39.5293,17.2139,48.9093], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-3.02148,60.625,-3.8147e-005], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-40.2783,-11.5625,1.33514e-005], [[0,0.999986,0.00532655],[-0.00133721,-0.00532654,0.999985]], "Green"],
     ["B_HMG_01_high_F", [-70.9517,-1.65918,0.0030899], [[0,0.999968,-0.0080009],[0.0426262,0.00799363,0.999059]], "Green"],
     ["B_GMG_01_high_F", [-33.8672,-2.02539,0.552592], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [2.17676,-28.6592,3.19333], [[0,1,0],[0.000690285,0,1]], "Green"],
     ["B_HMG_01_high_F", [9.31055,-28.5869,3.19099], [[0,1,0],[0.000690285,0,1]], "Green"],
     ["B_HMG_01_high_F", [-15.2803,-66.9023,0.00127697], [[0,0.999608,0.0279894],[0.0026744,-0.0279893,0.999605]], "Green"],
     ["B_HMG_01_high_F", [25.1572,-25.9082,0.000548363], [[0,0.999992,0.00399666],[-0.0186628,-0.00399597,0.999818]], "Green"],
     ["CUP_B_D30_AT_CDF", [-23.9189,-159.273,9.63211e-005], [[0,0.999999,-0.00133721],[0.0106641,0.00133714,0.999942]], "Green"]
];

_missionGroups = [
     [[-16.7393,-135.869,0.00118923],1,2,"Green"],
     [[-26.0117,-90.2852,0.00441647],1,2,"Green"],
     [[-49.2295,-38.9795,-0.000674248],1,2,"Green"],
     [[-97.4136,24.8643,-0.000639915],1,2,"Green"],
     [[19.2666,2.90918,0.00557232],1,2,"Green"]
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