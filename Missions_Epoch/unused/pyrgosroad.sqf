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
_defaultMissionLocations = [[17427,14026.2,0.00145674]];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A roadblock has been scouted near Pyrgos. Morons!(GREEN)";
_endMsg = "The road block near Pyrgos has been cleared. GET OFF THE ROAD ASSHOLES!";
_timeoutMsg = "Mercenary forces have abandoned the roadblock near Pyrgos. (FAILED)";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Roadblock";
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
     ["Land_CncBarrierMedium4_F",[-0.00195313,0.0527344,-0.00114584],[[-0.415665,-0.909518,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[3.0625,-7.30469,-0.00151491],[[-0.349092,0.936335,-0.0375822],[-0.0146643,0.0346418,0.999292]],[true,true]],
     ["Land_CamoNetVar_NATO",[-3.41211,-6.59375,-0.00633001],[[0.986082,-0.165966,0.00988127],[-0.0080009,0.0119946,0.999896]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-8.49219,-2.19531,-0.00145626],[[-0.986109,0.1661,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-7.54883,-14.0332,-0.00144339],[[-0.190377,-0.98171,0.00133405],[-0.00666818,0.00265198,0.999974]],[true,true]],
     ["Land_CncBarrier_F",[-3.99609,-14.6162,-0.00148296],[[-0.186595,-0.982334,0.0142253],[-0.00799344,0.0159972,0.99984]],[true,true]],
     ["Land_CncBarrier_F",[2.97852,-10.082,-0.00126314],[[-0.898994,0.437731,-0.0141908],[-0.00799344,0.0159972,0.99984]],[true,true]],
     ["Land_CncBarrierMedium_F",[-8.44531,-6.40625,-0.00113773],[[-0.636855,-0.770866,0.0134943],[0.00666818,0.0119948,0.999906]],[true,true]],
     ["Land_CncBarrierMedium_F",[-6.84375,-7.41113,-0.00112867],[[-0.415615,-0.909438,0.0136812],[0.00666818,0.0119948,0.999906]],[true,true]],
     ["Land_CncBarrierMedium_F",[0.347656,-9.12988,-0.00150633],[[0.415709,0.909428,-0.0112271],[-0.00799344,0.0159972,0.99984]],[true,true]],
     ["Land_CncBarrierMedium_F",[1.70313,-8.59668,-0.00157547],[[-0.909489,0.415546,-0.0122623],[-0.0080009,0.0119946,0.999896]],[true,true]],
     ["Land_CncBarrierMedium_F",[-1.46289,-8.57227,-0.00155258],[[0.166159,0.986043,-0.0104989],[-0.0080009,0.0119946,0.999896]],[true,true]],
     ["Land_BagBunker_Small_F",[-4.33984,-9.10156,0.00672436],[[0.166111,0.986001,-0.0144477],[-0.00799344,0.0159972,0.99984]],[true,true]],
     ["Land_CncBarrier_F",[-0.0742188,-13.8838,-0.00120544],[[-0.562754,0.826434,-0.0177218],[-0.00799344,0.0159972,0.99984]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-39.9414,6.33301,-0.00145626],[[-0.989443,0.14492,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-28.3105,1.21777,-0.00145435],[[-0.989443,0.14492,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Tower_F",[-33.2578,6.23926,-0.00145626],[[0.14492,0.989443,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[-29.5078,-6.93945,-0.00146961],[[-0.165245,-0.986245,0.00374229],[0.0146643,0.00133707,0.999892]],[true,true]],
     ["Land_CncBarrier_F",[-33.0781,-6.43359,-0.001472],[[-0.169162,-0.985581,0.00379885],[0.0146643,0.00133707,0.999892]],[true,true]],
     ["Land_CncBarrierMedium4_F",[-32.791,-1.78809,-0.00145674],[[0.14492,0.989443,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[-37.4609,-0.845703,0.000220776],[[-0.396309,-0.917567,0.0317869],[0.0492736,0.0133155,0.998697]],[true,true]],
     ["Land_CncBarrierMedium_F",[-39.0859,0.123047,0.000376701],[[-0.62005,-0.783488,0.0410381],[0.0492736,0.0133155,0.998697]],[true,true]],
     ["Land_CncBarrier_F",[-37.1348,-5.56738,-0.00114489],[[-0.165363,-0.986187,0.00947669],[0.0492736,0.00133559,0.998784]],[true,true]],
     ["IG_supplyCrate_F",[-2.94727,-2.78516,-0.00133801],[[-0.998576,-0.052843,-0.00735643],[-0.0080009,0.0119946,0.999896]],[true,true]],
     ["IG_supplyCrate_F",[-37.416,7.66699,0.000274181],[[-0.997876,-0.0512306,0.0402438],[0.038638,0.0319591,0.998742]],[true,true]],
     ["RoadCone_F",[-28.4902,7.71289,-0.000978947],[[-0.997689,-0.051278,0.0445824],[0.0426276,0.0386029,0.998345]],[true,true]]
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
     ["B_HMG_01_high_F", [-33.0625,7.51953,5.58315], [[-0.998594,-0.0530009,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [-4.30078,-9,-0.00129318], [[-0.998562,-0.053131,-0.00713315],[-0.00799344,0.0159972,0.99984]], "Blue"]
];

_missionGroups = [
     [[-18.0938,-3.34473,5.00679e-005],2,4,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["IG_supplyCrate_F",[-2.94727,-2.78516,-0.00133801],_crateLoot,_lootCounts,[[-0.998576,-0.052843,-0.00735643],[-0.0080009,0.0119946,0.999896]]],
     ["IG_supplyCrate_F",[-37.416,7.66699,0.000274181],_crateLoot,_lootCounts,[[-0.997876,-0.0512306,0.0402438],[0.038638,0.0319591,0.998742]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";