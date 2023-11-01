/*
	Static Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.4 : Build 22 : Build Date 10/16/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
#include "\x\addons\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [[23513.3,21164,0]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = 0;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Albatross! Albatross! Albatross! Of course you don't get fucking wafers with it, you cunt! It's a fucking albatross! (PINK)";
_endMsg = "Albatross has been handled. Don't you oppress me, mate!";
_timeoutMsg = "You aren't even a proper woman!";
_markerType = ["ELLIPSE",[500,500],"Solid"];
_markerColor = "ColorPink";


_markerMissionName = "Bloody Albatross";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Orange;
_maxNoAI = GMS_MaxAI_Orange;
_noAIGroups = GMS_AIGrps_Orange;
_noVehiclePatrols = GMS_SpawnVeh_Orange;
_noEmplacedWeapons = GMS_SpawnEmplaced_Orange;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = GMS_noPatrolHelisOrange;
_missionHelis = GMS_patrolHelisOrange;
_chancePara = GMS_chanceParaOrange;
_noPara = GMS_noParaOrange;
_paraTriggerDistance = 400;
_paraSkill = 0.8;
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
_lootCounts = [18,50,20,60,44,5];  //  	GMS_lootCountsOrange = [10,32,8,30,16,2];
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
     ["Land_Cargo_Tower_V1_F",[-0.318359,-1.60547,0],0,[true,true]],
     ["Land_Cargo_Tower_V1_F",[134.844,-67.2793,0],46.9952,[true,true]],
     ["Land_Dome_Big_F",[28.6367,-53.2402,0.0559998],0,[true,true]],
     ["Land_Cargo_Tower_V1_F",[223.91,-100.299,-7.62939e-006],0,[true,true]],
     ["Land_Cargo_Patrol_V2_F",[77.4453,-32.9941,-0.0669708],229.78,[true,true]],
     ["Land_Cargo_Patrol_V2_F",[-55.0586,-45.666,-0.0430222],46.234,[true,true]],
     ["Land_Cargo_Patrol_V2_F",[17.8203,-94.4102,-0.0918884],351.514,[true,true]],
     ["RoadCone_F",[57.6719,-53.6582,0.00318909],0,[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_MBT_01_TUSK_F",[189.199,-128.875,0.0110855],0],
     ["B_AFV_Wheeled_01_up_cannon_F",[164.379,-96.4375,-0.377617],0]
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
     ["B_HMG_01_high_F", [203.365,-51.4277,4.68157], 0, "Orange"],
     ["B_HMG_01_high_F", [136.115,-61.7188,18.7808], 0, "Orange"],
     ["B_HMG_01_high_F", [79.3965,-32.9648,4.31316], 0, "Orange"],
     ["B_HMG_01_high_F", [46.1055,41,4.37775], 0, "Orange"],
     ["B_HMG_01_high_F", [3.32813,-3.41797,17.6444], 0, "Orange"],
     ["B_HMG_01_high_F", [-71.8887,10.8711,4.41267], 0, "Orange"],
     ["B_HMG_01_high_F", [-29.709,-72.1133,18.1804], 0, "Orange"],
     ["B_HMG_01_high_F", [19.584,-95.6816,4.35915], 0, "Orange"],
     ["B_HMG_01_high_F", [110.348,-103.486,4.42495], 0, "Orange"],
     ["B_HMG_01_high_F", [216.293,-156.768,4.41337], 0, "Orange"],
     ["B_HMG_01_high_F", [227.611,-97.7852,17.9216], 0, "Orange"],
     ["B_GMG_01_high_F", [220.268,-103.402,18.8566], 0, "Orange"],
     ["B_GMG_01_high_F", [187.588,-48.7676,0.0462723], 0, "Orange"],
     ["B_GMG_01_high_F", [138.701,-68.6777,17.8735], 0, "Orange"],
     ["B_GMG_01_high_F", [67.1426,-20.3125,0.0128021], 0, "Orange"],
     ["B_GMG_01_high_F", [-3.30859,2.83594,18.0674], 0, "Orange"],
     ["B_GMG_01_high_F", [-75.8066,-20.5293,0.0145874], 0, "Orange"],
     ["B_GMG_01_high_F", [-63.0898,-37.2441,0.0101166], 0, "Orange"],
     ["B_GMG_01_high_F", [-33.5156,-65.4258,18.1531], 0, "Orange"],
     ["B_GMG_01_high_F", [118.303,-86.668,3.35861], 0, "Orange"],
     ["B_G_Mortar_01_F", [125.66,-88.4336,2.89913], 0, "Orange"],
     ["B_Mortar_01_F", [121.943,-83.3594,3.27412], 0, "Orange"],
     ["B_G_Mortar_01_F", [-3.60156,-5.13281,17.8437], 0, "Orange"],
     ["B_G_Mortar_01_F", [10.6543,6.53125,0.00299072], 0, "Orange"],
     ["B_HMG_01_high_F", [42.502,-69.7715,0.0116653], 0, "Orange"],
     ["B_HMG_01_high_F", [17.8086,-34.9844,0.000648499], 0, "Orange"],
     ["B_T_Static_AA_F", [113.99,-90.2207,0.01371], 0, "Orange"],
     ["B_static_AA_F", [224.811,-146.139,0.0140991], 0, "Orange"]
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
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";