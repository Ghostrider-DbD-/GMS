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
_startMsg = "Enemy HQ Scouted and marked on map (RED/HARD)";
_endMsg = "Enemy HQ has been taken over and looted!";
_timeoutMsg = "Enemy HQ has moved locations!";
_showMarker = true;
_markerType = ["ELLIPSE",[500,500],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Merc HQ";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 3;
_maxNoAI = 5;
_noAIGroups = 4;
_noVehiclePatrols = 2;
_noEmplacedWeapons = 3;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolGreen;
_noChoppers = 2;
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
     ["RoadCone_L_F",[0,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-34.2603,-55.1421,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-24.2275,-55.1479,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-14.2275,-55.1343,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-4.19482,-55.1401,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[5.80615,-55.1367,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[15.8389,-55.1426,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[25.8389,-55.1289,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[35.8716,-55.1348,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_pole_F",[40.9214,-55.4712,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[42.9526,-53.5713,0],[[0.77672,-0.629845,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[44.5083,-48.7173,0],[[1,0.000468806,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-51.9272,-49.042,0],[[0.999979,0.00640598,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-50.5313,-53.2456,0.0534611],[[0.769371,0.638802,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-52.0679,-31.4648,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-52.0518,-41.502,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-42.1636,-11.3281,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-42.1494,-21.3608,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-49.2813,-4.30176,0],[[0.637442,0.770499,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-45.0933,-5.96191,0],[[0.00463917,0.999989,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-53.1348,-1.11572,0],[[0.637442,0.770499,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-56.9863,2.07031,0],[[0.637442,0.770499,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.7104,5.8916,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.7051,10.8916,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6982,15.8896,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6958,20.8867,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6904,25.8867,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6836,30.8848,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6768,35.8848,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-58.6699,40.8828,0],[[0.999999,-0.00138955,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-56.8003,44.5957,0],[[0.641366,-0.767235,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-52.9653,47.8037,0],[[0.641366,-0.767235,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-49.1304,51.0098,0],[[0.641366,-0.767235,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-44.96,52.4375,0],[[-0.0142041,-0.999899,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-42.2676,67.9282,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-42.2534,57.8955,0],[[0.999998,0.00195082,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-40.4819,74.335,0],[[0.691296,-0.722571,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[-36.4155,75.9175,0],[[0.00545562,-0.999985,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[21.1597,75.8984,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[11.127,75.917,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[1.12695,75.916,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-8.90576,75.9346,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-18.9067,75.9443,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-28.9395,75.9629,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[31.1602,75.8857,0],[[-0.00126752,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[38.6563,75.8257,0],[[-0.00563747,-0.999984,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[42.6084,74.124,0.0300293],[[-0.698517,-0.715593,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[44.1719,70.1533,0],[[-0.999983,0.00581739,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[44.1602,65.1475,0],[[-1,-0.000607479,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[44.1353,47.6416,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[44.1792,57.6738,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[44.0527,27.6123,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[44.0967,37.6445,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[43.981,20.0928,0],[[-0.999983,0.00581739,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[43.9692,15.0869,0],[[-1,-0.000607479,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[43.9443,-2.41895,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[43.9883,7.61328,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_HelipadSquare_F",[-31.5293,-39.5186,9.53674e-007],[[-1,0.000869763,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[43.9058,-12.416,0],[[-0.999993,0.00384808,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-44.2593,-55.1436,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[-47.4312,-26.6973,-9.53674e-007],[[-0.000182001,-1,0],[0,0,1]],[false,true]],
     ["Land_BarGate_F",[44.1885,-40.7295,0],[[-0.999998,0.00209142,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-30.8711,-50.2676,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-25.0898,-50.3076,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_GuardTower_02_F",[40.2808,-51.5078,-4.76837e-007],[[0.779005,-0.627018,0],[0,0,1]],[false,true]],
     ["Land_GuardTower_02_F",[-48.251,-51.896,-4.76837e-007],[[-0.782919,-0.622124,0],[0,0,1]],[false,true]],
     ["Land_GuardTower_02_F",[-38.688,72.2422,-4.76837e-007],[[-0.699997,0.714146,0],[0,0,1]],[false,true]],
     ["Land_GuardTower_02_F",[40.6411,72.3457,-4.76837e-007],[[0.69279,0.721139,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-36.6655,-50.2764,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-31.0176,-28.6777,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_BarGate_F",[44.2754,-28.5898,0],[[1,0.000850634,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_5m_F",[43.874,-19.9434,0],[[-0.999955,-0.00944218,0],[0,0,1]],[false,true]],
     ["Land_GuardBox_01_brown_F",[41.8008,-34.6357,0.0506186],[[-1,-0.00034045,0],[0,0,1]],[false,true]],
     ["Land_Pipe_fence_4m_F",[37.689,-34.873,0.0771804],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_Pipe_fence_4m_F",[33.5352,-34.8726,0.0617995],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_Pipe_fence_4m_F",[29.3872,-34.8765,0.0474257],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_Pipe_fence_4m_F",[25.2334,-34.876,0.0254045],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-25.2363,-28.7178,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-36.812,-28.6865,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_3_F",[-20.4663,-50.291,9.53674e-007],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_3_F",[-20.6001,-28.7612,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_3_F",[-41.4976,-28.7192,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_3_F",[-41.3403,-50.1904,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-44.0439,-30.8125,9.53674e-007],[[0.999997,0.00261064,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-43.9282,-48.1602,0],[[0.99994,0.0109536,0],[0,0,1]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[37.9341,-34.3955,0.17673],[[-0.00818677,-0.999967,9.20759e-005],[0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[37.9082,-35.3145,0.176853],[[-0.00635896,0.99998,-7.15186e-005],[-0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[34.0601,-35.3379,0.176853],[[-0.00635896,0.99998,-7.15186e-005],[-0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[34.0366,-34.3564,0.17673],[[-0.00818677,-0.999967,9.20759e-005],[0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[30.1309,-35.3662,0.176853],[[-0.00635896,0.99998,-7.15186e-005],[-0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[30.1299,-34.3242,0.17673],[[-0.00818677,-0.999967,9.20759e-005],[0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[26.1152,-35.4092,0.176853],[[-0.00635896,0.99998,-7.15186e-005],[-0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[26.146,-34.2842,0.17673],[[-0.00818677,-0.999967,9.20759e-005],[0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[22.2573,-34.2666,0.176829],[[0.00332587,-0.999994,-3.74058e-005],[0.0112462,0,0.999937]],[false,true]],
     ["Land_ConcretePavement_01_narrow_F",[22.2261,-35.3921,0.176767],[[0.00358036,0.999994,4.0268e-005],[-0.0112462,0,0.999937]],[false,true]],
     ["Land_HBarrier_5_F",[-17.8574,-48.2363,0],[[0.99994,0.0109536,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-17.9731,-30.8887,9.53674e-007],[[0.999997,0.00261064,0],[0,0,1]],[false,true]],
     ["B_Slingload_01_Repair_F",[-22.4092,-52.4614,0],[[-0.999811,-0.0194308,0],[0,0,1]],[false,true]],
     ["B_Slingload_01_Fuel_F",[-28.7944,-52.5,0],[[0.999999,-0.00114278,0],[0,0,1]],[false,true]],
     ["B_Slingload_01_Cargo_F",[-35.2212,-52.4985,0],[[-1,-0.000665653,0],[0,0,1]],[false,true]],
     ["Land_Cargo_Tower_V1_F",[-31.041,23.8984,0],[[0.00761161,0.999971,0],[0,0,1]],[false,true]],
     ["Land_MilOffices_V1_F",[25.9502,-2.63477,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_Cargo_HQ_V1_F",[-34.9629,-13.0869,-1.43051e-006],[[0.999999,0.00170131,0],[0,0,1]],[false,true]],
     ["Land_SignM_WarningMilitaryArea_english_F",[-6.64746,-55.9775,0],[[0.0149949,0.999888,0],[0,0,1]],[false,true]],
     ["Land_SignM_WarningMilAreaSmall_english_F",[45.0791,-21.4688,0],[[-0.998847,0.0479991,0],[0,0,1]],[false,true]],
     ["Land_SignM_WarningMilAreaSmall_english_F",[-52.9282,-39.0869,0],[[0.999878,0.0156052,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-44.9146,-0.591309,0],[[-0.0110527,-0.999939,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-51.4961,3.90039,0],[[-0.652037,-0.758187,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-54.0605,11.0469,0],[[-0.999974,-0.00724165,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-54.1343,18.7578,0],[[-0.999974,-0.00724165,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-54.1436,26.8418,0],[[-0.999974,-0.00724165,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-54.1646,34.853,0],[[-0.999974,-0.00724165,0],[0,0,1]],[false,true]],
     ["Land_SignM_WarningMilitaryArea_english_F",[-0.123535,76.751,0],[[0.0113131,-0.999936,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-44.8701,47.2236,0],[[-0.00329238,0.999995,0],[0,0,1]],[false,true]],
     ["Land_Cargo_House_V1_F",[-51.7813,42.3164,0],[[-0.639321,0.76894,0],[0,0,1]],[false,true]],
     ["Land_i_Barracks_V1_F",[20.5625,67.6499,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_i_Barracks_V1_F",[-20.0894,67.6445,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_SignM_WarningMilAreaSmall_english_F",[44.9346,61.6147,0],[[-0.998847,0.0479991,0],[0,0,1]],[false,true]],
     ["Land_SignWarning_01_CheckpointAhead_F",[44.6475,-34.0034,0],[[-0.999767,0.0215714,0],[0,0,1]],[false,true]],
     ["Land_Shed_Small_F",[39.9209,48.2881,0],[[-0.00353583,-0.999994,0],[0,0,1]],[false,true]],
     ["Land_Shed_Small_F",[39.8335,23.9185,0],[[-0.00353583,-0.999994,0],[0,0,1]],[false,true]],
     ["Land_SignWarning_01_CheckpointAhead_F",[22.9644,-34.8789,0.323124],[[0.999957,-0.00482168,-0.00786312],[0.00916087,0.419805,0.907568]],[false,true]],
     ["Land_Graffiti_03_F",[43.814,-34.5127,0.648101],[[-0.999989,-0.00475928,0],[0,0,1]],[false,true]],
     ["FlagPole_F",[39.9873,-34.4707,0.0844936],[[0,1,0],[0,0,1]],[false,true]],
     ["CargoNet_01_barrels_F",[-19.6475,-30.4551,0],[[0,1,0],[0,0,1]],[false,true]],
     ["CargoNet_01_barrels_F",[-19.6992,-31.9961,-4.76837e-007],[[0,1,0],[0,0,1]],[false,true]],
     ["CargoNet_01_barrels_F",[-21.2607,-30.4736,0],[[0,1,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.9692,-20.7012,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.9253,-14.9307,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.8774,-9.15723,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.8335,-3.38672,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.7041,4.23242,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.6602,10.0029,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.6123,15.7764,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.5684,21.5469,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-22.6416,30.1245,0],[[0.999986,-0.005309,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-24.0825,35.7603,0],[[0.858255,0.513224,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-27.1602,40.7451,0],[[0.849074,0.528274,0],[0,0,1]],[false,true]],
     ["Land_HBarrier_5_F",[-30.3691,45.5283,0],[[0.826048,0.5636,0],[0,0,1]],[false,true]],
     ["Land_Cargo_Tower_V1_F",[12.3291,-45.8042,0],[[0.00761161,0.999971,0],[0,0,1]],[false,true]]
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
     ["B_HMG_01_high_F", [9.15967,-49.5391,17.8895], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-35.082,-11.7363,3.1265], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-34.0068,20.624,17.8895], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [40.7012,56.9478,0], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [18.1519,-5.73633,0.503], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [39.4932,-0.780273,0.502999], [[0,1,0],[0,0,1]], "Orange"],
     ["B_HMG_01_high_F", [-41.0088,-47.1294,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [40.4487,66.5405,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [15.9668,-45.3076,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [-34.478,-17.5449,3.12651], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [-27.4541,24.5537,17.8895], [[0,1,0],[0,0,1]], "Orange"],
     ["B_GMG_01_high_F", [39.873,16.1636,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_GMG_01_high_F", [6.05566,-6.1333,0], [[0,1,0],[0,0,1]], "Orange"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],1,2,"Green"],
     [[-13.558,24.0972,3.12796],1,2,"Orange"],
     [[3.74072,13.2544,0.00143909],1,2,"Green"],
     [[22.109,-4.81934,0.00143909],1,2,"Orange"],
     [[-12.3046,24.1689,0.603113],1,2,"Green"],
     [[-6.83374,21.272,0.00143909],1,2,"Orange"]
     //[[4.87683,-6.9248,0.00143909],1,3,"Green"],
     //[[-1.02954,26.0737,0.00143909],1,2,"Green"]
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