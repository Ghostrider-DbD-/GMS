

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
_difficulty = "Green";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "An Enemy Mad Scientist Built an New Lab";
_endMsg = "Patriots Captured the Lab";
_timeoutMsg = "The Scientiest Completed Development of New Weapons";
_markerType = ["ELLIPSE",[150,150],"GRID"];
_markerColor = "MarkerGreen";


_markerMissionName = "Doctor";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 3;
_maxNoAI = 6;
_noAIGroups = GMS_AIGrps_Green;
_noVehiclePatrols = GMS_SpawnVeh_Green;
_noEmplacedWeapons = GMS_SpawnEmplaced_Green;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = GMS_noPatrolHelisGreen;
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
_endCondition = allKilledOrPlayerNear;
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
     ["RoadCone_F",[0,-0.00012207,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[7.30957,-15.8878,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[12.8804,-15.9138,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[16.4404,-13.8948,0],[[0.999983,-0.00581194,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[16.4673,-8.32385,0],[[0.999983,-0.00581194,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-17.1567,-6.80078,0],[[-0.999983,0.00581215,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-17.1836,-12.3718,0],[[-0.999983,0.00581215,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-15.1646,-15.9329,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-15.3291,13.538,0],[[-0.999983,0.00581215,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-15.3804,8.01794,0],[[-0.999983,0.00581215,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[16.4097,13.6644,0],[[-0.999983,0.00580595,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[16.3828,8.09265,0],[[-0.999983,0.00580595,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[2.82227,-15.8699,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[14.5,16.9344,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[8.92041,16.9795,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[3.35107,17.0277,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-2.15771,17.076,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-7.69092,17.1257,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[-13.2734,17.167,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[16.4893,-3.12878,0],[[0.999983,-0.00581194,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[19.8442,-1.11084,0],[[0.00539315,-0.999985,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[25.3345,-1.12683,0],[[0.00539315,-0.999985,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[27.3955,2.32239,0],[[-0.999977,0.00673672,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[27.4165,7.87695,0],[[-0.999977,0.00673672,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[27.5,13.4148,0],[[-0.999977,0.00673672,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[20.0181,16.8926,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["Land_HBarrier_5_F",[25.5024,16.8502,0],[[-0.00581175,-0.999983,0],[0,0,1]],[false,false]],
     ["PortableHelipadLight_01_red_F",[16.5259,15.5389,0.0935812],[[0.827357,0.561676,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_outer_F",[21.9385,10.8801,0.22856],[[-0.00116929,-0.999999,0],[0,0,1]],[false,false]],
     ["Land_Device_disassembled_F",[-11.6577,12.1182,0],[[0.00469483,-0.999989,0],[0,0,1]],[false,false]],
     ["Land_Decal_roads_oil_stain_01_F",[13.5337,7.01111,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wall_IndCnc_2deco_F",[14.1963,-5.72388,9.53674e-007],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_Wall_IndCnc_2deco_F",[11.1606,-7.08203,0],[[0.929989,0.367586,0],[0,0,1]],[false,false]],
     ["Land_Wall_IndCnc_2deco_F",[11.7192,-10.2078,9.53674e-007],[[-1,4.88762e-007,0],[0,0,1]],[false,false]],
     ["Land_Wall_IndCnc_2deco_F",[11.7217,-13.2289,9.53674e-007],[[-1,4.88762e-007,0],[0,0,1]],[false,false]],
     ["ContainmentArea_02_black_F",[22.4873,10.4122,0],[[0,1,0],[0,0,1]],[false,false]],
     ["ContainmentArea_03_black_F",[-12.4463,7.08215,0.0299473],[[0,1,0],[0,0,1]],[false,false]],
     ["Land_DeconTent_01_yellow_F",[-17.4463,0.645142,0.0821867],[[0.999992,-0.00404921,0],[0,0,1]],[false,false]],
     ["Land_Research_house_V1_F",[-6.10352,11.4935,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Research_HQ_F",[-5.33154,-14.6993,0],[[0.999995,-0.0030965,0],[0,0,1]],[true,true]],
     ["Land_Research_house_V1_F",[0.549805,11.3969,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [
     ["CargoNet_01_box_F",[9.8667,-13.1979,0],[[0.866025,0.5,0],[0,0,1]]],
     ["CargoNet_01_box_F",[7.76563,-13.9338,0],[[0.994153,-0.107982,0],[0,0,1]]],
     ["CargoNet_01_box_F",[9.72949,-10.8588,0],[[0.866025,0.5,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[19.9507,11.5771,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[21.7344,8.80322,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[23.7046,8.95618,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[21.8013,11.6902,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[20.0986,8.73914,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[14.5166,6.42517,0],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[-12.4326,6.99719,0.0361133],[[-1,1.19249e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[23.7285,11.9252,0.0310364],[[1,-4.37114e-008,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[14.3276,9.63318,0],[[0.965926,0.258819,0],[0,0,1]]],
     ["CargoNet_01_barrels_F",[14.5156,7.95715,0],[[1,-4.37114e-008,0],[0,0,1]]],
     ["Land_FieldToilet_F",[13.7046,-7.65112,0.228],[[0.999992,0.00390953,0],[0,0,1]]],
     ["Land_FieldToilet_F",[13.7036,-9.74988,0.227695],[[0.999992,0.00390953,0],[0,0,1]]],
     ["Land_FieldToilet_F",[13.7109,-11.6051,0.228],[[0.999992,0.00390953,0],[0,0,1]]],
     ["Land_FieldToilet_F",[13.6548,-13.3842,0.228],[[0.999992,0.00390953,0],[0,0,1]]],
     ["DeconShower_01_F",[-17.4985,0.632202,0.0826082],[[0,1,0],[0,0,1]]],
     ["HazmatBag_01_F",[14.8813,-4.59387,0],[[0,1,0],[0,0,1]]],
     ["Land_PortableWeatherStation_01_olive_F",[12.9023,13.4712,0],[[0,1,0],[0,0,1]]],
     ["HazmatBag_01_F",[-9.104,-14.8466,3.12652],[[0,1,0],[0,0,1]]],
     ["HazmatBag_01_F",[-9.57617,-11.4315,3.12652],[[0,1,0],[0,0,1]]],
     ["HazmatBag_01_F",[-14.8691,-2.48279,0.105767],[[0,1,0],[0,0,1]]],
     ["HazmatBag_01_F",[-7.75098,12.2665,0.592812],[[0,1,0],[0,0,1]]]
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
     ["O_G_HMG_02_high_F", [-4.50488,-20.2935,3.12652], [[-0.135113,-0.99083,0],[0,0,1]], "Green"],
     ["O_G_HMG_02_high_F", [24.1348,2.45435,0], [[-0.998832,-0.048311,0],[0,0,1]], "Green"],
     ["O_G_HMG_02_high_F", [-13.4395,-8.62048,0], [[0.818401,0.574648,0],[0,0,1]], "Green"],
     ["O_G_HMG_02_high_F", [6.94824,13.5354,0], [[-0.366798,-0.930301,0],[0,0,1]], "Green"],
     ["O_static_AT_F", [-9.16455,-13.1599,3.12652], [[-0.91751,-0.397713,0],[0,0,1]], "Green"],
     ["O_static_AA_F", [-1.7583,-20.58,3.12652], [[0.898377,-0.439225,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-8.33691,5.43921,0.00143909],3,6,"Green"],
     [[-20.2744,0.542725,0.107206],3,6,"Green"],
     [[5.40918,-11.8788,0.00143909],3,6,"Green"],
     [[10.7114,14.1135,0.00143909],3,6,"Green"],
     [[20.5391,5.32202,0.00143909],3,6,"Green"],
     [[10.6567,-3.22119,0.00143909],3,6,"Green"],
     [[-4.22559,-14.0134,0.603112],3,6,"Green"],
     [[24.6426,5.07971,0.00143909],3,6,"Green"],
     [[-4.60303,-14.9109,3.12796],3,6,"Green"],
     [[-1.9292,8.71887,0.00143909],3,6,"Green"]
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