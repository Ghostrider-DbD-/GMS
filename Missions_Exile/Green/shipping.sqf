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
_defaultMissionLocations = [[7893.38,16165.1,0.000152588]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Bandits are moving weapons and gear down the main highway. Steal it!(RED/HARD)";
_endMsg = "Shipping bandits have been stopped, supplies are ours!";
_timeoutMsg = "Bandits have moved the guns and weapons shipment to a new location.";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Shipping Bandits";
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
     ["RoadCone_F",[-0.00585938,-0.00390625,0],[[0,0.999872,0.0159977],[-0.0226629,-0.0159936,0.999615]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["I_G_Offroad_01_armed_F",[-55.0308,-46.4736,-0.000366211],0],
     ["I_G_Offroad_01_AT_F",[-117.22,-19.8574,-0.000396729],0],
     ["I_G_Offroad_01_AT_F",[-53.3906,-87.0801,0.00173187],0],
     ["I_G_Offroad_01_armed_F",[63.811,-51.4023,0.322624],0]
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
     ["I_HMG_01_high_F", [-38.3237,-35.042,0.611565], [[0,0.999539,-0.0303721],[-0.00182698,0.0303721,0.999537]], "Green"],
     ["B_HMG_01_high_F", [-87.3037,-33.6543,3.05176e-005], [[0,0.999943,0.0106641],[-0.00133721,-0.0106641,0.999942]], "Green"],
     ["B_HMG_01_high_F", [-49.8125,-60.2295,0.000892639], [[0,0.99985,0.0173316],[-0.0186628,-0.0173286,0.999676]], "Green"],
     ["B_HMG_01_high_F", [-51.834,-27.7305,0.798653], [[0,0.999894,0.0145542],[0.0520399,-0.0145344,0.998539]], "Green"],
     ["B_HMG_01_high_F", [-0.939453,-44.3525,-0.000152588], [[0,1,0],[0.00129187,0,0.999999]], "Green"],
     ["B_GMG_01_high_F", [35.1475,37.168,0.945663], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [50.3931,-1.66992,-0.00012207], [[0,0.999999,0.00133721],[-0.00399675,-0.0013372,0.999991]], "Green"],
     ["B_GMG_01_high_F", [10.186,-30.6865,3.95683], [[0,1,0],[0.00176052,0,0.999998]], "Green"]
];

_missionGroups = [
     [[5.8916,-38.1172,-7.62939e-005],1,3,"Green",30,45],
     [[-83.2559,-58.6221,0.000679016],1,3,"Green",30,45],
     [[-60.7324,-34.1719,-0.000587463],1,3,"Green",30,45],
     [[-13.6201,-3.50195,1.52588e-005],1,3,"Green",30,45]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[13.0801,2.99121,0.00109863],_crateLoot,_lootCounts,[[0,0.999304,0.0373065],[0.00532321,-0.037306,0.99929]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";