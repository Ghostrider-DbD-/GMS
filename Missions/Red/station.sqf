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


_markerMissionName = "Gilliam Station";
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
     ["Land_PortableLight_double_F",[-3.1189,13.9382,0],228.261,[true,true]],
     ["Land_ToiletBox_F",[0.101318,10.9629,0],359.154,[true,true]],
     ["Land_Cargo_Patrol_V3_F",[15.5791,-13.2258,4.76837e-007],314.038,[true,true]],
     ["Land_Cargo_HQ_V3_F",[-10.6545,7.91675,4.76837e-007],267.333,[true,true]],
     ["Land_HBarrier_5_F",[2.33423,13.8975,0],180.593,[true,true]],
     ["Land_HBarrier_5_F",[-2.32495,15.8892,0],230.768,[true,true]],
     ["Land_HBarrier_5_F",[19.645,13.9338,0],231.635,[true,true]],
     ["Land_HBarrier_5_F",[22.5181,3.6875,0],240.934,[true,true]],
     ["Land_HBarrier_5_F",[22.6853,-1.47144,0],109.927,[true,true]],
     ["Land_HBarrier_5_F",[14.6604,-19.0103,0],1.98476,[true,true]],
     ["Land_HBarrier_5_F",[-9.8501,-15.1377,0],21.7148,[true,true]],
     ["Land_HBarrier_5_F",[-15.1182,-14.5476,0],354.618,[true,true]],
     ["Land_HBarrier_5_F",[21.3645,-12.4929,0],93.7194,[true,true]],
     ["Land_HBarrier_5_F",[21.5779,-6.85254,0],91.2719,[true,true]],
     ["Land_HBarrier_5_F",[19.27,-17.1665,0],133.912,[true,true]],
     ["Land_HBarrier_5_F",[9.94385,-17.0078,0],43.2557,[true,true]],
     ["Land_HBarrier_5_F",[-18.4592,-0.0791016,0],88.7307,[true,true]],
     ["Land_HBarrier_5_F",[-20.0933,4.47925,0],50.8217,[true,true]],
     ["Land_HBarrier_5_F",[-21.9165,9.45313,0],88.1428,[true,true]],
     ["Land_HBarrier_5_F",[-21.2979,15.0005,0],108.365,[true,true]],
     ["Land_HBarrier_5_F",[-5.17285,-14.4241,0],324.922,[true,true]],
     ["Land_HBarrier_5_F",[4.39575,10.3274,0],271.403,[true,true]],
     ["Land_HBarrier_5_F",[5.44287,5.13184,0],242.879,[true,true]],
     ["Land_HBarrier_5_F",[-6.6853,18.1177,0],177.693,[true,true]],
     ["Land_HBarrier_5_F",[-12.1267,17.8306,0],177.693,[true,true]],
     ["Land_HBarrier_5_F",[-17.7224,17.606,0],177.693,[true,true]],
     ["Land_HBarrier_5_F",[-19.644,-12.5889,0],48.1373,[true,true]],
     ["Land_HBarrier_5_F",[-26.5632,1.41553,0],231.211,[true,true]],
     ["Land_HBarrier_5_F",[-25.0566,-3.12744,0],271.273,[true,true]],
     ["Land_HBarrier_5_F",[-25.1167,-8.59009,0],270.843,[true,true]],
     ["Land_HBarrier_5_F",[5.23071,-14.03,0],23.8596,[true,true]],
     ["Land_HBarrier_5_F",[0.0998535,-13.0042,0],179.263,[true,true]],
     ["Land_HBarrier_5_F",[6.49048,0.156006,0],273.522,[true,true]],
     ["Land_PortableLight_double_F",[-4.35742,2.95532,0],357.007,[true,true]],
     ["Land_PortableLight_double_F",[18.1846,-15.8413,0],311.55,[true,true]],
     ["Land_Pallets_stack_F",[16.4421,14.093,0],107.837,[true,true]],
     ["Land_WaterTank_F",[2.21753,0.169189,0],270.438,[true,true]],
     ["Land_HBarrier_5_F",[21.262,8.82202,0],270.637,[true,true]],
     ["Land_PaperBox_closed_F",[12.7078,-8.17358,0],20.4457,[true,true]],
     ["Land_Tyres_F",[7.15918,12.1082,0],202.603,[true,true]],
     ["Land_ToiletBox_F",[2.62036,10.9844,0],359.221,[true,true]],
     ["Land_HBarrier_5_F",[-16.3572,-4.06006,0],36.5702,[true,true]],
     ["Land_HBarrier_5_F",[4.07178,-4.04395,0],329.047,[true,true]],
     ["Land_HBarrier_5_F",[-1.06738,-5.59985,0],357.498,[true,true]],
     ["Land_HBarrier_5_F",[-25.3728,9.77051,0],177.704,[true,true]],
     ["Land_PortableLight_double_F",[-16.7561,8.78467,0],88.5717,[true,true]],
     ["Land_PaperBox_open_empty_F",[10.8113,-9.30493,0],166.944,[true,true]],
     ["Land_HBarrier_3_F",[-22.709,-10.7603,0],180.593,[true,true]],
     ["Land_GarbageBags_F",[-2.55566,6.36646,0],158.176,[true,true]],
     ["Land_Pallet_F",[16.5417,12.1536,0],168.535,[true,true]],
     ["Land_BarrelSand_grey_F",[-0.0891113,-3.26831,0],200.404,[true,true]],
     ["Land_BarrelEmpty_F",[0.479248,-2.48901,0],143.945,[true,true]]
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
     ["B_HMG_01_high_F", [15.3735,-14.5972,4.34404], 0, "Red"],
     ["B_GMG_01_high_F", [-12.0066,12.446,3.12651], 0, "Orange"],
     ["B_HMG_01_high_F", [-9.58276,6.1814,3.12652], 0, "Red"],
     ["B_HMG_01_high_F", [18.9553,10.0117,0], 0, "Red"],
     ["B_HMG_01_high_F", [-22.0669,-7.86816,0], 0, "Green"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,4,"Green"],
     [[-13.558,24.0972,3.12796],2,4,"Green"]
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