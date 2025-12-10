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
_difficulty = "Blue";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "A small survival camp has been scouted and marked on the map. (GREEN/EASY)";
_endMsg = "The small survival camp has been cleared of enemies!";
_timeoutMsg = "Enemy forces at the small survival camp have fled.";
_showMarker = true;
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Survival Camp";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 4;
_maxNoAI = 6;
_noAIGroups = 2;
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
     ["RoadCone_F",[0.000244141,0,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_House_Small_05_F",[-7.65625,10.8599,0.357178],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_House_Small_04_F",[12.1489,-4.29102,0.396926],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbageBin_02_F",[-0.265137,8.78223,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbageBin_02_F",[9.09717,-8.49268,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WaterTank_02_F",[2.08887,12.666,0],[[-1,-0.000819194,0],[0,0,1]],[true,true]],
     ["Land_Shed_05_F",[12.3975,12.4595,0.390149],[[-0.668788,0.743453,0],[0,0,1]],[true,true]],
     ["Land_Shed_06_F",[-7.68408,-8.38037,0],[[-0.019972,-0.999801,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.6265,-10.4067,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.6963,-10.3882,0.596926],[[0.0606507,-0.998159,0],[0,0,1]],[true,true]],
     ["Land_Bricks_V4_F",[7.30518,-13.5454,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Timbers_F",[-6.96167,-2.8457,0],[[0.999608,0.0280003,0],[0,0,1]],[true,true]],
     ["Land_WorkStand_F",[-1.11182,-8.24561,0],[[0.933474,0.358646,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.7842,8.17236,0],[[-0.73784,-0.674976,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.7729,8.15234,0.204089],[[-0.73784,-0.674976,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.6504,8.17188,0.408177],[[0.486406,-0.873733,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[10.5571,8.00684,0.612266],[[-0.73784,-0.674976,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[9.26123,9.47461,0],[[-0.888034,0.459777,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[9.23828,9.47754,0.204089],[[-0.888034,0.459777,0],[0,0,1]],[true,true]],
     ["Land_Pallet_F",[9.21411,9.59961,0.408177],[[-0.652368,-0.757902,0],[0,0,1]],[true,true]],
     ["Land_WheelCart_F",[7.73438,10.6646,0],[[0.958078,0.286509,0],[0,0,1]],[true,true]],
     ["Land_WheelCart_F",[8.24463,-9.95361,0],[[0.958078,0.286509,0],[0,0,1]],[true,true]],
     ["Land_StallWater_F",[3.46021,12.7021,0],[[-0.999988,0.00485038,0],[0,0,1]],[true,true]],
     ["Land_PowerPoleWooden_F",[11.8542,1.82959,-4.76837e-007],[[0.523869,-0.851799,0],[0,0,1]],[true,true]],
     ["Land_PowerPoleWooden_L_off_F",[-12.1892,-13.0298,4.76837e-007],[[0.470232,-0.882543,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_4m_grey_F",[16.6211,17.3623,0.667],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_pillar_grey_F",[14.6338,17.356,0.667],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_military_ruins_F",[-15.5278,-6.51025,0],[[-0.999972,-0.00743715,0],[0,0,1]],[true,true]],
     ["Land_TTowerSmall_1_F",[-12.7935,16.5728,4.76837e-007],[[0.705843,-0.708368,0],[0,0,1]],[true,true]],
     ["Land_WoodenBox_F",[-10.3047,9.00732,0.517831],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenBox_F",[-12.7236,4.60352,0],[[0.999994,-0.00350038,0],[0,0,1]],[true,true]],
     ["Land_WoodenBox_F",[-12.7112,4.56152,0.4346],[[0.999327,-0.0366717,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V2_F",[8.96265,-7.33154,0.596926],[[0.591511,-0.806297,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V2_F",[7.74658,-7.24609,0.596926],[[-0.493193,-0.86992,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_small_white_F",[9.04834,-2.21777,0.596926],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V2_F",[7.7168,-0.264648,0.596926],[[-0.424011,0.905657,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_F",[-10.4634,6.27344,0.517819],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V2_white_F",[-5.92651,6.63672,0.51783],[[0.853183,-0.521612,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[16.6621,14.2612,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[15.8047,15.8394,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_LuggageHeap_02_F",[8.90332,9.4541,0.612266],[[-0.480781,0.87684,0],[0,0,1]],[true,true]],
     ["Land_LuggageHeap_03_F",[8.51929,8.23584,0],[[-0.534631,-0.845085,0],[0,0,1]],[true,true]],
     ["Land_GarbageContainer_open_F",[16.231,10.6724,0],[[0.691252,-0.722614,0],[0,0,1]],[true,true]],
     ["Land_FieldToilet_F",[1.73779,-12.9937,0.227674],[[-0.0059536,-0.999982,0],[0,0,1]],[true,true]],
     ["Land_FieldToilet_F",[0.380859,-13.0151,0.227674],[[-0.0059536,-0.999982,0],[0,0,1]],[true,true]],
     ["Land_WoodPile_02_F",[-2.61157,-4.07813,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sink_F",[1.21362,9.78613,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Cages_F",[5.72949,16.4014,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenCart_F",[14.7871,-11.8428,0.596926],[[0.999928,0.0120385,0],[0,0,1]],[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-5.22119,-12.6636,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-6.93311,-12.7012,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenCrate_01_stack_x3_F",[-12.1392,-9.40137,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-12.1318,-7.75049,0],[[0.999978,-0.00658786,0],[0,0,1]],[true,true]],
     ["Land_Cargo10_light_blue_F",[19.9321,8.05176,0],[[-0.0102345,0.999948,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_grey_F",[20.0383,3.55518,2.78],[[0.997899,-0.0647876,0],[0,0,1]],[true,true]],
     ["Land_Pillow_F",[-8.73584,15.7324,0.0515118],[[0.494694,-0.869005,0.0104185],[-0.00534883,0.00894346,0.999946]],[true,true]],
     ["Land_Pillow_F",[-7.40063,14.563,0.202698],[[-0.074987,-0.997182,-0.002016],[-0.0176991,-0.000690426,0.999843]],[true,true]],
     ["Land_Sleeping_bag_brown_folded_F",[-6.23779,9.62842,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sleeping_bag_folded_F",[-6.18506,10.0098,0],[[-0.706214,0.707998,0],[0,0,1]],[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[-9.51172,8.98975,0.517832],[[0.811579,-0.584243,0],[0,0,1]],[true,true]],
     ["Land_TentSolar_01_folded_sand_F",[-9.89771,9.00977,0.517831],[[0.994287,-0.106737,0],[0,0,1]],[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[-10.2161,8.99951,0.517831],[[0.990341,0.138653,0],[0,0,1]],[true,true]],
     ["Land_BottlePlastic_V2_F",[-10.9177,9.15967,0.517832],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BottlePlastic_V2_F",[-10.8042,9.146,0.517832],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Camping_Light_off_F",[-11.1982,8.85547,0.517831],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[-11.1621,9.84277,0.517824],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[-11.1453,10.6475,0.517769],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FoodSacks_01_large_brown_F",[-9.81299,10.2393,0.517816],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[-9.3833,11.46,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[-9.625,11.4131,0],[[0.467302,0.884098,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[-9.7793,11.1401,0],[[-0.187258,0.982311,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[-9.54395,11.1353,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[-9.36182,11.1484,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_EmergencyBlanket_01_stack_F",[-8.729,9.73193,0.517826],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_EmergencyBlanket_01_stack_F",[-8.72705,10.2427,0.517631],[[-0.26653,0.963827,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-6.31641,11.9224,0.517126],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-6.3291,11.4116,0.677257],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-6.33252,11.6826,0.932472],[[-0.954141,0.299358,0],[0,0,1]],[true,true]],
     ["Land_Matches_F",[-10.8518,9.0542,0.517831],[[0.854942,-0.518724,0],[0,0,1]],[true,true]],
     ["Land_Matches_F",[-10.7285,9.06348,0.517831],[[0.859827,0.510585,0],[0,0,1]],[true,true]],
     ["Land_Bucket_F",[-9.59766,8.5,0.517829],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Shovel_F",[10.5632,7.52783,0.816355],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wrench_F",[9.85059,8.21045,0.816355],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wrench_F",[9.40674,-2.4375,0.596926],[[-0.363366,0.931647,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_pack_F",[8.69287,-2.34521,0.596926],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Can_V1_F",[8.6311,-2.15723,0.596926],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TinContainer_F",[9.3916,-1.98828,0.596926],[[-0.99433,0.106341,0],[0,0,1]],[true,true]],
     ["Land_Portable_generator_F",[1.12573,14.5991,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_SurvivalRadio_F",[-11.2422,6.0127,0.517818],[[0.682564,0.730826,0],[0,0,1]],[true,true]],
     ["WaterSpill_01_Medium_Old_F",[3.09033,12.8638,0],[[0,1,0],[0,0,1]],[true,true]],
     ["WaterSpill_01_Small_Old_F",[1.36084,9.81201,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[-16.073,-5.73096,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[-15.4238,-10.4082,0],[[0.465324,-0.88514,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[23.0327,2.25586,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[22.0596,8.70313,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[20.5952,9.89209,0],[[0.941549,0.336875,0],[0,0,1]],[true,true]],
     ["Land_Barricade_01_4m_F",[2.06665,-17.0439,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Car_F",[-18.0493,-8.50049,0],[[-0.650424,-0.759571,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Car3_F",[-21.3601,-6.81201,0],[[-0.803922,0.594735,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Car_F",[5.29639,21.8564,0],[[0.969488,0.245139,0],[0,0,1]],[true,true]],
     ["Land_Wreck_Truck_dropside_F",[6.19531,-19.2407,0],[[0.528403,-0.848994,0],[0,0,1]],[true,true]],
     ["Land_TrailerCistern_wreck_F",[-14.7473,11.2793,0],[[-0.999878,-0.0156482,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[-12.6055,-4.77979,0],[[0.932897,-0.360144,0],[0,0,1]],[true,true]],
     ["Land_Portable_generator_F",[-11.9319,4.37109,0],[[-0.0225054,-0.999747,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[17.0906,0.957031,0],[[0.537691,-0.843142,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[12.4058,16.1621,0],[[0.849872,0.52699,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[-5.11987,8.74805,0.317688],[[-0.508436,0.8611,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[-11.751,-12.2881,0],[[-0.753214,-0.657775,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_double_F",[-14.0415,8.65576,0],[[0.733376,0.679823,0],[0,0,1]],[true,true]],
     ["Land_Camping_Light_F",[-9.19531,15.5562,0.000311852],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Camping_Light_F",[-6.83765,11.7241,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_single_F",[15.9868,-8.98926,0.596926],[[0.811829,-0.583896,0],[0,0,1]],[true,true]],
     ["Land_PortableLight_single_F",[12.6531,-0.430664,0.596926],[[0.331209,0.943557,0],[0,0,1]],[true,true]],
     ["BloodPool_01_Large_Old_F",[15.2852,-7.5708,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodSplatter_01_Large_Old_F",[15.1262,-5.63818,0],[[0.911393,-0.411538,0],[0,0,1]],[true,true]],
     ["BloodSplatter_01_Medium_New_F",[-18.7605,-7.43115,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodPool_01_Large_Old_F",[-20.6182,-6.41602,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodPool_01_Large_Old_F",[4.90625,-18.9219,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodPool_01_Medium_Old_F",[3.33008,-20.1841,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodPool_01_Large_Old_F",[5.07275,22.71,0],[[0,1,0],[0,0,1]],[true,true]],
     ["BloodSplatter_01_Large_Old_F",[-17.1462,-9.42725,0],[[-0.895428,-0.445206,0],[0,0,1]],[true,true]],
     ["Land_Net_Fence_Gate_F",[-13.2983,0.0771484,0],[[1,-0.000905081,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[-9.46631,-14.2656,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-9.35986,-13.9897,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[-1.54077,-14.2373,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-1.43433,-13.9614,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[6.44849,-14.2119,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[6.55493,-13.936,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[14.3916,-14.1865,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[14.498,-13.9106,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-3.04883,17.3091,0.666814],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-10.0298,17.2881,0.666814],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-13.2617,13.5903,0.667],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-13.2695,6.64941,0.667],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[-13.208,-6.48047,0.687],[[1,-4.37114e-008,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[3.96045,17.3252,0.686814],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Barricade_01_10m_F",[3.66992,19.2627,0],[[0.0210823,0.999778,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[11.0229,17.3599,0.667],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[18.1313,13.6875,0.843189],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Wall_Tin_4",[2.65771,17.4561,0.853817],[[-0.00334891,-0.999994,0],[0,0,1]],[true,true]],
     ["Land_Wall_Tin_4",[5.98926,17.4551,1.24256],[[-0.00117144,-0.999999,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[-13.4153,-10.3955,0],[[0.999736,0.0229584,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[-13.1372,-10.4956,0],[[0.999736,0.0229584,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[18.3384,-10.27,0],[[-0.999999,0.00129844,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[18.0625,-10.1631,0],[[-0.999999,0.00129844,0],[0,0,1]],[true,true]],
     ["Land_TinWall_02_l_8m_F",[18.0747,-2.53613,0],[[-0.998149,-0.0608102,0],[0,0,1]],[true,true]],
     ["Land_Mil_WiredFence_F",[17.793,-2.44678,0],[[-0.998149,-0.0608102,0],[0,0,1]],[true,true]],
     ["Land_WallCity_01_8m_grey_F",[18.1196,6.77783,0.667],[[-1,1.19249e-008,0],[0,0,1]],[true,true]],
     ["Land_Barricade_01_10m_F",[21.396,4.24902,0],[[-0.999804,-0.0198003,0],[0,0,1]],[true,true]],
     ["Land_Cargo20_yellow_F",[19.8074,2.58789,-0.0519261],[[-0.99141,0.130794,0],[0,0,1]],[true,true]],
     ["Land_Rack_F",[-11.3921,12.8633,0.517614],[[0.0155069,0.99988,0],[0,0,1]],[true,true]],
     ["Land_Barricade_01_10m_F",[2.80664,-16.0674,0],[[-0.0209744,-0.99978,0],[0,0,1]],[true,true]],
     ["Land_Pallets_stack_F",[10.6855,1.354,0],[[0.0432183,0.999066,0],[0,0,1]],[true,true]],
     ["Land_Pallets_F",[8.95313,1.37646,0],[[-0.959467,-0.281823,0],[0,0,1]],[true,true]],
     ["Land_Sleeping_bag_blue_F",[-9.70703,14.8584,0],[[-0.318107,0.948055,0],[0,0,1]],[true,true]],
     ["Land_Sleeping_bag_F",[-8.41211,14.9756,0],[[-0.0690895,0.99761,0],[0,0,1]],[true,true]],
     ["Land_Sleeping_bag_brown_F",[-6.8501,14.9873,0.159453],[[0.481118,0.876656,0],[0,0,1]],[true,true]],
     ["Land_Stretcher_01_olive_F",[15.0078,-5.51514,0.596926],[[0.99996,-0.00889139,0],[0,0,1]],[true,true]],
     ["Land_OfficeCabinet_01_F",[10.2053,-9.0918,0.596926],[[-0.0485009,-0.998823,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[10.9636,-9.00781,0.596926],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[11.7566,-8.90674,0.600926],[[0.391952,-0.919986,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[11.3596,-9.02051,1.01793],[[0.173528,0.984829,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_open_brown_F",[11.303,-8.21826,0.596926],[[0.197777,0.980247,0],[0,0,1]],[true,true]],
     ["Land_HandyCam_F",[10.4712,-9.08154,1.41893],[[-0.364795,-0.931088,0],[0,0,1]],[true,true]],
     ["Land_Stretcher_01_olive_F",[15.0039,-7.13965,0.596926],[[0.99996,-0.00889139,0],[0,0,1]],[true,true]],
     ["Land_IntravenStand_01_1bag_F",[12.897,-3.65527,0.596926],[[0.894927,0.446213,0],[0,0,1]],[true,true]],
     ["Land_IntravenStand_01_empty_F",[12.8608,-4.2373,0.788926],[[0.719193,-0.69481,0],[0,0,1]],[true,true]],
     ["Fridge_01_closed_F",[11.811,-0.226074,0.596926],[[-0.0156008,0.999878,0],[0,0,1]],[true,true]],
     ["Land_GarbageHeap_01_F",[1.61499,20.5205,0],[[-0.473601,0.88074,0],[0,0,1]],[true,true]],
     ["Land_GarbageHeap_01_F",[16.1006,16.2427,0],[[0.0555661,0.998455,0],[0,0,1]],[true,true]],
     ["Land_GarbageHeap_01_F",[17.2729,14.9531,0],[[-0.998033,-0.0626915,0],[0,0,1]],[true,true]],
     ["Land_PalletTrolley_01_yellow_F",[10.6836,1.90625,0],[[0.996916,-0.0784765,0],[0,0,1]],[true,true]],
     ["Land_Bandage_F",[11.094,-8.31348,0.0140004],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Bandage_F",[11.0779,-8.22314,0.011457],[[0.542127,0.840297,0],[0,0,1]],[true,true]],
     ["Land_Bandage_F",[11.0896,-8.13721,0.0139298],[[0.912423,0.409249,0],[0,0,1]],[true,true]],
     ["Land_FirstAidKit_01_closed_F",[11.4016,-8.34961,0.147883],[[0.0848953,-0.99639,0],[0,0,1]],[true,true]],
     ["Land_Antibiotic_F",[11.24,-8.19922,0.0170002],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Antibiotic_F",[11.1526,-8.02979,0.0198698],[[0.539783,0.841804,0],[0,0,1]],[true,true]],
     ["Land_Antibiotic_F",[11.156,-8.0376,0.0610609],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Antibiotic_F",[11.2229,-8.20166,0.0519218],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Defibrillator_F",[10.104,-9.04346,1.76614],[[0.486259,-0.873815,0],[0,0,1]],[true,true]],
     ["Land_Stretcher_01_folded_olive_F",[9.97021,-8.09766,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Stretcher_01_folded_sand_F",[10.0188,-6.79004,0],[[0.0900416,0.995938,0],[0,0,1]],[true,true]],
     ["Land_PainKillers_F",[11.407,-8.12939,0.0395498],[[-0.804251,-0.59429,0],[0,0,1]],[true,true]],
     ["Land_PainKillers_F",[11.5466,-8.13818,0.0285554],[[-0.993475,-0.114047,0],[0,0,1]],[true,true]],
     ["Land_CampingTable_small_F",[10.2102,-2.55664,0.596926],[[-0.999449,0.0331904,0],[0,0,1]],[true,true]],
     ["Land_PortableLongRangeRadio_F",[10.2751,-2.86279,1.40893],[[-0.946125,0.323802,0],[0,0,1]],[true,true]],
     ["Land_Notepad_F",[10.3962,-2.61865,0.597919],[[0.14142,-0.98995,0],[0,0,1]],[true,true]],
     ["Land_Camping_Light_F",[10.1204,-2.34375,1.40393],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Camping_Light_F",[11.5828,-8.98926,1.43514],[[-0.910388,-0.413756,0],[0,0,1]],[true,true]],
     ["Land_GarbageHeap_01_F",[20.1306,10.0972,0],[[-0.158585,0.987345,0],[0,0,1]],[true,true]]
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
     ["B_HMG_01_high_F", [-6.82031,-6.71045,0], [[0,1,0],[0,0,1]], "Blue"],
     ["B_HMG_01_high_F", [20.9199,15.0659,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[2.81055,3.01758,0.00143909],4,6,"Green"],
     [[-42.6953,2.70459,0.00143909],4,6,"Blue"]
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