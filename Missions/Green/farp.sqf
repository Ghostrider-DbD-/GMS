/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.6 : Build 27 : Build Date 10/24/23
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
_startMsg = "Enemy FARP has been scouted and marked on the map (RED/HARD)";
_endMsg = "FARP HQ has been cleared of threat";
_timeoutMsg = "Enemy FARP has relocated their resrouces";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Hostile (FARP)";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 4;
_maxNoAI = 5;
_noAIGroups = 3;
_noVehiclePatrols = 0;
_noEmplacedWeapons = 0;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 1;
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
     ["RoadCone_F",[0.000244141,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.7354,40.8926,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.6455,32.646,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.5908,24.2681,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.397,15.9268,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.4575,7.64551,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.2227,-0.666016,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.2852,-9.01563,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.1284,-17.3184,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-55.2051,30.6279,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-55.269,8.60645,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-55.2373,-11.3818,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.2705,-25.6504,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.333,-34,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-65.1763,-42.3027,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-55.5171,-31.9414,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.2886,-37.2852,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.4502,-27.9966,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-44.3965,-32.6738,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.481,-16.1499,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.6426,-6.86133,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-44.5889,-11.5381,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.5698,3.80908,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.7314,13.0977,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-44.6777,8.4209,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-44.8599,25.7476,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-45.0215,35.0361,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-44.9678,30.3594,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-33.8325,30.4927,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-33.8965,8.47119,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-33.8647,-11.5171,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HelipadSquare_F",[-34.1445,-32.0767,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-56.6333,-50.6294,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-48.2837,-50.6919,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-39.981,-50.5352,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[-64.0825,-48.3823,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-31.6577,-50.2373,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-23.3081,-50.2998,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-15.0054,-50.1436,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-6.875,-49.8335,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[1.47461,-49.896,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[9.77734,-49.7393,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.5586,-37.0332,4.76837e-007],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.5747,-28.25,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.5474,-19.689,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.7153,-11.1074,4.76837e-007],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.7314,-2.32471,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.7041,6.23633,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.3916,14.895,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.4082,23.6777,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-20.3804,32.2393,0],[[0.999772,-0.021375,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.3579,-32.4985,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.3828,-20.9189,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-15.0532,-40.3447,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-6.44775,-40.3774,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-15.083,35.3701,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[-6.63867,35.4028,0],[[-0.0213751,-0.999772,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.3691,-9.64404,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.1558,6.0752,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.2437,16.896,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[-12.3506,27.7954,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-7.50293,-1.7041,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[-16.791,-1.86572,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[-12.1143,-1.81201,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.0601,32.1377,4.76837e-007],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.0762,23.355,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.0488,14.7939,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.2168,6.21191,4.76837e-007],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.2329,-2.5708,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[24.2056,-11.1318,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[23.8931,-19.7905,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[23.9097,-28.5732,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[23.8818,-37.1348,0],[[-0.999772,0.021375,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_NATO_generic_inner_F",[15.8594,27.603,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[18.5547,35.4492,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[9.94922,35.4824,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[18.5845,-40.2656,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[10.1401,-40.2979,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[11.2847,-1.59619,0],[[2.38419e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[20.5728,-1.43457,0],[[2.38419e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[15.896,-1.48828,0],[[2.38419e-007,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_HQ_V3_F",[13.4883,-32.1816,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V3_F",[17.8867,-20.7485,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V3_F",[17.8818,-13.8442,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_Cargo_House_V3_F",[17.9072,-7.1167,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_MTP_closed_F",[15.8706,4.74854,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_MedicalTent_01_MTP_closed_F",[15.8848,16.0234,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Communication_F",[24.5142,-40.1328,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampAirport_F",[9.30811,-1.82813,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_LampAirport_F",[-5.0083,-1.91211,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-20.0259,35.4023,4.76837e-007],[[-0.707107,0.707107,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-20.6401,-40.4258,4.76837e-007],[[0.707107,0.707106,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-66.6265,-45.8584,4.76837e-007],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-67.4272,44.3462,4.76837e-007],[[-5.6426e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[-64.7954,46.5,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-40.7783,49.2319,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-49.0249,49.1421,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-57.4028,49.0874,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-15.811,49.6729,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-24.0576,49.583,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-32.4355,49.5283,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[9.03418,50.1597,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[0.787598,50.0698,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[-7.59033,50.0151,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[33.9341,50.5352,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[25.6875,50.4453,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[17.3096,50.3906,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[58.9409,50.9072,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[50.6943,50.8174,0],[[1.31134e-007,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[17.9409,-49.5454,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[26.1875,-49.4556,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[34.5654,-49.4009,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[42.9326,-49.1782,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[51.1792,-49.0884,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[59.5571,-49.0337,0],[[-3.25841e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[64.4819,49.6182,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[67.0151,-46.9858,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[68.1216,-41.1133,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[68.0317,-32.8667,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.9771,-24.4888,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.7563,-16.124,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.6665,-7.87793,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.6118,0.5,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.2393,8.8125,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.1494,17.0596,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[67.0947,25.4375,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[66.8276,33.7207,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall6_F",[66.4785,42.0522,0],[[1,-4.01339e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall4_F",[35.9053,50.001,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierWall4_F",[48.7827,50.1875,0],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrierTower_F",[50.0415,42.8354,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_Cargo_Patrol_V3_F",[32.522,49.4727,4.76837e-007],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_BarGate_F",[42.0132,53.4556,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Small_F",[34.5962,56.772,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["Land_BagBunker_Small_F",[50.1987,56.9766,0],[[1.50996e-007,-1,0],[0,0,1]],[true,true]],
     ["BlockConcrete_F",[63.7495,2.2583,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BlockConcrete_F",[63.6504,-2.7749,0],[[0,1,0],[0,0,1]],[true,true]],
     ["CargoPlaftorm_01_brown_F",[28.2183,-38.3516,0],[[0,1,0],[0,0,1]],[true,true]],
     ["CargoPlaftorm_01_brown_F",[28.249,33.54,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.25391,-5.14209,0],[[1,-1.62921e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.22852,-10.7422,0],[[1,-1.62921e-007,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_5_F",[9.18408,-16.3643,0],[[1,-1.62921e-007,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.2388,-3.40918,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.2393,-4.94141,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.2397,-6.46826,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.3325,-10.2778,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.3647,-11.791,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[12.3477,-13.292,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[25.4399,-32.6299,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[26.9512,-32.6211,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_CncShelter_F",[28.4468,-32.6362,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[31.5254,-33.0347,0],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_Shed_Small_F",[29.104,-15.8965,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Shed_Small_F",[29.0874,8.31738,-9.53674e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[29.4492,21.4092,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_Big_F",[29.1152,-28.9185,0],[[0.021375,0.999772,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[69.8784,-44.6885,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[67.834,45.6216,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[47.1333,52.3672,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[37.4722,52.1943,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[69.3853,-15.4795,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[68.5864,12.4014,4.76837e-007],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-45.1226,50.5952,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[-43.9888,-52.2178,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[2.31934,-51.229,4.76837e-007],[[1,7.54979e-008,0],[0,0,1]],[true,true]],
     ["Land_LampHalogen_F",[1.6958,51.5093,4.76837e-007],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_HBarrier_3_F",[11.5928,-18.3223,0],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["B_T_MRAP_01_gmg_F",[7.00171,88.2192,-9.53674e-007],0],
     ["B_MRAP_01_hmg_F",[95.1123,0.809082,-4.76837e-007],0]
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
     ["B_HMG_01_high_F", [33.5256,50.1304,4.34404], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [50.1938,56.9551,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [50.0498,43.4736,2.28029], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [64.9646,49.5063,2.28029], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [67.0266,-47.5186,2.28029], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [28.0774,-38.6143,7.18081], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [12.3347,-32.5405,3.12651], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [17.9529,-31.0146,3.12652], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-64.0168,-48.9277,2.28029], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-64.8252,47.0518,2.28029], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [28.1711,33.7075,7.18081], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-43.8315,-22.5635,0], [[0,1,0],[0,0,1]], "Green"]
];

_missionGroups = [
     [[-52.4377,19.5396,0.00143909],1,3,"Green"],
     [[1.75952,18.8818,0.00143909],1,3,"Green"],
     [[43.9175,34.0654,0.00143909],1,3,"Green"],
     [[50.5549,-28.0244,0.00143909],1,3,"Green"]
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