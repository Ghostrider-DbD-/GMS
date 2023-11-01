/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.42 : Build 24 : Build Date 10/19/23
	By Ghostrider-GRG-
*/

/*
	Do not touch the code below 
*/
#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 
_defaultMissionLocations = [];

/*
 	Edit these to suite you specific mission
*/
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy forces are sheltered in a nearby farm house (RED)";
_endMsg = "Enemies at the farmhouse have been cleared!";
_timeoutMsg = "Enemy forces at the farmhouse have relocated.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Banjo Music";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = GMS_MinAI_Red;
_maxNoAI = GMS_MaxAI_Red;
_noAIGroups = GMS_AIGrps_Red;
_noVehiclePatrols = GMS_SpawnVeh_Red;
_noEmplacedWeapons = GMS_SpawnEmplaced_Red;
/*
	It is recommended to used specific settings for the variables below. Defaults were set based on difficulty or standard settings.
	Or just set numerical values to 0 to disable a feature
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = GMS_noPatrolHelisRed;
_missionHelis = GMS_patrolHelisRed;
_chancePara = GMS_chanceParaRed;
_noPara = GMS_noParaRed;
_paraTriggerDistance = 400;
_paraSkill = 0.7;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Red;
_paraLootCounts = GMS_lootCountsRed;
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

_crateLoot = GMS_BoxLoot_Red;
_lootCounts = GMS_lootCountsRed;
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
     ["RoadCone_F",[0,0,0],0,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[11.5645,-19.3467,0],350.521,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[13.5142,-18.9692,0],350.521,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[11.1001,-5.73975,0],331.817,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[8.85254,-5.30518,0],350.521,[true,true]],
     ["Land_CampingChair_V2_F",[6.36182,-2.57275,0.51191],32.8261,[true,true]],
     ["Land_WoodenBox_F",[0.661133,-0.896484,0],89.9047,[true,true]],
     ["Land_WoodenBox_F",[0.0244141,-0.881348,0],268.757,[true,true]],
     ["Land_WoodenBox_F",[0.674316,-0.886719,0.4346],89.9047,[true,true]],
     ["Land_CanisterFuel_F",[0.657227,-2.29834,0],173.239,[true,true]],
     ["Land_CanisterFuel_F",[0.668945,-2.07422,0],188.674,[true,true]],
     ["Land_SurvivalRadio_F",[-1.30811,3.67822,0.730924],297.823,[true,true]],
     ["Land_CampingChair_V2_F",[4.95166,-2.5459,0.511911],335.348,[true,true]],
     ["Land_BarrelSand_F",[-16.3047,-15.4463,0],0,[true,true]],
     ["Land_BarrelSand_F",[-16.3008,-14.856,0],0,[true,true]],
     ["Land_WheelCart_F",[-8.47363,-14.6909,0],276.244,[true,true]],
     ["Land_WheelCart_F",[-9.98438,-14.1055,0],204.762,[true,true]],
     ["Land_Cages_F",[-15.5161,6.77441,0],128.314,[true,true]],
     ["Land_Cages_F",[-15.7559,4.95801,0],272.461,[true,true]],
     ["Land_PortableLight_double_F",[-11.9224,15.0308,0],33.9905,[true,true]],
     ["Land_PortableLight_double_F",[-10.7188,14.9937,0],329.44,[true,true]],
     ["Land_Portable_generator_F",[0.157227,4.63281,0],320.444,[true,true]],
     ["PowerCable_01_Roll_F",[-0.365723,4.28467,0],0,[true,true]],
     ["Land_GarbageContainer_closed_F",[-13.7813,2.61768,0],148.968,[true,true]],
     ["Land_GarbageContainer_closed_F",[-15.5747,3.25244,0],259.947,[true,true]],
     ["Tire_Van_02_Transport_F",[-13.3428,1.84912,0],295.5,[true,true]],
     ["Tire_Van_02_Transport_F",[-13.9878,1.41602,0],295.5,[true,true]],
     ["Land_DirtPatch_01_6x8_F",[-15.0903,4.1958,0],74.5882,[true,true]],
     ["Land_Decal_Garbage_01_F",[-14.8765,1.84326,0],25.0855,[true,true]],
     ["Land_Decal_Garbage_01_F",[-13.7979,3.68457,0],251.58,[true,true]],
     ["Land_Decal_roads_oil_stain_04_F",[-0.137207,4.93115,0],0,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.3428,9.51807,0],269.125,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.3228,13.2534,0],269.125,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_07_F",[-16.8169,15.6802,0],0,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_04_F",[-15.8467,16.396,0],356.25,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-13.7744,16.1753,0],0.185858,[true,true]],
     ["Land_CampingChair_V2_F",[-10.6968,-12.1523,0],128.305,[true,true]],
     ["Land_CampingChair_V2_F",[-9.8042,-10.6709,0],91.1676,[true,true]],
     ["Land_CampingChair_V2_F",[-14.7905,-11.4014,0],239.526,[true,true]],
     ["Land_CampingChair_V2_F",[-13.3618,-12.9287,0],175.739,[true,true]],
     ["Land_CampingChair_V2_F",[-12.4585,-8.86426,0],1.70614,[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[1.875,2.40088,0.661166],0,[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[1.88721,3.16504,0.661166],0,[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[2.74121,2.55322,0.661166],269.692,[true,true]],
     ["Land_CncBarrier_stripes_F",[4.39111,17.062,0],203.157,[true,true]],
     ["Land_CncBarrier_stripes_F",[1.15234,17.6021,0],181.016,[true,true]],
     ["Land_CncBarrier_stripes_F",[3.57422,18.9399,0],294.37,[true,true]],
     ["Land_CncBarrier_stripes_F",[14.3096,17.1421,0],33.4716,[true,true]],
     ["Land_CncBarrier_stripes_F",[11.5356,17.8315,0],181.016,[true,true]],
     ["Land_CncBarrier_stripes_F",[8.75,17.0439,0],151.272,[true,true]],
     ["Land_CncBarrier_stripes_F",[9.16699,18.9321,0],231.295,[true,true]],
     ["Land_CncBarrier_stripes_F",[8.16455,21.4526,0],269.137,[true,true]],
     ["Land_CncBarrier_stripes_F",[4.72803,21.4507,0],294.37,[true,true]],
     ["Land_CncBarrier_stripes_F",[5.37109,24.0923,0],270.419,[true,true]],
     ["Land_CncBarrier_stripes_F",[8.09326,24.1406,0],269.137,[true,true]],
     ["Land_WaterBottle_01_stack_F",[2.38477,4.24512,0.661166],0,[true,true]],
     ["Land_EmergencyBlanket_01_stack_F",[2.81104,3.271,0.661166],0,[true,true]],
     ["Land_WoodenBox_F",[11.2603,-1.02051,0],268.757,[true,true]],
     ["Land_DirtPatch_02_F",[6.00586,17.457,0],36.4519,[true,true]],
     ["Land_DirtPatch_02_F",[12.0713,17.9346,0],54.067,[true,true]],
     ["Land_DirtPatch_02_F",[1.19336,16.0811,0],354.116,[true,true]],
     ["Land_Garbage_square3_F",[0.00488281,16.9707,0],344.588,[true,true]],
     ["Land_Garbage_square3_F",[8.4707,18.5322,0],204.735,[true,true]],
     ["Land_Garbage_square3_F",[9.28906,16.9478,0],344.588,[true,true]],
     ["Land_Garbage_square3_F",[11.3579,17.6274,0],15.1058,[true,true]],
     ["Land_Garbage_square3_F",[10.7075,19.1182,0],344.588,[true,true]],
     ["Land_Garbage_square3_F",[12.9971,17.459,0],344.588,[true,true]],
     ["Land_Garbage_square3_F",[2.48096,18.394,0],344.588,[true,true]],
     ["Land_Garbage_square3_F",[1.78809,17.3208,0],344.588,[true,true]],
     ["Land_WoodenBox_F",[11.8965,-1.03564,0],89.9047,[true,true]],
     ["Land_WoodenBox_F",[11.9102,-1.02588,0.4346],89.9047,[true,true]],
     ["Land_WoodenBox_F",[13.1675,-1.01563,0],89.5202,[true,true]],
     ["Land_WoodenBox_F",[12.5313,-0.991699,0],270.668,[true,true]],
     ["Land_WoodenBox_F",[12.5176,-1.00098,0.4346],270.668,[true,true]],
     ["Land_WoodenBox_F",[12.1782,-1.15527,0.8692],89.5202,[true,true]],
     ["Land_Net_Fence_Gate_F",[12.3052,-16.1567,0],0,[true,true]],
     ["Land_Barricade_01_10m_F",[-18.6245,-5.4458,0],270.596,[true,true]],
     ["Land_Barricade_01_10m_F",[3.0083,-18.1328,0],179.696,[true,true]],
     ["Land_GarbageHeap_01_F",[14.7632,7.41504,0.155022],262.379,[true,true]],
     ["Land_GarbageHeap_01_F",[-19.8599,-7.51416,0],241.119,[true,true]],
     ["Land_GarbageHeap_01_F",[-19.4565,-1.18896,0],123.222,[true,true]],
     ["Land_GarbageHeap_01_F",[5.0957,-19.3354,0],150.22,[true,true]],
     ["Land_GarbageHeap_01_F",[-1.23438,-19.0317,0],32.3226,[true,true]],
     ["Land_Wreck_Car_F",[-21.2349,-3.84717,0],345.198,[true,true]],
     ["Land_Wreck_Car_F",[-2.41357,-24.019,0],200.043,[true,true]],
     ["Land_WoodenBox_F",[11.2822,-1.01514,0.4346],91.5149,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.13525,4.84961,0.661166],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.14209,4.33887,0.661166],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[6.43457,4.58105,0.661166],107.06,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[6.8623,4.55957,1.07817],0,[true,true]],
     ["Tire_Van_02_Transport_F",[-13.6685,1.67236,0.267086],295.5,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.73291,4.69678,0.661166],269.219,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.94971,4.59521,1.07817],233.365,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.01123,4,0.661166],16.279,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.24365,4.71045,0.661166],269.219,[true,true]],
     ["Land_TrailerCistern_wreck_F",[-14.4282,-7.72314,0],324.779,[true,true]],
     ["Land_Garbage_square3_F",[3.20801,-21.5425,0.0443134],127.058,[true,true]],
     ["Land_Garbage_square3_F",[-0.260742,-22.3555,0.0443134],253.689,[true,true]],
     ["BloodPool_01_Large_Old_F",[2.47998,-21.5562,0],334.789,[true,true]],
     ["Land_DirtPatch_03_F",[2.0542,-18.2534,0],269.1,[true,true]],
     ["Land_Decal_Garbage_01_F",[2.31396,-22.1416,0.0443134],346.05,[true,true]],
     ["Land_Decal_Garbage_01_F",[6.1333,-20.3457,0],322.619,[true,true]],
     ["Land_Wreck_Truck_dropside_F",[0.900879,-20.9136,0],243.828,[true,true]],
     ["BloodTrail_01_Old_F",[-0.898926,-26.1313,0],152.333,[true,true]],
     ["BloodPool_01_Medium_Old_F",[0.0688477,-27.9316,0],284.746,[true,true]],
     ["BloodPool_01_Large_Old_F",[-1.88721,-24.2373,0],272.491,[true,true]],
     ["Land_GarbageHeap_02_F",[3.41699,-14.9019,0.0443134],358.876,[true,true]],
     ["Land_GarbageHeap_02_F",[-0.538574,-23.3169,0.0443134],265.268,[true,true]],
     ["Land_GarbageHeap_02_F",[2.4082,-22.5571,0.0443134],148.918,[true,true]],
     ["Land_Decal_Garbage_01_F",[1.22998,-23.9023,0.0886269],318.847,[true,true]],
     ["Land_DirtPatch_01_6x8_F",[-1.76416,-22.9702,0],143.426,[true,true]],
     ["Land_LuggageHeap_04_F",[2.38184,0.488281,4.02191],0,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[10.7534,-5.02002,0],331.817,[true,true]],
     ["Land_PortableLight_double_F",[9.59521,-15.1538,0],313.606,[true,true]],
     ["Land_WaterTank_02_F",[-0.405273,-14.4702,0.0443134],180.449,[true,true]],
     ["Land_StallWater_F",[-0.430176,-13.0991,0],180.773,[true,true]],
     ["WaterSpill_01_Medium_Old_F",[-0.594727,-13.4673,0],270.496,[true,true]],
     ["Land_GarbageHeap_02_F",[0.14502,-15.0854,0.0443134],181.737,[true,true]],
     ["Land_Decal_Garbage_01_F",[-0.178223,-14.2695,0.0886269],180.031,[true,true]],
     ["Land_Decal_Garbage_01_F",[-3.03467,-15.0527,0],180.031,[true,true]],
     ["Land_Decal_Garbage_01_F",[2.63574,-14.1357,0.0886269],194.03,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.3535,3.04248,0],269.125,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.3657,0.183594,0],269.125,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.3892,-12.1738,0],269.125,[true,true]],
     ["Land_Decal_RoadEdge_Dirt_08_F",[-17.4429,-14.2671,0],269.125,[true,true]],
     ["Land_WoodenCrate_01_stack_x3_F",[-15.7749,14.2202,0.274484],89.4507,[true,true]],
     ["Land_WoodenCrate_01_stack_x3_F",[-15.6528,12.519,0.274484],89.4507,[true,true]],
     ["Land_WoodPile_02_F",[-5.84912,0.875977,0],0,[true,true]],
     ["Land_WoodPile_02_F",[-8.62988,0.836426,0],180,[true,true]],
     ["Land_Portable_generator_F",[10.1216,8.94434,0],89.2494,[true,true]],
     ["Land_WoodenBox_F",[9.93066,8.13477,0],358.16,[true,true]],
     ["Land_WoodenBox_F",[9.97266,8.14844,0.4346],0.0614695,[true,true]],
     ["Land_CanisterFuel_F",[9.72217,8.27881,3.96191],188.674,[true,true]],
     ["Land_CanisterFuel_F",[9.71045,8.05469,3.96191],173.239,[true,true]],
     ["Land_CanisterFuel_F",[9.81006,8.85205,3.96191],109.736,[true,true]],
     ["Land_CanisterFuel_F",[9.61475,8.9624,3.96191],125.17,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.35547,3.21338,0.661166],344.81,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.60986,3.26172,0.661166],91.8703,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.02783,3.35254,1.07817],344.81,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[9.28369,3.11377,0.661166],1.08926,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.83252,3.71387,0.661166],254.029,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[9.06787,3.67188,1.07817],218.175,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[9.32178,3.86035,0.661166],254.029,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.0459,0.797852,1.32233],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[6.33838,1.04004,1.32233],107.06,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[6.76611,1.01855,1.07817],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.91504,0.458984,1.32233],16.279,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.63721,1.15576,1.32233],269.219,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[7.85303,1.0542,1.07817],233.365,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.14795,1.16943,1.32233],269.219,[true,true]],
     ["Land_CrabCages_F",[3.82227,-5.58936,0],87.8731,[true,true]],
     ["Land_WorkStand_F",[-7.21436,4.59961,0],6.92158,[true,true]],
     ["Land_CampingTable_white_F",[10.1978,2.96045,4.02191],90,[true,true]],
     ["Land_CampingChair_V2_F",[8.69141,2.38721,4.02191],240.254,[true,true]],
     ["Land_CampingChair_V2_F",[8.35791,3.52197,4.02191],285.106,[true,true]],
     ["Land_WoodenTable_large_F",[2.45361,4.59668,4.02191],90,[true,true]],
     ["Land_Laptop_unfolded_F",[10.1616,2.49951,4.83752],280.782,[true,true]],
     ["Land_HDMICable_01_F",[10.2734,2.90527,4.83752],0,[true,true]],
     ["SatelliteAntenna_01_Mounted_Olive_F",[11.5366,2.25098,6.91718],91.5832,[true,true]],
     ["Land_PCSet_01_case_F",[1.57617,4.76416,4.02191],180.803,[true,true]],
     ["Land_PCSet_01_keyboard_F",[2.07178,5.04443,4.88143],176.125,[true,true]],
     ["Land_PCSet_01_mousepad_F",[1.63232,5.00293,4.88143],0,[true,true]],
     ["Land_PCSet_01_mouse_F",[1.64258,5.04883,4.88869],159.993,[true,true]],
     ["Land_PCSet_01_screen_F",[2.04443,4.66748,4.88143],178.369,[true,true]],
     ["Land_PortableSpeakers_01_F",[2.04199,4.82471,4.88143],89.8833,[true,true]],
     ["Land_PortableLongRangeRadio_F",[3.33057,4.87695,4.88143],210.426,[true,true]],
     ["Land_PortableLongRangeRadio_F",[3.354,5.04053,4.88143],210.426,[true,true]],
     ["Land_PortableLongRangeRadio_F",[3.2085,4.94287,4.88143],249.899,[true,true]],
     ["Land_PortableLongRangeRadio_F",[3.44434,4.98975,4.88143],186.286,[true,true]],
     ["Fridge_01_closed_F",[5.88525,5.19678,4.02191],90.9453,[true,true]],
     ["MapBoard_altis_F",[9.8584,6.83789,4.02191],48.8618,[true,true]],
     ["Land_OfficeCabinet_01_F",[5.04395,7.31494,4.02191],0,[true,true]],
     ["Land_OfficeCabinet_01_F",[4.23926,7.31641,4.02191],0,[true,true]],
     ["Land_Sofa_01_F",[1.7998,-0.106445,0.661166],89.5077,[true,true]],
     ["Land_Rug_01_F",[3.35596,-0.0805664,0.661166],0,[true,true]],
     ["Land_Rug_01_F",[4.48975,4.13672,0.661166],0,[true,true]],
     ["Land_PortableCabinet_01_4drawers_olive_F",[6.51318,4.94385,4.022],0,[true,true]],
     ["Land_PortableCabinet_01_4drawers_olive_F",[7.05127,4.93799,4.022],0,[true,true]],
     ["Land_PortableCabinet_01_4drawers_olive_F",[6.51709,5.36816,4.022],180,[true,true]],
     ["Land_PortableCabinet_01_4drawers_olive_F",[7.04688,5.36816,4.022],180,[true,true]],
     ["Land_CampingChair_V2_F",[7.84717,5.05566,4.02191],223.046,[true,true]],
     ["Land_CampingChair_V2_F",[7.45654,5.83691,4.02191],254.726,[true,true]],
     ["Land_CampingChair_V2_F",[1.91748,3.42773,4.02191],221.993,[true,true]],
     ["Land_CampingChair_V2_F",[3.55762,2.47412,4.02191],189.268,[true,true]],
     ["Land_CampingChair_V2_F",[2.13428,5.77246,4.02191],346.216,[true,true]],
     ["Land_Map_altis_F",[2.75977,4.52295,4.88143],286.426,[true,true]],
     ["Land_Sleeping_bag_brown_folded_F",[6.55713,-1.51904,4.02191],0,[true,true]],
     ["Land_Sleeping_bag_brown_folded_F",[6.56982,-1.2627,4.02191],0,[true,true]],
     ["Land_Sleeping_bag_blue_folded_F",[6.10107,-1.34229,4.02191],323.854,[true,true]],
     ["Land_Sleeping_bag_F",[5.79736,-0.657715,4.02191],90.1075,[true,true]],
     ["Land_Pillow_grey_F",[6.58838,-0.325684,4.05233],253.198,[true,true]],
     ["Land_Pillow_grey_F",[6.62988,-0.723633,4.04979],17.3576,[true,true]],
     ["Land_TentSolar_01_folded_bluewhite_F",[5.64697,-1.59521,4.02191],0,[true,true]],
     ["Land_TentSolar_01_folded_sand_F",[5.59863,-1.27197,4.02191],189.661,[true,true]],
     ["Land_DirtPatch_03_F",[-14.2827,-12.0576,0],0,[true,true]],
     ["Land_DirtPatch_03_F",[-8.65186,-14.5615,0],61.26,[true,true]],
     ["Land_DirtPatch_01_6x8_F",[-12.8823,-6.89307,0],168.072,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[-8.29834,-7.34082,0],273.202,[true,true]],
     ["Land_VehicleTrack_01_straight_start_F",[-8.29932,-5.84326,0],273.202,[true,true]],
     ["Land_Pallets_F",[3.7041,8.97217,0],0,[true,true]],
     ["Land_WoodenPlanks_01_messy_pine_F",[0.895508,14.3452,0],0,[true,true]],
     ["Land_dirt_road_damage_long_02_F",[12.022,-15.7842,0],354.522,[true,true]],
     ["Land_dirt_road_damage_long_02_F",[11.7383,-12.6592,0],170.742,[true,true]],
     ["Land_dirt_road_damage_long_02_F",[10.4419,-7.50391,0],346.432,[true,true]],
     ["Land_dirt_road_damage_long_02_F",[12.8369,-20.8735,0],170.742,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[15.3999,-14.3672,0],90,[true,true]],
     ["Land_DirtPatch_02_F",[14.3774,2.42822,0],0,[true,true]],
     ["Land_DirtPatch_02_F",[19.2148,6.64307,0.0443134],234.249,[true,true]],
     ["Land_DirtPatch_02_F",[16.3384,7.57031,0],296.413,[true,true]],
     ["Land_Decal_Garbage_01_F",[18.1543,2.00098,0],286.706,[true,true]],
     ["Land_Decal_Garbage_01_F",[18.7202,5.95117,0],262.217,[true,true]],
     ["Land_Decal_Garbage_01_F",[17.3354,8.94775,0.0443134],233.427,[true,true]],
     ["Land_Garbage_square3_F",[14.8501,9.04736,0.0443134],344.588,[true,true]],
     ["Land_Garbage_square3_F",[13.79,7.29639,0.0443134],126.578,[true,true]],
     ["Land_GarbageHeap_02_F",[13.8804,7.35693,0.0443134],271.438,[true,true]],
     ["Land_GarbageHeap_02_F",[18.1533,7.88135,0.0443134],265.268,[true,true]],
     ["Land_PowerPoleWooden_L_off_F",[15.2856,15.2324,4.76837e-007],311.809,[true,true]],
     ["Land_Garbage_square3_F",[-22.0366,-5.5918,0],217.958,[true,true]],
     ["Land_Garbage_square3_F",[-22.7949,-2.11035,0],344.588,[true,true]],
     ["BloodPool_01_Large_Old_F",[-22.0522,-4.40479,0],65.6888,[true,true]],
     ["Land_DirtPatch_03_F",[-18.73,-4.48975,0],0,[true,true]],
     ["Land_Decal_Garbage_01_F",[-22.6216,-4.68848,0],76.9493,[true,true]],
     ["Land_Decal_Garbage_01_F",[-20.8862,-8.53564,0],53.5184,[true,true]],
     ["Land_WheelieBin_01_F",[0.577637,5.79053,0],86.8122,[true,true]],
     ["Land_WheelieBin_01_F",[0.447754,6.51709,0],107.364,[true,true]],
     ["Land_u_House_Big_02_V1_F",[5.81787,2.32373,0.401911],0,[true,true]],
     ["Land_u_Addon_01_V1_F",[-12.5562,9.68604,0],270.015,[true,true]],
     ["Land_cargo_addon01_V2_F",[-0.438477,2.83838,0],88.9411,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[-16.8447,-14.3906,0],90,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[-14.8887,-15.939,0],0,[true,true]],
     ["Land_BackAlley_01_l_gate_F",[6.6001,15.7559,0],0,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[3.27783,15.7065,0],0,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[9.91064,15.71,0],180,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[13.4312,15.7314,0],180,[true,true]],
     ["Land_DryToilet_01_F",[-15.688,9.09082,0.274484],269.806,[true,true]],
     ["Land_DryToilet_01_F",[-15.6416,10.8555,0.274484],269.806,[true,true]],
     ["Campfire_burning_F",[-12.4409,-10.6855,0],0,[true,true]],
     ["Land_WoodenLog_F",[-11.938,-13.0337,0],0,[true,true]],
     ["Land_WoodenLog_F",[-14.2593,-9.68115,0],0,[true,true]],
     ["Land_WoodenLog_F",[-10.8013,-9.44287,0],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-16.8198,4.36182,0],270,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-16.8237,-2.64209,0],270,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[-16.855,-9.13281,0],270,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-9.64893,-15.9341,0],180,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-9.01904,15.6841,0],180,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-1.99805,15.6963,0],180,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[15.3853,12.4585,0],90,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[15.3916,5.48145,0],270,[true,true]],
     ["Land_TinWall_02_l_8m_F",[15.6802,4.99365,0],270.196,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-17.1431,-9.30518,0],89.3493,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-17.1357,-1.34766,0],89.3493,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[-2.69092,-15.978,0],180,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[3.8501,-15.9604,0.0443134],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[15.4194,-2.06201,0],270,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[15.3843,-9.0835,0],270,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[15.376,1.38428,0],270,[true,true]],
     ["Land_TinWall_02_l_8m_F",[5.24219,-16.3091,0],0,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[5.75146,-16.0132,0.319688],180,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-2.74609,-16.3257,0],0,[true,true]],
     ["Land_Barricade_01_10m_F",[17.2036,4.91309,0],91.8216,[true,true]],
     ["Land_Wall_Tin_4",[-17.2217,-5.25439,0],90.3579,[true,true]],
     ["Land_Wall_Tin_4",[-17.2251,-9.25,0],90.3579,[true,true]],
     ["Land_Wall_Tin_4",[-17.23,-1.33789,0],90.3579,[true,true]],
     ["Land_Pallets_stack_F",[-15.147,-14.9902,0],2.477,[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["C_Tractor_01_F",[-9.62549,-6.45068,-0.000885963],95.8384]
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
     ["B_HMG_01_high_F", [-4.94482,-19.4087,0], 0, "Red"],
     ["B_HMG_01_high_F", [13.251,3.25879,0], 0, "Red"],
     ["B_HMG_01_high_F", [7.20264,18.4614,0], 0, "Red"],
     ["B_GMG_01_high_F", [-0.376953,2.74805,0], 0, "Red"],
     ["B_HMG_01_high_F", [-13.4961,9.80664,0.274484], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],1,2,"Red"],
     [[-13.558,24.0972,3.12796],1,2,"Red"],
     [[3.74072,13.2544,0.00143909],1,2,"Red"]
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
#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";