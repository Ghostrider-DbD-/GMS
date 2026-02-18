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


_markerMissionName = "Sleepy Outpost";
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
     ["Land_HBarrierBig_F",[17.5894,-14.3469,0],0.823,[true,true]],
     ["Land_BagBunker_Large_F",[8.72583,-17.3525,0],0.823,[true,true]],
     ["Land_PortableLight_double_F",[-9.65552,-20.3555,0],0.823,[true,true]],
     ["Land_ToiletBox_F",[18.1394,16.791,0],90.286,[true,true]],
     ["Land_WaterTank_F",[-17.6482,-4.25879,0],358.843,[true,true]],
     ["Land_Cargo20_military_green_F",[17.813,-8.28857,0],20.639,[true,true]],
     ["Land_HBarrierBig_F",[25.3098,-11.2712,0],318.505,[true,true]],
     ["Land_HBarrierBig_F",[28.7146,-3.73926,0],272.745,[true,true]],
     ["Land_HBarrier_5_F",[-6.54614,-21.6992,0],0.823,[true,true]],
     ["Land_HBarrier_5_F",[-12.0891,-21.6348,0],0.823,[true,true]],
     ["Land_HBarrier_5_F",[-4.40356,-18.146,0],272.053,[true,true]],
     ["Land_HBarrierBig_F",[-15.9478,-18.1675,0],272.357,[true,true]],
     ["Land_HBarrierBig_F",[-19.5427,-11.2576,0],217.579,[true,true]],
     ["Land_HBarrierBig_F",[-22.9946,-3.91943,0],272.357,[true,true]],
     ["Land_HBarrier_5_F",[-28.9141,-0.133789,0],271.384,[true,true]],
     ["Land_HBarrierBig_F",[-17.6274,-0.735596,0],0.823,[true,true]],
     ["Land_HBarrier_5_F",[-26.9236,-7.22974,0],183.779,[true,true]],
     ["Land_HBarrier_5_F",[-28.6985,5.51855,0],272.949,[true,true]],
     ["Land_HBarrierBig_F",[-17.8357,23.0938,0],178.683,[true,true]],
     ["Land_BagBunker_Large_F",[-9.0769,26.4287,0],178.683,[true,true]],
     ["Land_PortableLight_double_F",[9.15894,29.9297,0],178.683,[true,true]],
     ["Land_HBarrierBig_F",[-25.4255,19.7393,0],136.365,[true,true]],
     ["Land_HBarrierBig_F",[-28.3867,12.5723,0],90.604,[true,true]],
     ["Land_HBarrier_5_F",[6.01392,31.3613,0],178.683,[true,true]],
     ["Land_HBarrier_5_F",[11.5549,31.4883,0],178.683,[true,true]],
     ["Land_HBarrier_5_F",[4.00366,27.7092,0],89.912,[true,true]],
     ["Land_HBarrierBig_F",[15.5491,28.1726,0],90.216,[true,true]],
     ["Land_HBarrierBig_F",[19.3855,21.3855,0],35.438,[true,true]],
     ["Land_HBarrierBig_F",[23.1116,14.1882,0],90.216,[true,true]],
     ["Land_HBarrier_5_F",[28.8455,9.15479,0],90.808,[true,true]],
     ["Land_HBarrierBig_F",[17.8772,10.8027,0],178.683,[true,true]],
     ["Land_HBarrier_5_F",[27.0039,17.3274,0],1.63801,[true,true]],
     ["Land_HBarrier_5_F",[28.7224,3.51807,0],90.808,[true,true]],
     ["Land_Cargo20_military_green_F",[13.1731,7.14014,0],180.656,[true,true]],
     ["Land_Cargo20_military_green_F",[13.7834,-1.43652,0],133.028,[true,true]],
     ["Land_HBarrier_5_F",[4.84058,-10.353,0],272.053,[true,true]],
     ["Land_HBarrier_5_F",[3.30542,-5.29907,0],224.276,[true,true]],
     ["Land_HBarrier_5_F",[-5.17847,19.6306,0],270.174,[true,true]],
     ["Land_HBarrier_5_F",[-3.73486,14.4495,0],228.766,[true,true]],
     ["Land_HBarrier_5_F",[-10.3918,-0.875,0],0.823,[true,true]],
     ["Land_HBarrier_5_F",[10.6492,10.6116,0],0.564758,[true,true]],
     ["Land_ToiletBox_F",[18.1863,14.6035,0],90.286,[true,true]],
     ["Land_WaterTank_F",[-17.7146,-7.48926,0],358.843,[true,true]],
     ["Land_WaterBarrel_F",[-8.21851,-2.33691,0],189.652,[true,true]],
     ["Land_PortableLight_double_F",[-23.9946,18.1648,0],314.869,[true,true]],
     ["Land_PortableLight_double_F",[-14.7351,-13.0974,0],241.444,[true,true]],
     ["Land_Cargo20_military_green_F",[25.3579,0.181641,0],89.579,[true,true]],
     ["Land_Cargo_Patrol_V1_F",[9.66504,27.1118,4.76837e-007],178.764,[true,true]],
     ["Land_Cargo_Patrol_V1_F",[-9.96167,-17.3694,4.76837e-007],0.104889,[true,true]],
     ["Land_Pallets_F",[14.3057,13.3271,0],354.869,[true,true]],
     ["Land_PaperBox_closed_F",[-22.4675,1.42432,0],274.591,[true,true]],
     ["Land_MetalBarrel_F",[-8.07593,-3.41504,0],297.438,[true,true]],
     ["Land_BarrelEmpty_grey_F",[-9.23999,-3.84863,0],0.825978,[true,true]],
     ["Land_BarrelTrash_grey_F",[-8.50952,-4.01855,0],6.934,[true,true]],
     ["Land_PaperBox_closed_F",[-21.4175,4.17822,0],126.324,[true,true]],
     ["Land_Pallets_stack_F",[-22.4529,6.05957,0],0.82312,[true,true]]
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
     ["B_HMG_01_high_F", [11.03,27.8767,4.34404], 0, "Red"],
     ["B_HMG_01_high_F", [-11.2551,-17.7969,4.34404], 0, "Red"],
     ["B_HMG_01_high_F", [26.0747,5.15015,0], 0, "Red"],
     ["B_HMG_01_high_F", [-26.2964,3.83545,0], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green",30,45],
     [[-13.558,24.0972,3.12796],2,3,"Green",30,45],
     [[3.74072,13.2544,0.00143909],2,3,"Green",30,45],
     //[[-3.54211,-13.5405,0.00143909],2,4,"Green"],
     [[22.109,-4.81934,0.00143909],1,2,"Green",30,45]
     //[[-12.3046,24.1689,0.603113],2,4,"Green"],
     //[[-6.83374,21.272,0.00143909],2,4,"Green"]
     //[[4.87683,-6.9248,0.00143909],2,4,"Green"],
     //[[-1.02954,26.0737,0.00143909],2,4,"Green"]
     //[[-9.27332,9.60596,0.00143909],2,3,"Green"]		 
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