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
_defaultMissionLocations = [[12280.7,8924.9,0.0708466]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Bandits have taken over a military outpost on the south continent (RED/HARD)";
_endMsg = "South continent Bandits stopped, supplies are ours!";
_timeoutMsg = "Down south bandits have moved operation";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Down South Op";
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
     ["Land_Cargo_Tower_V1_F",[0.366211,-1.5957,0],[[-0.409139,0.912472,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[4.87891,-36.2891,-0.0707626],[[0,0.999943,-0.0106641],[-0.011995,0.0106633,0.999871]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_AT_ION",[-33.1963,-18.0547,-0.0245743],0],
     ["CUP_I_4WD_LMG_ION",[50.7627,-74.458,-0.0212326],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[-26.0244,-46.7939,0.0996323],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-1.47363,-5.6709,17.9781], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [3.24707,0.15332,17.6929], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [27.3496,-56.5645,17.8793], [[0,1,0],[0.000690534,0,1]], "Green"],
     ["B_GMG_01_high_F", [19.7813,-56.5732,17.7265], [[0,1,0],[0.000690534,0,1]], "Green"],
     ["B_HMG_01_high_F", [23.2734,-62.8818,17.9418], [[0,1,0],[0.000690534,0,1]], "Green"],
     ["B_HMG_01_high_F", [15.3252,16.2021,-0.0498734], [[0,0.994219,-0.107376],[0.0319849,0.107321,0.99371]], "Green"],
     ["B_HMG_01_high_F", [24.4883,-29.5537,-0.0707932], [[0,0.999986,0.0053265],[-0.00133721,-0.0053265,0.999985]], "Green"],
     ["B_HMG_01_high_F", [25.7354,-38.8223,4.41904], [[0,1,0],[0.00138107,0,0.999999]], "Green"],
     ["B_HMG_01_high_F", [5.14063,-66.543,-0.0696259], [[0,0.999645,0.0266571],[0.0053265,-0.0266567,0.99963]], "Green"],
     ["B_GMG_01_high_F", [30.8467,3.96777,-0.0598831], [[0,0.997785,-0.0665191],[0.046615,0.0664468,0.9967]], "Green"],
     ["B_G_Mortar_01_F", [0.874023,12.2471,-0.0677109], [[0,0.998361,-0.0572388],[-0.031983,0.0572095,0.99785]], "Green"],
     ["B_G_Mortar_01_F", [-4.11816,1.05762,18.0851], [[0,1,0],[0,0,1]], "Green"],
     ["I_static_AT_F", [8.66309,15.1543,3.02255], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-29.6621,-1.9873,-0.0677567],1,3,"Green"],
     [[20.7334,-8.66797,-0.0678482],1,2,"Green"],
     [[-8.53027,-54.0205,-0.0716019],1,3,"Green"],
     [[47.8525,-55.8965,-0.0716019],1,2,"Green"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[11.4912,-50.9805,-0.0708313],_crateLoot,_lootCounts,[[0,0.999999,-0.0013439],[0.00399714,0.00134389,0.999991]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";