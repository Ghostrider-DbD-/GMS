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
_defaultMissionLocations = [[15810.4,16345.4,0.000340462]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A mercenary group has setup a roadblock. Location scouted and marked on map. (GREEN/EASY)";
_endMsg = "Mercenary roadblock has been cleared! GET OFF THE ROAD, ASSHOLES!";
_timeoutMsg = "Mercenaries have finished roadblock operations and left with the supplies (FAILED)";
_markerType = ["ELLIPSE",[200,200],"GRID"];
_markerColor = "ColorGreen";


_markerMissionName = "Roadblock";
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
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = 0;
_missionHelis = GMS_patrolHelisBlue;
_chancePara = GMS_chanceParaBlue;
_noPara = GMS_noParaBlue;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Blue;
_paraLootCounts = GMS_lootCountsBlue;
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

_crateLoot = GMS_BoxLoot_Blue;
_lootCounts = GMS_lootCountsBlue;
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
     ["Land_CncBarrierMedium4_F",[-0.0166016,0.0341797,-0.000340462],[[-0.368651,-0.929568,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[3.43262,-7.16113,-0.000386238],[[-0.396832,0.917802,-0.0128352],[-0.0199947,0.00533661,0.999786]],[true,true]],
     ["Land_CamoNetVar_NATO",[-3.07031,-6.78516,-0.00753403],[[0.993257,-0.115251,0.0125291],[-0.011995,0.00532612,0.999914]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-8.38281,-2.64258,-0.000340462],[[-0.993308,0.1155,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-6.83203,-14.416,2.38419e-005],[[-0.139538,-0.990139,-0.0123875],[-0.031983,-0.0079968,0.999456]],[true,true]],
     ["Land_CncBarrier_F",[-3.25098,-14.8154,-0.000270844],[[-0.135618,-0.990752,0.00424737],[-0.0173282,0.00665823,0.999828]],[true,true]],
     ["Land_CncBarrier_F",[3.48438,-9.93848,-9.91821e-005],[[-0.920164,0.390996,-0.0204894],[-0.0199947,0.00533661,0.999786]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.11133,-6.85059,-0.000245094],[[-0.59628,-0.80255,-0.0190806],[-0.031983,0,0.999488]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.45996,-7.77539,-0.000326157],[[-0.368395,-0.929648,-0.00638457],[-0.0173282,0,0.99985]],[true,true]],
     ["Land_CncBarrierMedium_F",[0.8125,-9.13281,-5.81741e-005],[[0.368257,0.929721,0.00240214],[-0.0199947,0.00533661,0.999786]],[true,true]],
     ["Land_CncBarrierMedium_F",[2.14258,-8.52246,-0.000522614],[[-0.92946,0.36835,-0.0205544],[-0.0199947,0.00533661,0.999786]],[true,true]],
     ["Land_CncBarrierMedium_F",[-1.02832,-8.66016,-0.000336647],[[0.115188,0.993336,-0.00390928],[-0.011995,0.00532612,0.999914]],[true,true]],
     ["Land_BagBunker_Small_F",[-3.87109,-9.3418,-0.00130653],[[0.115205,0.99334,0.0019966],[-0.0173282,0,0.99985]],[true,true]],
     ["Land_CncBarrier_F",[0.637695,-13.8877,-5.72205e-006],[[-0.604409,0.796341,-0.0230325],[-0.0293202,0.00665637,0.999548]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-32.9512,-6.01465,-0.000340462],[[0.320858,0.947127,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-36.7617,0.99707,-0.000222206],[[0.442954,-0.896529,0.00533141],[-0.00666818,0.00265198,0.999974]],[true,true]],
     ["Land_CamoNetVar_NATO",[-30.248,0.952148,0.000933647],[[-0.997903,0.06466,-0.00307772],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-24.7344,-2.91504,-0.000340462],[[0.997899,-0.0647905,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-26.8828,8.76563,-0.000315666],[[0.0890997,0.996017,-0.00350626],[-0.0053265,0.00399669,0.999978]],[true,true]],
     ["Land_CncBarrier_F",[-30.4785,8.98047,-0.000300407],[[0.0851384,0.996356,-0.00508137],[-0.00265204,0.00532648,0.999982]],[true,true]],
     ["Land_CncBarrier_F",[-36.9551,3.77051,-0.000371933],[[0.939001,-0.343881,0.00478345],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_CncBarrierMedium_F",[-25.2188,1.27441,-0.000360489],[[0.554968,0.831869,-0.0022129],[-0.00399675,0.00532646,0.999978]],[true,true]],
     ["Land_CncBarrierMedium_F",[-26.915,2.11328,-0.000388145],[[0.320756,0.947154,-0.00376308],[-0.00399675,0.00532646,0.999978]],[true,true]],
     ["Land_CncBarrierMedium_F",[-34.2451,3.09863,-0.000162125],[[-0.32069,-0.947168,0.00546552],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_CncBarrierMedium_F",[-35.542,2.42188,-0.00023365],[[0.947195,-0.320625,0.0046501],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_CncBarrierMedium_F",[-32.3877,2.72363,-0.000204086],[[-0.0646394,-0.997888,0.00648281],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_BagBunker_Small_F",[-29.5801,3.5459,-0.00391579],[[-0.0646532,-0.997887,0.00648276],[-0.00265204,0.00666815,0.999974]],[true,true]],
     ["Land_CncBarrier_F",[-34.3115,7.85742,-0.000359535],[[0.64431,-0.764742,0.00578223],[-0.00265204,0.00532648,0.999982]],[true,true]],
     ["RoadCone_F",[-36.4141,6.56348,-0.00031662],[[0.991277,0.131778,0.00192703],[-0.00265204,0.00532648,0.999982]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-32.3408,-1.95313,-0.000397682],[[0.991267,0.131718,0.00626079],[-0.00666818,0.00265198,0.999974]],[true,true]],
     ["I_CargoNet_01_ammo_F",[-3.2793,-3.53711,-0.000306129],[[0.991214,0.131797,0.0111886],[-0.011995,0.00532612,0.999914]],[true,true]],
     ["Land_RoadBarrier_01_F",[-11.9805,3.8916,-0.000341415],[[0.14453,0.9895,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[-21.3506,-8.84473,-0.000340462],[[-0.164426,-0.98639,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-29.5615,3.55273,-0.00058651], [[0.991282,0.131742,0.00175049],[-0.00265204,0.00666815,0.999974]], "Blue"],
     ["B_HMG_01_high_F", [-3.88672,-9.3418,-8.96454e-005], [[0.991123,0.131833,0.0171769],[-0.0173282,0,0.99985]], "Blue"]
];

_missionGroups = [
     [[-20.5508,7.00293,0.00131702],1,3,"Blue"],
     [[-13.5088,-10.3818,0.000812531],1,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     //["I_CargoNet_01_ammo_F",[-32.3408,-1.95313,-0.000397682],_crateLoot,_lootCounts,[[0.991267,0.131718,0.00626079],[-0.00666818,0.00265198,0.999974]]],
     ["I_CargoNet_01_ammo_F",[-3.2793,-3.53711,-0.000306129],_crateLoot,_lootCounts,[[0.991214,0.131797,0.0111886],[-0.011995,0.00532612,0.999914]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";