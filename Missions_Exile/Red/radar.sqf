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
_startMsg = "Enemy radar complex has been scouted and marked on the map (ORANGE/MEDIUM)";
_endMsg = "Enemy radar complex has been cleared and dismantled.";
_timeoutMsg = "Enemy RADAR camp has been scrapped and relocated.";
_showMarker = true;
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "Radar Complex";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = 0;
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
     ["RoadCone_F",[0.000244141,-0.000183105,0.18847],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Radar_01_antenna_base_F",[7.36157,-0.712524,0.18847],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MobileRadar_01_radar_F",[9.96948,4.98083,9.08716],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MobileRadar_01_generator_F",[-10.1287,3.72253,8.20761],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MobileRadar_01_generator_F",[-10.3425,-3.46204,8.18984],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MobileRadar_01_generator_F",[-2.40991,-3.9635,8.18984],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MobileRadar_01_generator_F",[-2.40259,3.68933,8.20761],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TransferSwitch_01_F",[4.8479,-2.84485,2.18997],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["O_MRAP_02_gmg_F",[56.3584,59.457,0.188469],0]
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
     ["B_HMG_01_high_F", [20.9058,-6.15942,8.2076], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [24.8818,4.2666,0.18847], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [4.72046,-11.9288,0.18847], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-4.79614,0.126404,0.37694], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[20.2891,-0.392212,4.872],2,3,"Red",30,45],
     [[6.59766,-5.70148,1.15641],2,3,"Orange",30,45],
     [[25.7705,28.756,0.189909],2,3,"Red",30,45]
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