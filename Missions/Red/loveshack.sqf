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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy outpost has been scouted and marked on the map (RED)";
_endMsg = "Enemy outpost has been cleared and looted.";
_timeoutMsg = "Enemy forces have abandoned the outpost.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorRed";


_markerMissionName = "Loveshack";
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
     ["Land_House_Small_05_F",[-9.87451,9.4707,0.45744],0,[true,true]],
     ["Land_House_Small_04_F",[9.93066,-5.68018,0.497188],0,[true,true]],
     ["Land_GarbageBin_02_F",[-2.4834,7.39307,0],0,[true,true]],
     ["Land_GarbageBin_02_F",[6.87891,-9.88184,0],0,[true,true]],
     ["Land_WaterTank_02_F",[-0.129395,11.2769,0],269.953,[true,true]],
     ["Land_Shed_05_F",[10.1792,11.0703,0.490411],318.026,[true,true]],
     ["Land_PicnicTable_01_F",[-11.0415,-7.67773,0],0,[true,true]],
     ["Land_Shed_06_F",[-9.90234,-9.76953,0],181.144,[true,true]],
     ["Land_Pallet_F",[8.4082,-11.7959,0],0,[true,true]],
     ["Land_Bricks_V4_F",[5.08691,-14.9346,0],0,[true,true]],
     ["Land_Timbers_F",[-9.18018,-4.23486,0],88.3955,[true,true]],
     ["Land_WorkStand_F",[-3.33008,-9.63477,0],68.983,[true,true]],
     ["Land_Pallet_F",[8.56592,6.7832,0],227.548,[true,true]],
     ["Land_Pallet_F",[8.55469,6.76318,0.204089],227.548,[true,true]],
     ["Land_Pallet_F",[8.43213,6.78271,0.408177],150.895,[true,true]],
     ["Land_Pallet_F",[8.33887,6.61768,0.612266],227.548,[true,true]],
     ["Land_Pallet_F",[7.04297,8.08545,0],297.373,[true,true]],
     ["Land_Pallet_F",[7.02002,8.08838,0.204089],297.373,[true,true]],
     ["Land_Pallet_F",[6.99561,8.21045,0.408177],220.72,[true,true]],
     ["Land_WheelCart_F",[5.51611,9.27539,0],73.3509,[true,true]],
     ["Land_WheelCart_F",[6.02637,-11.3428,0],73.3509,[true,true]],
     ["Land_StallWater_F",[1.2417,11.313,0],270.278,[true,true]],
     ["Land_PowerPoleWooden_F",[9.63623,0.44043,-4.76837e-007],148.408,[true,true]],
     ["Land_PowerPoleWooden_L_off_F",[-14.4077,-14.4189,4.76837e-007],151.951,[true,true]],
     ["Land_WallCity_01_4m_grey_F",[14.4028,15.9731,0.667],0,[true,true]],
     ["Land_WallCity_01_pillar_grey_F",[12.4155,15.9668,0.667],0,[true,true]],
     ["Land_Cargo20_military_ruins_F",[-17.7461,-7.89941,0],269.574,[true,true]],
     ["Land_TTowerSmall_1_F",[-15.0117,15.1836,4.76837e-007],135.102,[true,true]],
     ["Land_WoodenBox_F",[-12.5229,7.61816,0.618093],0,[true,true]],
     ["Land_WoodenBox_F",[-14.9419,3.21436,0],90.2006,[true,true]],
     ["Land_WoodenBox_F",[-14.9297,3.17236,0.4346],92.1016,[true,true]],
     ["Land_CampingChair_V2_F",[6.74463,-8.7207,0.697187],143.736,[true,true]],
     ["Land_CampingChair_V2_F",[5.52832,-8.63525,0.697187],209.551,[true,true]],
     ["Land_CampingTable_small_white_F",[6.83008,-3.60693,0.697187],0,[true,true]],
     ["Land_CampingChair_V2_F",[5.49854,-1.65381,0.697187],334.912,[true,true]],
     ["Land_CampingTable_F",[-12.6816,4.88428,0.618082],0,[true,true]],
     ["Land_CampingChair_V2_white_F",[-8.14502,5.24756,0.618093],121.44,[true,true]],
     ["Land_Garbage_square3_F",[14.4438,12.8721,0],0,[true,true]],
     ["Land_Garbage_square3_F",[13.5864,14.4502,0.391554],0,[true,true]],
     ["Land_LuggageHeap_02_F",[6.68506,8.06494,0.612266],331.264,[true,true]],
     ["Land_LuggageHeap_03_F",[6.30127,6.84668,0],212.319,[true,true]],
     ["Land_GarbageContainer_open_F",[14.0127,9.2832,0],136.271,[true,true]],
     ["Land_WheelieBin_01_F",[-0.0922852,0.469238,0],0,[true,true]],
     ["Land_WheelieBin_01_F",[-0.106934,1.25879,0],180,[true,true]],
     ["Land_FieldToilet_F",[-0.480469,-14.3828,0.327936],180.341,[true,true]],
     ["Land_FieldToilet_F",[-1.8374,-14.4043,0.327936],180.341,[true,true]],
     ["Land_WoodPile_02_F",[-4.82959,-5.46729,0],0,[true,true]],
     ["Land_Sink_F",[-1.00439,8.39697,0],0,[true,true]],
     ["Land_Cages_F",[3.51123,15.0122,0],0,[true,true]],
     ["Land_CratesWooden_F",[-1.75635,0.837891,0],0,[true,true]],
     ["Land_CratesWooden_F",[-3.71094,0.377441,0],91.7913,[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-7.43945,-14.0527,0],0,[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-9.15137,-14.0903,0],0,[true,true]],
     ["Land_WoodenCrate_01_stack_x3_F",[-14.3574,-10.7905,0],0,[true,true]],
     ["Land_WoodenCrate_01_stack_x5_F",[-14.3501,-9.13965,0],90.3775,[true,true]],
     ["Land_Cargo10_light_blue_F",[17.7139,6.6626,0],359.414,[true,true]],
     ["Land_Cargo20_grey_F",[17.8198,2.16602,2.88026],93.7147,[true,true]],
     ["Land_Pillow_F",[-10.9541,14.3433,0.0515094],150.349,[true,true]],
     ["Land_Pillow_F",[-9.61865,13.1738,0.202702],184.3,[true,true]],
     ["Land_Sleeping_bag_brown_folded_F",[-8.45605,8.23926,0],0,[true,true]],
     ["Land_Sleeping_bag_folded_F",[-8.40332,8.62061,0],315.072,[true,true]],
     ["Land_WoodenLog_F",[-2.78809,-0.140625,0],0,[true,true]],
     ["Land_CampingChair_V2_white_F",[-2.38037,-2.22607,0],209.728,[true,true]],
     ["Land_CampingChair_V2_F",[-0.787598,-0.27002,0],49.4988,[true,true]],
     ["Land_CampingChair_V2_F",[-0.536133,-1.41504,0],109.805,[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[-11.73,7.60059,0.618094],125.75,[true,true]],
     ["Land_TentSolar_01_folded_sand_F",[-12.1157,7.62061,0.618093],96.1273,[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[-12.4341,7.61035,0.618093],82.0301,[true,true]],
     ["Land_BottlePlastic_V2_F",[-13.1362,7.77051,0.618094],0,[true,true]],
     ["Land_BottlePlastic_V2_F",[-13.0225,7.75684,0.618094],0,[true,true]],
     ["Land_Camping_Light_off_F",[-13.4165,7.46631,0.618093],0,[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[-13.3804,8.45361,0.618086],0,[true,true]],
     ["Land_FoodSacks_01_small_brown_F",[-13.3638,9.2583,0.618031],0,[true,true]],
     ["Land_FoodSacks_01_large_brown_F",[-12.0313,8.8501,0.618078],0,[true,true]],
     ["Land_WaterBottle_01_pack_F",[-11.6016,10.0708,0],0,[true,true]],
     ["Land_WaterBottle_01_pack_F",[-11.8433,10.0239,0],27.8593,[true,true]],
     ["Land_WaterBottle_01_pack_F",[-11.9976,9.75098,0],349.207,[true,true]],
     ["Land_WaterBottle_01_pack_F",[-11.7622,9.74609,0],0,[true,true]],
     ["Land_WaterBottle_01_pack_F",[-11.5801,9.75928,0],0,[true,true]],
     ["Land_EmergencyBlanket_01_stack_F",[-10.9473,8.34277,0.618089],0,[true,true]],
     ["Land_EmergencyBlanket_01_stack_F",[-10.9453,8.85352,0.617893],344.542,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-8.53467,10.5332,0.617389],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-8.54736,10.0225,0.777519],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[-8.55078,10.2935,1.03273],287.419,[true,true]],
     ["Land_Axe_F",[-3.70801,-0.622559,0.730924],29.5309,[true,true]],
     ["Land_Axe_F",[-3.44434,-0.1875,0.730924],60.2023,[true,true]],
     ["Land_Matches_F",[-13.0698,7.66504,0.618093],121.247,[true,true]],
     ["Land_Matches_F",[-12.9468,7.67432,0.618093],59.2972,[true,true]],
     ["Land_Bucket_F",[-11.8159,7.11084,0.618091],0,[true,true]],
     ["Land_CanisterFuel_F",[-4.6665,0.100586,0],165.824,[true,true]],
     ["Land_CanisterFuel_F",[-4.68408,0.324219,0],181.258,[true,true]],
     ["Land_CanisterOil_F",[-9.17529,-7.15283,0.876182],334.548,[true,true]],
     ["Land_Rope_01_F",[-1.70459,0.51416,0.730924],93.8352,[true,true]],
     ["Land_Shovel_F",[8.34521,6.13867,0.816355],0,[true,true]],
     ["Land_Wrench_F",[7.63232,6.82129,0.816355],0,[true,true]],
     ["Land_Wrench_F",[7.18848,-3.82666,0.697187],338.693,[true,true]],
     ["Land_WaterBottle_01_pack_F",[6.47461,-3.73438,0.697187],0,[true,true]],
     ["Land_Can_V1_F",[6.4126,-3.54639,0.697187],0,[true,true]],
     ["Land_TinContainer_F",[7.17334,-3.37744,0.697187],276.104,[true,true]],
     ["Land_Portable_generator_F",[-1.09229,13.21,0],0,[true,true]],
     ["Land_PortableLongRangeRadio_F",[-9.31494,-8.15381,1.79625],314.125,[true,true]],
     ["Land_PortableLongRangeRadio_F",[-9.25342,-8.0498,0.907137],344.166,[true,true]],
     ["Land_SurvivalRadio_F",[-3.19727,0.25293,1.46185],143.376,[true,true]],
     ["Land_SurvivalRadio_F",[-13.4604,4.62354,0.61808],43.0443,[true,true]],
     ["WaterSpill_01_Medium_Old_F",[0.87207,11.4746,0],0,[true,true]],
     ["WaterSpill_01_Small_Old_F",[-0.857422,8.42285,0],0,[true,true]],
     ["Land_Garbage_square3_F",[-18.2915,-7.12012,0.303215],0,[true,true]],
     ["Land_Garbage_square3_F",[-17.6421,-11.7974,0],152.269,[true,true]],
     ["Land_Garbage_square3_F",[20.8145,0.866699,0],0,[true,true]],
     ["Land_Garbage_square3_F",[19.8413,7.31396,0],0,[true,true]],
     ["Land_Garbage_square3_F",[18.377,8.50293,0],70.3134,[true,true]],
     ["Land_Barricade_01_4m_F",[-0.151855,-18.4331,0],0,[true,true]],
     ["Land_Wreck_Car_F",[-20.2676,-9.88965,0],220.574,[true,true]],
     ["Land_Wreck_Car3_F",[-23.5786,-8.20117,0],306.494,[true,true]],
     ["Land_Wreck_Car_F",[3.07813,20.4673,0],75.8099,[true,true]],
     ["Land_Wreck_Truck_dropside_F",[3.97705,-20.6299,0],148.102,[true,true]],
     ["Land_TrailerCistern_wreck_F",[-16.9653,9.89014,0],269.103,[true,true]],
     ["Land_PortableLight_double_F",[-14.8237,-6.16895,0],111.109,[true,true]],
     ["Land_Portable_generator_F",[-14.1504,2.98193,0],181.29,[true,true]],
     ["Land_PortableLight_double_F",[14.8726,-0.432129,0],147.473,[true,true]],
     ["Land_PortableLight_double_F",[10.1875,14.7729,0],58.1977,[true,true]],
     ["Land_PortableLight_double_F",[-7.33838,7.35889,0.418089],329.44,[true,true]],
     ["Land_PortableLight_double_F",[-13.9692,-13.6772,0],228.87,[true,true]],
     ["Land_PortableLight_double_F",[-16.2598,7.2666,0],47.1702,[true,true]],
     ["Land_Camping_Light_F",[-11.4136,14.167,0.000311852],0,[true,true]],
     ["Land_Camping_Light_F",[-9.05615,10.335,0],0,[true,true]],
     ["Land_PortableLight_single_F",[13.7686,-10.3784,0.697187],125.725,[true,true]],
     ["Land_PortableLight_single_F",[10.4351,-1.81982,0.697187],19.3422,[true,true]],
     ["BloodPool_01_Large_Old_F",[13.0669,-8.95996,0],0,[true,true]],
     ["BloodSplatter_01_Large_Old_F",[12.9077,-7.02734,0],114.301,[true,true]],
     ["BloodSplatter_01_Medium_New_F",[-20.979,-8.82031,0],0,[true,true]],
     ["BloodPool_01_Large_Old_F",[-22.8364,-7.80518,0],0,[true,true]],
     ["BloodPool_01_Large_Old_F",[2.68799,-20.311,0],0,[true,true]],
     ["BloodPool_01_Medium_Old_F",[1.11182,-21.5732,0],0,[true,true]],
     ["BloodPool_01_Large_Old_F",[2.85449,21.3208,0],0,[true,true]],
     ["BloodSplatter_01_Large_Old_F",[-19.3647,-10.8164,0],243.563,[true,true]],
     ["Land_Net_Fence_Gate_F",[-15.5166,-1.31201,0],90.0518,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-11.6846,-15.6548,0],0,[true,true]],
     ["Land_Mil_WiredFence_F",[-11.5781,-15.3789,0],0,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-3.75928,-15.6265,0],0,[true,true]],
     ["Land_Mil_WiredFence_F",[-3.65283,-15.3506,0],0,[true,true]],
     ["Land_TinWall_02_l_8m_F",[4.22998,-15.6011,0],0,[true,true]],
     ["Land_Mil_WiredFence_F",[4.33643,-15.3252,0],0,[true,true]],
     ["Land_TinWall_02_l_8m_F",[12.1733,-15.5757,0],0,[true,true]],
     ["Land_Mil_WiredFence_F",[12.2798,-15.2998,0],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-5.26709,15.9199,0.666814],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-12.248,15.8989,0.666814],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-15.48,12.2012,0.667],270,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[-15.4878,5.26025,0.667],270,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[-15.4263,-7.86963,0.687],90,[true,true]],
     ["Land_WallCity_01_8m_dmg_grey_F",[1.74219,15.936,0.686814],0,[true,true]],
     ["Land_Barricade_01_10m_F",[1.45166,17.8735,0],1.20802,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[8.80469,15.9707,0.667],0,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[15.9131,12.2983,0.94345],270,[true,true]],
     ["Land_Wall_Tin_4",[0.439453,16.0669,0.853817],180.192,[true,true]],
     ["Land_Wall_Tin_4",[3.771,16.0659,1.24251],180.067,[true,true]],
     ["Land_TinWall_02_l_8m_F",[-15.6333,-11.7847,0],88.6845,[true,true]],
     ["Land_Mil_WiredFence_F",[-15.3555,-11.8848,0],88.6845,[true,true]],
     ["Land_TinWall_02_l_8m_F",[16.1201,-11.6592,0],270.074,[true,true]],
     ["Land_Mil_WiredFence_F",[15.8442,-11.5522,0],270.074,[true,true]],
     ["Land_TinWall_02_l_8m_F",[15.8564,-3.92529,0],266.514,[true,true]],
     ["Land_Mil_WiredFence_F",[15.5747,-3.83594,0],266.514,[true,true]],
     ["Land_WallCity_01_8m_grey_F",[15.9014,5.38867,0.667],270,[true,true]],
     ["Land_Barricade_01_10m_F",[19.1777,2.85986,0],268.865,[true,true]],
     ["Land_Cargo20_yellow_F",[17.5894,1.19873,0.0483356],277.515,[true,true]],
     ["Land_Rack_F",[-13.6104,11.4741,0.617876],0.888513,[true,true]],
     ["Land_Barricade_01_10m_F",[0.588379,-17.4565,0],181.202,[true,true]],
     ["Land_Pallets_stack_F",[8.46729,-0.0351563,0.147359],3.00179,[true,true]],
     ["Land_Pallets_F",[6.73486,-0.0126953,0],253.631,[true,true]],
     ["Land_Sleeping_bag_blue_F",[-11.9253,13.4692,0],341.452,[true,true]],
     ["Land_Sleeping_bag_F",[-10.6304,13.5864,0],356.038,[true,true]],
     ["Land_Sleeping_bag_brown_F",[-9.06836,13.5981,0.159453],28.7584,[true,true]],
     ["Land_Stretcher_01_olive_F",[12.7896,-6.9043,0.697187],90.5094,[true,true]],
     ["Land_OfficeCabinet_01_F",[7.98682,-10.481,0.697187],182.78,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[8.74561,-10.397,0.697187],0,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[9.53857,-10.2959,0.701188],156.924,[true,true]],
     ["Land_PaperBox_01_small_closed_brown_F",[9.14111,-10.4097,1.11819],9.993,[true,true]],
     ["Land_PaperBox_01_small_open_brown_F",[9.08447,-9.60742,0.697187],11.407,[true,true]],
     ["Land_HandyCam_F",[8.25293,-10.4707,1.51919],201.395,[true,true]],
     ["Land_Stretcher_01_olive_F",[12.7856,-8.52881,0.697187],90.5094,[true,true]],
     ["Land_IntravenStand_01_1bag_F",[10.6787,-5.04443,0.697187],63.4991,[true,true]],
     ["Land_IntravenStand_01_empty_F",[10.6426,-5.62646,0.889187],134.012,[true,true]],
     ["Fridge_01_closed_F",[9.59277,-1.61523,0.697187],359.106,[true,true]],
     ["Land_GarbageHeap_01_F",[-0.603027,19.1313,0],331.732,[true,true]],
     ["Land_GarbageHeap_01_F",[13.8823,14.8535,0],3.18535,[true,true]],
     ["Land_GarbageHeap_01_F",[15.0547,13.564,0],266.406,[true,true]],
     ["Land_PalletTrolley_01_yellow_F",[8.46533,0.51709,0],94.501,[true,true]],
     ["Land_Bandage_F",[8.87549,-9.70264,0.0140004],0,[true,true]],
     ["Land_Bandage_F",[8.85986,-9.6123,0.011457],32.8285,[true,true]],
     ["Land_Bandage_F",[8.87158,-9.52637,0.0139298],65.8424,[true,true]],
     ["Land_FirstAidKit_01_closed_F",[9.18311,-9.73877,0.147883],175.13,[true,true]],
     ["Land_Antibiotic_F",[9.02197,-9.58838,0.0170002],0,[true,true]],
     ["Land_Antibiotic_F",[8.93408,-9.41895,0.0198698],32.6689,[true,true]],
     ["Land_Antibiotic_F",[8.93799,-9.42676,0.0610609],0,[true,true]],
     ["Land_Antibiotic_F",[9.00439,-9.59082,0.0519218],0,[true,true]],
     ["Land_Defibrillator_F",[7.88574,-10.4326,1.86641],150.905,[true,true]],
     ["Land_Stretcher_01_folded_olive_F",[7.75195,-9.48682,0],0,[true,true]],
     ["Land_Stretcher_01_folded_sand_F",[7.80029,-8.1792,0],5.166,[true,true]],
     ["Land_PainKillers_F",[9.18896,-9.51855,0.0395498],233.538,[true,true]],
     ["Land_PainKillers_F",[9.32861,-9.52734,0.0285554],263.451,[true,true]],
     ["Land_CampingTable_small_F",[7.9917,-3.9458,0.697187],271.902,[true,true]],
     ["Land_PortableLongRangeRadio_F",[8.05713,-4.25195,1.50919],288.893,[true,true]],
     ["Land_Notepad_F",[8.17822,-4.00781,0.698181],171.87,[true,true]],
     ["Land_Camping_Light_F",[7.90186,-3.73291,1.50419],0,[true,true]],
     ["Land_Camping_Light_F",[9.36475,-10.3784,1.53541],245.559,[true,true]],
     ["Land_GarbageHeap_01_F",[17.9126,8.70801,0],350.875,[true,true]]
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
     ["B_HMG_01_high_F", [-21.3594,-6.56543,0], 0, "Red"],
     ["B_HMG_01_high_F", [9.72021,-12.7871,0.697187], 0, "Red"],
     ["B_HMG_01_high_F", [-10.1968,-11.5684,0], 0, "Red"],
     ["B_HMG_01_high_F", [-9.93604,6.03516,0.618089], 0, "Red"]
];

_missionGroups = [
     [[17.535,9.26514,3.12796],2,3,"Green"],
     [[-13.558,24.0972,3.12796],2,3,"Green"]
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