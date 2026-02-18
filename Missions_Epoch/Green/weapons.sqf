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
_defaultMissionLocations = [[25256,21853.4,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy forces are doing research on new and advanced weapons. Stop them. (RED/HARD)";
_endMsg = "Enemies weapons research has been shut down!";
_timeoutMsg = "Enemy forces have finished their research, and are upgrading their weapons.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Weapons Research";
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
     ["Land_Cargo_Tower_V3_F",[-0.615234,-1.51563,0],[[0.188421,0.982088,0],[0,0,1]],[true,true]],
     ["Land_MilOffices_V1_F",[-38.4004,-21.8008,0],[[0.988806,-0.149205,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[33.0254,-16.4375,0.00256348],[[0,0.999091,-0.0426276],[0.0863437,0.0424684,0.99536]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-30.0117,-24.6934,1.021],[[0,1,0],[0,0,1]],[true,true]],
     ["APERSTripMine",[-29.3398,-10.6563,1.28799],[[0.997446,-0.0714194,-0],[0,0,1]],[true,true]],
     ["APERSTripMine",[-38.5801,-25.8887,0.62149],[[-0.946465,-0.322808,-0],[0,0,1]],[true,true]],
     ["APERSTripMine",[-45.7656,-34.9121,1.03745],[[-0.996635,0.0819743,-0],[0,0,1]],[true,true]],
     ["IEDLandBig_F",[61.2227,-76.5625,-0.000221252],[[-0,-0.99615,-0.0876602],[0.0239937,-0.087635,0.995864]],[true,true]],
     ["IEDUrbanBig_F",[39.5332,-60.8789,7.62939e-005],[[-0,-0.997873,-0.0651952],[0.0213272,-0.0651803,0.997646]],[true,true]],
     ["IEDLandSmall_F",[-7.96484,-24.4668,9.15527e-005],[[-0,-0.99885,-0.0479448],[0.0704912,-0.0478255,0.996365]],[true,true]],
     ["CUP_IED_V4",[30.2207,4.62305,6.86646e-005],[[-0,-0.999772,0.02133],[0.0902964,0.0212429,0.995688]],[true,true]],
     ["IEDLandBig_F",[-32.4199,5.2832,9.91821e-005],[[-0,-0.993932,0.109995],[0.0080009,0.109992,0.9939]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_O_T55_CHDKZ",[-13.8438,-98.0684,0.170052],0],
     ["CUP_B_M163_Vulcan_USA",[84.2227,-50.1113,0.00653076],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["CUP_B_UH1Y_Gunship_Dynamic_USMC",[20.1445,27.1484,0.326141],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_HMG_01_high_F", [-29.1406,-19.2559,1.02494], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-40.502,-13.5156,0.655861], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-4.03711,-3.4082,17.2208], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [2.79883,-1.44141,18.1173], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_F", [72.1348,-55.3398,0.00528717], [[0,0.9994,0.0346437],[0.0585653,-0.0345842,0.997684]], "Green"],
     ["B_HMG_01_high_F", [70.7285,-70.1934,4.23426], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [42.2285,-40.4453,8.58112], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [16.2129,-41.1641,0.00984192], [[0,0.998361,0.0572386],[0.0506016,-0.0571652,0.997082]], "Green"],
     ["B_HMG_01_high_F", [56.7656,-18.9121,0.00325775], [[0,1,0],[0.0439562,0,0.999033]], "Green"],
     ["B_GMG_01_high_F", [72.7227,-31.4512,3.19354], [[0,1,0],[0.000488106,0,1]], "Green"],
     ["B_G_Mortar_01_F", [58.5313,-49.084,0.00156403], [[0,0.999201,0.0399667],[0.0253248,-0.0399539,0.998881]], "Green"],
     ["B_G_Mortar_01_F", [59.9609,-42.0938,0.00310516], [[0,0.999956,0.00932853],[0.0625434,-0.00931027,0.997999]], "Green"],
     ["B_G_Mortar_01_F", [60.7598,-35.1504,0.0011673], [[0,0.999488,0.0319849],[0.0253248,-0.0319746,0.999168]], "Green"],
     ["B_G_Mortar_01_F", [-2.80469,2.63867,18.3036], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-36.1699,-23.0781,0.662979],1,3,"Green"],
     [[121.986,-62.4395,0.0068512],1,3,"Green"],
     [[62.0762,-82.2246,-0.0012207],1,3,"Green"],
     [[37.9727,-7.86133,0.00208282],1,3,"Green"],
     [[-5.49414,-42.1094,-0.00382996],1,3,"Green"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-30.0117,-24.6934,1.521],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";