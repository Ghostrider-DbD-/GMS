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
_defaultMissionLocations = [[12827.1,16679.7,0.019577]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mil-Hill has been seiged -- Terminal is their next attack. LARGE Loot stockpiles reported (HARD|Coop";
_endMsg = "Mil-Hill has been retaken by Patriots, terminal is safe -- for now...";
_timeoutMsg = "Seriously, no one wants to blow the shit outta mil hill? (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Siege of Mil-Hill";
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
     ["RoadCone_F",[-0.0683594,0.0214844,6.10352e-005],[[0,0.996379,-0.0850241],[-0.257663,0.0821532,0.962736]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_B_Jackal2_L2A1_GB_D",[-43.4561,-57.4023,-0.0179596],0],
     ["CUP_B_Jackal2_GMG_GB_D",[25.5967,41.4824,-0.0170441],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Transport_01_F",[-69.7412,38.7344,0.0924835],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_G_Mortar_01_F", [19.3369,-0.976563,2.90813], [[0,1,0],[0,0,1]], "Red"],
     ["B_G_Mortar_01_F", [13.8613,0.105469,2.95043], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [-28.4609,26.8574,17.8408], [[0,1,0],[0.000976388,0,1]], "Red"],
     ["B_GMG_01_high_F", [-30.1738,20.1367,17.8152], [[0,1,0],[0.000976388,0,1]], "Red"],
     ["B_HMG_01_high_F", [-8.50488,-46.9922,17.7393], [[0,1,0],[0.000690285,0,1]], "Red"],
     ["B_GMG_01_high_F", [-15.0479,-50.7793,17.7643], [[0,1,0],[0.000690285,0,1]], "Red"],
     ["B_HMG_01_high_F", [76.2344,0.826172,4.32784], [[0,1,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [93.4707,88.7637,4.256], [[0,1,0],[0.000690285,0,1]], "Red"],
     ["B_GMG_01_high_F", [-34.3359,40.1797,-0.0143585], [[0,0.998509,-0.0545853],[-0.0133317,0.0545805,0.99842]], "Red"],
     ["B_HMG_01_high_F", [4.98926,17.9707,0.0262909], [[0,0.986394,-0.164399],[-0.0146684,0.164381,0.986288]], "Red"],
     ["B_HMG_01_high_F", [-22.9678,14.752,-0.0150375], [[0,0.998974,-0.0452855],[-0.0266571,0.0452694,0.998619]], "Red"],
     ["B_HMG_01_high_F", [-38.6572,-33.4746,-0.0191269], [[0,0.999892,0.0146639],[-0.00799344,-0.0146635,0.999861]], "Red"],
     ["B_GMG_01_high_F", [-23.5146,-47.4531,-0.0178299], [[0,0.999743,0.02266],[-0.0239912,-0.0226535,0.999455]], "Red"],
     ["B_HMG_01_high_F", [-14.7949,-45.5918,8.47552], [[0,1,0],[0.000690285,0,1]], "Red"],
     ["B_HMG_01_high_F", [-2.28516,-3.88086,0.052269], [[0,0.985964,-0.166957],[-0.179693,0.16424,0.969915]], "Red"],
     ["CUP_B_RBS70_ACR", [-26.9014,70.6465,0.00417328], [[0,0.993786,-0.111304],[-0.0704904,0.111027,0.991314]], "Red"],
     ["CUP_B_RBS70_ACR", [-30.2676,11.1758,3.13335], [[0,1,0],[0.00119573,0,0.999999]], "Red"],
     ["CUP_B_RBS70_ACR", [-3.12402,-33.3086,3.06846], [[0,1,0],[0.000690285,0,1]], "Red"],
     ["CUP_B_RBS70_ACR", [18.0762,27.5508,-0.00261688], [[0,0.993786,-0.111304],[0.0133313,0.111294,0.993698]], "Red"]
];

_missionGroups = [
     [[73.0547,1.96484,-0.0200958],1,2,"Red"],
     [[64.2441,74.9609,-0.0183792],1,2,"Red"],
     [[5.59277,33.8105,-0.0159378],1,2,"Red"],
     [[-24.5225,-18.4082,-0.0181351],1,2,"Red"],
     [[-50.3379,-66.5313,-0.0226212],1,2,"Red"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[12.2764,-9.375,-0.0162659],_crateLoot,_lootCounts,[[0,0.998284,0.0585572],[-0.0186565,-0.058547,0.99811]]],
     ["I_CargoNet_01_ammo_F",[8.10059,-6.33203,-0.0127029],_crateLoot,_lootCounts,[[0,0.996379,-0.085017],[-0.0186739,0.0850021,0.996206]]],
     ["I_CargoNet_01_ammo_F",[-17.3936,-33.8418,-0.0199127],_crateLoot,_lootCounts,[[0,0.999968,0.0080009],[0.00265204,-0.00800087,0.999964]]],
     ["I_CargoNet_01_ammo_F",[-38.499,-3.88281,-0.0243912],_crateLoot,_lootCounts,[[0,0.999978,-0.00665923],[-0.0173282,0.00665823,0.999828]]],
     ["I_CargoNet_01_ammo_F",[0.976563,-36.8066,-0.0154877],_crateLoot,_lootCounts,[[0,0.998124,0.0612232],[-0.0279914,-0.0611992,0.997733]]],
     ["I_CargoNet_01_ammo_F",[29.3809,13.0664,-0.0286713],_crateLoot,_lootCounts,[[0,0.998124,-0.061219],[0.09293,0.060954,0.993805]]],
     ["I_CargoNet_01_ammo_F",[3.66016,-4.39453,0.048317],_crateLoot,_lootCounts,[[0,0.996379,-0.085017],[-0.257656,0.0821465,0.962739]]],
     ["I_CargoNet_01_ammo_F",[1.8584,-8.36133,0.013382],_crateLoot,_lootCounts,[[0,0.997958,0.0638701],[-0.179695,-0.0628305,0.981714]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";