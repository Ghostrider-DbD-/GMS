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
_defaultMissionLocations = [[15679.9,17486.5,0.000239372]];

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
     ["Land_CncBarrierMedium4_F",[-0.0273438,-0.0253906,-0.000239372],[[0.872912,-0.487877,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[7.55957,2.44531,-0.000177383],[[-0.962162,-0.272475,-0.00108089],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CamoNetVar_NATO",[6.33008,-3.95117,-0.00823212],[[0.245165,0.969404,0.0122743],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrierMedium4_F",[1.52441,-8.67188,-0.000239372],[[-0.245328,-0.96944,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[13.3994,-8.68555,-0.000133514],[[0.963157,-0.268847,-0.00707602],[0.00399666,-0.0119995,0.99992]],[true,true]],
     ["Land_CncBarrier_F",[14.2666,-5.1875,-0.000133514],[[0.964207,-0.265082,-0.00609151],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrier_F",[10.3203,2.13086,-0.000135422],[[-0.509003,-0.860705,-0.0101254],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrierMedium_F",[5.73145,-8.95703,-0.000357628],[[0.716963,-0.697036,-0.0102663],[0.00265199,-0.0119996,0.999924]],[true,true]],
     ["Land_CncBarrierMedium_F",[6.86621,-7.44141,-0.000320435],[[0.872957,-0.487729,-0.00816823],[0.00265199,-0.0119996,0.999924]],[true,true]],
     ["Land_CncBarrierMedium_F",[9.16797,-0.412109,5.62668e-005],[[-0.87299,0.487658,0.00881708],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrierMedium_F",[8.73828,0.988281,-0.000341415],[[-0.487689,-0.872956,-0.0103452],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrierMedium_F",[8.45898,-2.17383,-5.81741e-005],[[-0.969477,0.245112,0.00583924],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_BagBunker_Small_F",[8.75879,-5.08203,-0.00322914],[[-0.969476,0.245122,0.00551282],[0.00265199,-0.0119996,0.999924]],[true,true]],
     ["Land_CncBarrier_F",[13.8594,-1.21094,-0.000173569],[[-0.869209,-0.494427,-0.00428661],[0.00265199,-0.0133313,0.999908]],[true,true]],
     ["Land_CncBarrierMedium4_F",[1.63086,-33.4707,-0.000239372],[[-0.896614,0.442814,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-5.82227,-36.3242,-0.000205994],[[0.947054,0.321074,-0.000789967],[0.00399666,-0.00932846,0.999949]],[true,true]],
     ["Land_CamoNetVar_NATO",[-4.91895,-29.873,0.00553799],[[-0.195542,-0.980657,-0.00862989],[0.00265199,-0.0093285,0.999953]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-0.359375,-24.916,-0.000239372],[[0.195665,0.980671,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-12.2207,-25.5078,-0.000272751],[[-0.975612,0.219453,0.0046347],[0.00265199,-0.0093285,0.999953]],[true,true]],
     ["Land_CncBarrier_F",[-12.9082,-29.043,-0.000271797],[[-0.976463,0.215639,0.00431496],[0.00265199,-0.00800056,0.999964]],[true,true]],
     ["Land_CncBarrier_F",[-8.5957,-36.1504,-0.000246048],[[0.464536,0.885531,0.00640437],[0.00399666,-0.00932846,0.999949]],[true,true]],
     ["Land_CncBarrierMedium_F",[-4.57715,-24.8457,-3.24249e-005],[[-0.751503,0.659666,0.00915765],[0.00399666,-0.00932846,0.999949]],[true,true]],
     ["Land_CncBarrierMedium_F",[-5.63086,-26.416,-8.29697e-005],[[-0.896647,0.442698,0.00650792],[0.00265199,-0.0093285,0.999953]],[true,true]],
     ["Land_CncBarrierMedium_F",[-7.57324,-33.5527,-0.00026989],[[0.896675,-0.442633,-0.00712529],[0.00399666,-0.00800053,0.99996]],[true,true]],
     ["Land_CncBarrierMedium_F",[-7.07324,-34.9277,-7.53403e-005],[[0.442631,0.896679,0.00659593],[0.00399666,-0.00932846,0.999949]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.95703,-31.7617,-0.000277519],[[0.980693,-0.195506,-0.00442477],[0.00265199,-0.0093285,0.999953]],[true,true]],
     ["Land_BagBunker_Small_F",[-7.40234,-28.8691,0.00226593],[[0.980692,-0.195509,-0.0044248],[0.00265199,-0.0093285,0.999953]],[true,true]],
     ["Land_CncBarrier_F",[-12.2998,-32.9922,-0.000190735],[[0.842985,0.537936,0.000934677],[0.00399666,-0.00800053,0.99996]],[true,true]],
     ["RoadCone_F",[-11.293,-35.2461,-0.000203133],[[0,0.999968,0.00800059],[0.00532655,-0.00800048,0.999954]],[true,true]],
     //["I_CargoNet_01_ammo_F",[-2.31934,-32.3398,-0.000157356],[[0,0.999956,0.00933759],[0.00399714,-0.00933752,0.999948]],[true,true]],
     //["I_CargoNet_01_ammo_F",[3.07715,-3.73438,-6.29425e-005],[[0,0.999911,0.0133342],[0.00265294,-0.0133341,0.999908]],[true,true]],
     ["Land_RoadBarrier_01_F",[-5.42773,-11.377,-0.000240326],[[-0.961843,0.273603,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[5.96387,-22.3438,-0.000240326],[[0.956138,-0.292916,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-7.40527,-28.8789,-8.58307e-005], [[0,0.999956,0.00932853],[0.00265199,-0.0093285,0.999953]], "Blue"],
     ["B_HMG_01_high_F", [8.75195,-5.10156,4.76837e-006], [[0,0.999928,0.0119996],[0.00265199,-0.0119996,0.999924]], "Blue"]
];

_missionGroups = [
     [[-9.59082,-19.4199,0.000736237],1,3,"Blue"],
     [[8.57031,-14.7285,0.000549316],1,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     //["I_CargoNet_01_ammo_F",[-2.31934,-32.3398,-0.000157356],_crateLoot,_lootCounts,[[0,0.999956,0.00933759],[0.00399714,-0.00933752,0.999948]]],
     ["I_CargoNet_01_ammo_F",[3.07715,-3.73438,-6.29425e-005],_crateLoot,_lootCounts,[[0,0.999911,0.0133342],[0.00265294,-0.0133341,0.999908]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";