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
_defaultMissionLocations = [[22425.3,18539,0.000180244]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Mercenary asshats have setup a roadblock near the Salt Flats. Crush it!(GREEN)";
_endMsg = "The roadblock near the salt flats has been flattened and looted!";
_timeoutMsg = "Roadblock near the salt flats has been abandoned (MISSED CHANCE)";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "None Shall Pass";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 2;
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
     ["Land_CncBarrierMedium4_F",[-0.0253906,0,0.000130653],[[-0.784023,-0.620731,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-0.644531,-7.94531,0.00012207],[[0.116062,0.993242,-0.000460851],[0.0266571,-0.0026511,0.999641]],[true,true]],
     ["Land_CamoNetVar_NATO",[-6.08594,-4.36523,0.0180387],[[0.802246,-0.596347,-0.0277542],[0.0266571,-0.0106603,0.999588]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-8.60938,1.86328,-0.000179291],[[-0.802501,0.596651,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-13.1563,-9.10742,4.29153e-005],[[-0.615306,-0.787122,0.0428529],[0.0559114,0.0106474,0.998379]],[true,true]],
     ["Land_CncBarrier_F",[-10.2578,-11.2441,0.000205994],[[-0.613231,-0.789578,-0.0226989],[0.0093285,-0.0359733,0.999309]],[true,true]],
     ["Land_CncBarrier_F",[-1.98438,-10.3809,-0.000142097],[[-0.601049,0.799006,0.018147],[0.0266571,-0.0026511,0.999641]],[true,true]],
     ["Land_CncBarrierMedium_F",[-10.4824,-1.9082,-0.000205994],[[-0.917939,-0.396698,-0.00423066],[0,-0.0106641,0.999943]],[true,true]],
     ["Land_CncBarrierMedium_F",[-9.51367,-3.53125,-0.000242233],[[-0.783995,-0.620731,-0.0066199],[0,-0.0106641,0.999943]],[true,true]],
     ["Land_CncBarrierMedium_F",[-3.89258,-8.33398,-0.000203133],[[0.78374,0.62079,-0.0192534],[0.0266571,-0.0026511,0.999641]],[true,true]],
     ["Land_CncBarrierMedium_F",[-2.44336,-8.47852,0.000462532],[[-0.620567,0.783932,0.0186275],[0.0266571,-0.0026511,0.999641]],[true,true]],
     ["Land_CncBarrierMedium_F",[-5.25195,-7.01367,-0.000119209],[[0.596434,0.802544,-0.0137765],[0.0266571,-0.0026511,0.999641]],[true,true]],
     ["Land_BagBunker_Small_F",[-8.05469,-6.17578,-0.00487614],[[0.59672,0.802404,0.00855738],[0,-0.0106641,0.999943]],[true,true]],
     ["Land_CncBarrier_F",[-6.43164,-12.375,-0.000164032],[[-0.124888,0.991558,0.0348626],[-0.00666818,-0.0359758,0.99933]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-32.7324,23.7676,-0.000180244],[[-0.815109,0.579308,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-24.7031,13.9219,-0.000178337],[[-0.815109,0.579308,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-26.8242,20.6426,-0.000180244],[[0.579308,0.815109,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-29.4805,7.20117,-0.000202179],[[-0.595977,-0.802983,0.00534737],[0,0.00665923,0.999978]],[true,true]],
     ["Land_CncBarrier_F",[-32.4297,9.27734,-6.00815e-005],[[-0.59913,-0.800581,-0.010654],[-0.0106641,-0.0053262,0.999929]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-30.0605,13.2813,-0.000180244],[[0.579308,0.815109,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-33.791,16.248,8.29697e-005],[[-0.771025,-0.635943,-0.0331203],[-0.00665923,-0.0439554,0.999011]],[true,true]],
     ["Land_CncBarrierMedium_F",[-34.7969,17.8496,0.000230789],[[-0.90954,-0.414903,-0.0243181],[-0.00665923,-0.0439554,0.999011]],[true,true]],
     ["Land_CncBarrier_F",[-35.6484,11.8945,-5.05447e-005],[[-0.596204,-0.802763,-0.0106344],[-0.0106641,-0.0053262,0.999929]],[true,true]],
     //["IG_supplyCrate_F",[-3.93555,-1.1875,0.000800133],[[-0.913232,0.407156,0.0152001],[0,-0.0373063,0.999304]],[true,true]],
     //["IG_supplyCrate_F",[-29.873,23.8203,-0.000361443],[[-0.913023,0.407797,0.0095394],[-0.00265204,-0.0293201,0.999567]],[true,true]],
     ["RoadCone_F",[-21.9082,19.7852,-0.000157356],[[-0.913305,0.407269,-0.00242213],[-0.00265204,0,0.999996]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["CUP_I_4WD_LMG_ION",[9.24219,5.36133,0.0008564],0]
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
     ["B_HMG_01_high_F", [-26.0664,21.6953,5.52688], [[-0.913325,0.407232,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-7.97656,-6.11719,-0.00037384], [[-0.9133,0.407265,0.00434335],[0,-0.0106641,0.999943]], "Blue"]
];

_missionGroups = [
     [[-17.7051,5.21484,0.00125885],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[-3.93555,-1.1875,0.000800133],_crateLoot,_lootCounts,[[-0.913232,0.407156,0.0152001],[0,-0.0373063,0.999304]]],
     ["IG_supplyCrate_F",[-29.873,23.8203,-0.000361443],_crateLoot,_lootCounts,[[-0.913023,0.407797,0.0095394],[-0.00265204,-0.0293201,0.999567]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";