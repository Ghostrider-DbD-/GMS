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
_defaultMissionLocations = [[5049.76,11149.2,2.39516]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A group of tanks has been reported in Panochori. Street sweeper, anyone? (RED/HARD)";
_endMsg = "Tank squad in Panochori has been destroyed or captured!";
_timeoutMsg = "Enemy tanks have fled the city, ambush chance missed!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Armored Squad";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 4;
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
     ["RoadCone_F",[44.9839,101.981,-2.39407],[[0,0.997873,0.0651934],[-0.00399675,-0.0651928,0.997865]],[true,true]],
     ["Exile_Container_SupplyBox",[22.1606,97.2139,-2.37617],[[0,0.988644,0.150278],[0.0160037,-0.150258,0.988517]],[true,true]],
     ["Exile_Container_SupplyBox",[28.3374,95.3242,-2.36741],[[0,0.991741,0.128259],[0.130872,-0.127156,0.983211]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_FV510_GB_D",[0,0,-2.38936],0],
     ["CUP_B_FV510_GB_D",[50.9448,102.601,-2.38965],0],
     ["CUP_B_FV510_GB_D",[86.9639,274.422,-2.36414],0],
     ["CUP_O_T55_CHDKZ",[-74.9224,125.699,-2.37432],0],
     ["CUP_O_T55_CHDKZ",[225.096,-42.5352,-2.37547],0]
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
     ["B_HMG_01_high_F", [54.2886,82.1084,-2.38388], [[0,0.998974,0.0452868],[-0.0691671,-0.0451784,0.996582]], "Green"],
     ["B_HMG_01_high_F", [-22.8999,117.512,-2.3645], [[0,0.991907,0.126964],[-0.046615,-0.126826,0.990829]], "Green"],
     ["B_HMG_01_high_F", [47.1978,20.0039,-2.38364], [[0,0.999928,-0.012],[-0.0823851,0.0119592,0.996529]], "Green"]
];

_missionGroups = [
     [[28.5962,10.8447,-2.396],1,2,"Green",30,45],
     [[45.02,70.2363,-2.3984],1,2,"Green",30,45],
     [[21.3008,239.681,-2.39445],1,2,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["Exile_Container_SupplyBox",[22.1606,97.2139,-2.37617],_crateLoot,_lootCounts,[[0,0.988644,0.150278],[0.0160037,-0.150258,0.988517]]],
     ["Exile_Container_SupplyBox",[28.3374,95.3242,-2.36741],_crateLoot,_lootCounts,[[0,0.991741,0.128259],[0.130872,-0.127156,0.983211]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";