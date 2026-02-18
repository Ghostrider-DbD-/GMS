/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.61 : Build 28 : Build Date 11/02/23
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
_difficulty = "Orange";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenaries have taken over the Castle Anthrax! Have fun storming the castle! (BLACK/HARDEST)";
_endMsg = "Castle Anthrax has fallen... and now for the spankings.... (SUCCESS)";
_timeoutMsg = "Operations at Castle Anthrax have finished, enemy is redeploying in stronger numbers (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[750,750],"SOLID"];
_markerColor = "ColorBlack";


_markerMissionName = "Castle Anthrax";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 3;
_noAIGroups = 0;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisOrange;
_chancePara = GMS_chanceParaOrange;
_noPara = GMS_noParaOrange;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
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
_lootCounts = GMS_lootCountsOrange;
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
     ["Land_A_Castle_Bastion",[1.93774,-0.147949,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_30",[9.43774,-20.8979,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_End_2",[13.4377,-32.8979,-4.76837e-007],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_Corner_2",[23.9377,-31.8979,0],[[0.707107,-0.707107,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_10",[31.9377,-23.1479,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_End",[26.6877,-14.8979,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_20_Turn",[23.4377,13.8521,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_Corner_2",[29.9377,-3.14795,0],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_Corner",[11.6877,-10.1479,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_End",[23.1877,-7.89795,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_10",[14.1877,-7.39795,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Bergfrit",[41.2039,-27.6731,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_20",[68.9377,-31.3979,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_20",[49.1877,-31.3979,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Stairs_A",[48.4377,-20.3979,4.76837e-007],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Gate",[42.9377,16.6021,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_End_2",[40.4377,-2.14795,-4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_End_2",[61.6877,16.3521,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Stairs_A",[67.4126,1.58594,4.76837e-007],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_5_D",[50.9377,-0.897949,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall2_30",[68.4377,27.1021,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_20",[90.6877,-17.1479,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_Corner",[78.1877,-30.6479,0],[[-8.74228e-008,-1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_10",[79.4377,-26.6479,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Bergfrit",[74.6877,-5.64795,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Bastion",[98.1877,3.60205,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_10",[75.6877,3.35205,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_WallS_End",[74.9377,14.3521,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_20",[89.6877,30.3521,0],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_Corner_2",[89.4377,40.3521,0],[[0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_A_Castle_Wall1_End",[80.1877,40.8521,0],[[0,1,0],[0,0,1]],[true,true]],
     ["RoadCone_F",[57.1833,-6.6582,0],[[0,1,0],[0,0,1]],[true,true]]
     //["I_CargoNet_01_ammo_F",[43.855,15.7478,10.476],[[0,0.999971,-0.00759211],[-0.00427604,0.00759204,0.999962]],[true,true]],
     //["I_CargoNet_01_ammo_F",[42.2703,-28.4482,30.185],[[0,0.999998,-0.00191986],[0,0.00191986,0.999998]],[true,true]],
     //["I_CargoNet_01_ammo_F",[14.6763,-29.6089,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_APC_Tracked_01_AA_F",[18.4766,-18.2778,0],0],
     ["I_APC_Wheeled_03_cannon_F",[52.4133,-64.9923,0],0]
];

_missionUGVs = [

];
_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Attack_01_dynamicLoadout_F",[22.4343,46.9907,0],0],
     ["O_Heli_Attack_02_dynamicLoadout_F",[96.9517,-61.838,0],0]
];

_missionUAVs = [

];
_missionEmplacedWeapons = [
     ["B_Mortar_01_F", [75.7661,-8.54785,30.1886], [[0,0.999997,-0.00231612],[0.00109183,0.00231612,0.999997]], "Orange"],
     ["B_Mortar_01_F", [38.6606,-29.3787,30.1871], [[0,0.999999,0.00109183],[0.00231612,-0.00109183,0.999997]], "Orange"],
     ["B_HMG_01_high_F", [47.7,16.7766,10.4872], [[0,0.999971,-0.00759582],[-0.00428464,0.00759575,0.999962]], "Orange"],
     ["B_GMG_01_high_F", [39.6887,17.5105,10.4478], [[0,0.999971,-0.00759582],[-0.00428464,0.00759575,0.999962]], "Orange"],
     ["B_GMG_01_high_F", [45.7041,-30.3057,30.1919], [[0,0.999998,-0.00192236],[0,0.00192236,0.999998]], "Orange"],
     ["B_HMG_01_high_F", [77.603,-0.973389,30.1919], [[0,1,0],[-0.00192236,0,0.999998]], "Orange"],
     ["CUP_B_D30_AT_AFU", [3.35864,0.53418,0], [[0,1,0],[0,0,1]], "Orange"],
     ["CUP_B_ZU23_AFU", [79.4497,30.4524,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [75.4709,-7.40112,22.1028], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [44.6467,-29.4185,22.1028], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [43.4866,-21.0012,4.44435], [[0,0.999526,-0.0307716],[-0.00114512,0.0307716,0.999526]], "Orange"],
     ["B_GMG_01_high_F", [77.655,-26.5078,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [9.62134,-26.4094,6.69796], [[0,1,0],[-0.0882354,0,0.9961]], "Orange"]
];

_missionGroups = [
     [[99.6018,29.7039,0.00143909],1,3,"Orange"],
     [[88.6357,2.93384,0.00143909],1,3,"Orange"],
     [[54.1401,-13.9512,0.00143909],1,3,"Orange"],
     [[18.9446,2.72876,0.00143909],1,3,"Orange"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[43.855,15.7478,10.476],_crateLoot,_lootCounts,[[0,0.999971,-0.00759211],[-0.00427604,0.00759204,0.999962]]],
     ["I_CargoNet_01_ammo_F",[42.2703,-28.4482,30.185],_crateLoot,_lootCounts,[[0,0.999998,-0.00191986],[0,0.00191986,0.999998]]],
     ["I_CargoNet_01_ammo_F",[14.6763,-29.6089,0],_crateLoot,_lootCounts,[[0,1,0],[0,0,1]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";