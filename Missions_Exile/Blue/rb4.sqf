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
_defaultMissionLocations = [[13632.6,16096.8,4.00543e-005]];

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
     ["Land_CncBarrierMedium4_F",[-0.03125,0.00195313,-4.00543e-005],[[0.998411,0.0563502,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[5.04688,6.15625,-0.000192642],[[-0.665719,-0.745976,-0.0183954],[-0.0186628,-0.0079995,0.999794]],[true,true]],
     ["Land_CamoNetVar_NATO",[7.43945,0.0986328,0.00167465],[[-0.313031,0.949743,-0.000377717],[-0.0133317,-0.00399639,0.999903]],[true,true]],
     ["Land_CncBarrierMedium4_F",[5.91504,-6.46387,-4.00543e-005],[[0.312838,-0.949807,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[15.9453,-0.106445,-7.43866e-005],[[0.956746,0.290872,0.00548514],[-0.0053265,-0.00133719,0.999985]],[true,true]],
     ["Land_CncBarrier_F",[14.8018,3.31055,-7.43866e-005],[[0.955115,0.296183,0.00548356],[-0.0053265,-0.00133719,0.999985]],[true,true]],
     ["Land_CncBarrier_F",[7.54492,7.37109,0.000137329],[[0.0321979,-0.999454,-0.00739576],[-0.0186628,-0.0079995,0.999794]],[true,true]],
     ["Land_CncBarrierMedium_F",[9.61914,-4.44824,0.000263214],[[0.978917,-0.203939,0.0114219],[-0.0133317,-0.00799273,0.999879]],[true,true]],
     ["Land_CncBarrierMedium_F",[9.76367,-2.56055,0.000305176],[[0.998309,0.0564794,0.0137622],[-0.0133317,-0.00799273,0.999879]],[true,true]],
     ["Land_CncBarrierMedium_F",[7.9375,4.6084,-0.000141144],[[-0.998212,-0.0566163,-0.019162],[-0.0186628,-0.00933326,0.999782]],[true,true]],
     ["Land_CncBarrierMedium_F",[6.82422,5.55859,-3.8147e-006],[[0.0566494,-0.99836,-0.00826252],[-0.0186628,-0.00933326,0.999782]],[true,true]],
     ["Land_CncBarrierMedium_F",[8.28223,2.73926,-0.00022316],[[-0.949531,-0.312994,-0.0206466],[-0.0186628,-0.00933326,0.999782]],[true,true]],
     ["Land_BagBunker_Small_F",[10.0967,0.446289,0.00874329],[[-0.949628,-0.312992,-0.0155817],[-0.0133317,-0.00932767,0.999868]],[true,true]],
     ["Land_CncBarrier_F",[12.3252,6.44922,0.000127792],[[-0.465858,-0.884744,-0.0142778],[-0.0053265,-0.0133315,0.999897]],[true,true]],
     ["Land_CncBarrierMedium4_F",[19.3037,-27.3369,-4.00543e-005],[[-0.994249,-0.107096,0],[0,0,1]],[true,true]],
     ["Land_CncBarrierMedium_F",[14.5439,-33.7422,0.00152779],[[0.626784,0.778978,-0.0183123],[-0.038638,0.0545446,0.997764]],[true,true]],
     ["Land_CamoNetVar_NATO",[11.8467,-27.8135,-0.0217896],[[0.360592,-0.932154,0.032591],[-0.0386396,0.0199827,0.999053]],[true,true]],
     ["Land_CncBarrierMedium4_F",[13.0371,-21.1855,-4.00543e-005],[[-0.360777,0.932652,0],[0,0,1]],[true,true]],
     ["Land_CncBarrier_F",[3.3418,-28.0459,0.000303268],[[-0.940937,-0.338004,-0.0197824],[-0.0253251,0.0119961,0.999607]],[true,true]],
     ["Land_CncBarrier_F",[4.65918,-31.3984,0.000303268],[[-0.939586,-0.341744,-0.0197033],[-0.0253251,0.0119961,0.999607]],[true,true]],
     ["Land_CncBarrier_F",[12.1094,-35.084,0.00107956],[[-0.0826799,0.995483,-0.046668],[-0.0506016,0.0425744,0.997811]],[true,true]],
     ["Land_CncBarrierMedium_F",[9.43945,-23.3857,-0.00021553],[[-0.987917,0.153909,-0.0182347],[-0.0186628,-0.00133698,0.999825]],[true,true]],
     ["Land_CncBarrierMedium_F",[9.3916,-25.2783,-1.14441e-005],[[-0.99409,-0.107502,-0.015085],[-0.0173316,0.0199947,0.99965]],[true,true]],
     ["Land_CncBarrierMedium_F",[11.5791,-32.3428,0.00248718],[[0.993494,0.109142,0.0325062],[-0.038638,0.0545446,0.997764]],[true,true]],
     ["Land_CncBarrierMedium_F",[12.7383,-33.2354,0.00082016],[[-0.107253,0.992514,-0.058411],[-0.038638,0.0545446,0.997764]],[true,true]],
     ["Land_CncBarrierMedium_F",[11.1387,-30.5,0.00127029],[[0.931907,0.361552,0.0288109],[-0.0386396,0.0199827,0.999053]],[true,true]],
     ["Land_BagBunker_Small_F",[9.21191,-28.2979,-0.004673],[[0.932468,0.361142,0.00894338],[-0.0173316,0.0199947,0.99965]],[true,true]],
     ["Land_CncBarrier_F",[7.29004,-34.4043,0.000591278],[[0.422907,0.905743,-0.0279214],[-0.0253251,0.042614,0.998771]],[true,true]],
     ["RoadCone_F",[9.34766,-35.7676,0.000301361],[[-0.536106,0.842695,-0.0495485],[-0.0253251,0.042614,0.998771]],[true,true]],
     ["I_CargoNet_01_ammo_F",[15.3457,-28.4902,0.000770569],[[-0.536113,0.843055,-0.0429189],[-0.0213272,0.0372994,0.999077]],[true,true]],
     ["I_CargoNet_01_ammo_F",[4.5752,-1.45313,0.000101089],[[-0.536258,0.844046,-0.00377644],[-0.0133317,-0.00399639,0.999903]],[true,true]],
     ["Land_RoadBarrier_01_F",[1.49902,-12.4756,-3.8147e-005],[[-0.958558,-0.284897,0],[0,0,1]],[true,true]],
     ["Land_RoadBarrier_01_F",[16.9941,-15.6221,-3.8147e-005],[[0.9641,0.265538,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [9.19824,-28.2842,2.00543], [[-0.536207,0.84368,-0.0261753],[-0.0173385,0.0199947,0.99965]], "Blue"],
     ["B_HMG_01_high_F", [10.1025,0.432617,2.00508], [[-0.536362,0.843988,0.000721946],[-0.0133317,-0.00932767,0.999868]], "Blue"]
];

_missionGroups = [
     [[2.32422,-21.4883,0.00141144],1,3,"Blue"],
     [[15.1367,-7.79004,0.000988007],1,3,"Blue"]
];

_missionGarrisonedGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[15.3457,-28.4902,0.000770569],_crateLoot,_lootCounts,[[-0.536113,0.843055,-0.0429189],[-0.0213272,0.0372994,0.999077]]],
     ["I_CargoNet_01_ammo_F",[4.5752,-1.45313,0.000101089],_crateLoot,_lootCounts,[[-0.536258,0.844046,-0.00377644],[-0.0133317,-0.00399639,0.999903]]]
];

/*
	Do not touch the code below 
*/
#include "\x\addons\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";