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
_startMsg = "A small insurgent camp has been scouted and marked on the map. (GREEN/EASY)";
_endMsg = "Enemy insurgent camp has been been cleared and looted!";
_timeoutMsg = "Insurgent camp has packed up and moved.";
_markerType = ["ELLIPSE",[300,300],"SOLID"];
_markerColor = "ColorGreen";


_markerMissionName = "Insurgent Camp";
/*
	Use the parameters below to customize your mission - see the template or GMS_configs.sqf for details about each them
*/
/*
	The following variables MUST be defined in each mission even if you just set them to 0
*/
_minNoAI = 1;
_maxNoAI = 2;
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
     ["RoadCone_F",[0.000244141,-0.000183105,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_05_F",[2.96924,1.33685,0.275497],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_05_F",[0.808105,-3.87274,0],[[-0.517947,-0.855413,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_05_F",[-2.10791,0.086792,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_03_F",[-0.644043,4.42834,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_03_F",[-3.40576,-4.77087,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_03_F",[5.92529,-3.03241,0],[[-0.927121,-0.374761,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_03_F",[0.450195,-1.29059,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_04_F",[6.81299,-1.68762,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_04_F",[-2.61475,-6.97131,0],[[0.976304,-0.216405,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_01_F",[-4.22119,4.34424,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_01_F",[5.2793,-6.60809,0.378804],[[-0.99999,-0.00439212,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_01_F",[3.99609,4.74048,0],[[-0.821176,0.570676,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_rocks_02_F",[-1.65332,-5.32202,0],[[-0.909836,-0.414968,0],[0,0,1]],[true,true]],
     ["Land_dirt_road_damage_long_05_F",[-1.76563,4.474,0],[[-0.271764,-0.962364,0],[0,0,1]],[true,true]],
     ["Land_TentA_F",[2.81592,-3.01184,0.28828],[[0.46325,-0.886216,-0.00456731],[-0.00421451,-0.00735658,0.999964]],[true,true]],
     ["Land_DirtPatch_01_4x4_F",[0.690918,0.474365,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_01_6x8_F",[0.640625,-2.8916,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TentA_F",[-1.90967,-2.3764,0.256877],[[-0.758509,-0.651576,-0.0106586],[-0.00911521,-0.00574613,0.999942]],[true,true]],
     ["Land_TentA_F",[1.60205,2.48584,0.25688],[[-0.121177,0.992573,-0.0106904],[0,0.0107697,0.999942]],[false,true]],
     ["Land_CampingChair_V1_F",[-1.46533,1.54028,0],[[-0.947787,-0.318904,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[0.00585938,0.985229,0],[[0.573257,-0.819376,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_folded_F",[-3.48633,-5.31555,0.5292],[[-0.00619683,-0.999516,0.0304857],[0.97996,0,0.199196]],[false,false]],
     ["Land_CampingTable_small_F",[-0.488281,1.80872,0],[[0.229923,-0.973209,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_F",[-0.611328,2.75336,0],[[-0.0180238,0.999838,0],[0,0,1]],[true,true]],
     ["CamoNet_BLUFOR_open_F",[-0.558594,-1.20715,-0.2628],[[-0.997941,-0.0641316,0],[0,0,1]],[true,false]],
     ["Land_TimberLog_02_F",[3.46875,-6.80115,0],[[-0.999961,0.0087861,0],[0,0,1]],[true,true]],
     ["Land_TimberLog_03_F",[3.17676,-6.57153,0],[[-0.999961,0.0087861,0],[0,0,1]],[true,true]],
     ["Land_WoodenCrate_01_F",[-3.95166,-5.69171,-0.0607176],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_WoodenBox_F",[1.28223,5.48804,0],[[0.0643249,-0.997929,0],[0,0,1]],[true,false]],
     ["FirePlace_burning_F",[-0.932617,-5.26776,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Sleeping_bag_folded_F",[2.64697,1.88049,0.273595],[[0.97296,0.23097,-0.00140626],[-0.0018911,0.0140542,0.999899]],[true,true]],
     ["Land_Sleeping_bag_F",[3.01074,-2.87122,0.282988],[[0.455332,-0.890284,-0.00818683],[-0.0123765,-0.0155238,0.999803]],[true,true]],
     ["Land_Pillow_grey_F",[3.60449,-3.50702,0.311382],[[-0.938265,0.345898,0.00378043],[-0.00395175,-0.021646,0.999758]],[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[2.62402,-1.74963,0.304361],[[0.555183,-0.831607,-0.0141996],[-0.000690534,-0.0175333,0.999846]],[true,true]],
     ["Land_Sleeping_bag_folded_F",[2.17773,-1.87476,0.302578],[[-0.71998,-0.693994,-0.000476428],[0.0107309,-0.0118192,0.999873]],[true,true]],
     ["Land_TentSolar_01_folded_olive_F",[2.76074,2.38293,0.266811],[[-0.650487,0.759424,-0.0119044],[-0.0018911,0.0140542,0.999899]],[true,true]],
     ["Land_WoodPile_F",[3.61572,-4.28613,0.292866],[[0.892308,0.451346,0.00852207],[-0.00711782,-0.00480888,0.999963]],[true,true]],
     ["Land_WoodPile_large_F",[-5.30225,-4.77679,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TimberPile_05_F",[-0.632324,6.82837,0],[[-0.999872,-0.01597,0],[0,0,1]],[true,true]],
     ["Land_Map_Malden_F",[-0.462891,1.80573,0.813006],[[0.981988,0.188943,0],[0,0,1]],[true,true]],
     ["Land_WoodenLog_F",[0.273438,-4.29584,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WoodenLog_F",[-0.489258,-6.67773,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Garbage_line_F",[-0.69043,5.85571,0],[[0.998525,0.0542974,0],[0,0,1]],[true,true]],
     ["Land_Garbage_square3_F",[-0.75293,1.51117,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_GarbageBarrel_02_buried_F",[-3.94043,-4.54126,0],[[-0.279214,0.960229,0],[0,0,1]],[true,true]],
     ["Land_Tyre_F",[-4.06689,5.62988,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_Tyre_01_F",[-3.46973,5.63489,0],[[0.999209,-0.0397655,0],[0,0,1]],[true,false]],
     ["Land_PortableLongRangeRadio_F",[-0.836426,1.39899,0.813006],[[0.645197,-0.764017,0],[0,0,1]],[true,true]],
     ["Land_MobilePhone_old_F",[-0.960938,2.01294,0.813006],[[0.0998971,0.994998,0],[0,0,1]],[true,true]],
     ["Land_PortableSolarPanel_01_folded_sand_F",[-0.280762,1.96088,0.813006],[[-0.818814,-0.574059,0],[0,0,1]],[true,true]],
     ["Land_PaperBox_01_small_ransacked_brown_F",[-0.386719,5.30383,0],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_EmergencyBlanket_01_discarded_F",[-1.87012,-2.04785,0.25811],[[-0.907539,-0.419578,-0.0180998],[-0.0100838,-0.021315,0.999722]],[true,true]],
     ["Land_EmergencyBlanket_01_F",[1.38623,1.72083,0.269282],[[0,0.999768,-0.0215413],[0.000345267,0.0215413,0.999768]],[true,false]],
     ["Land_EmergencyBlanket_01_F",[1.39307,1.80585,0.30804],[[0.835692,0.549198,0],[0,0,1]],[true,false]],
     ["Land_WaterBottle_01_pack_F",[0.436035,5.53186,0.435],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_WaterBottle_01_pack_F",[0.666504,5.50256,0.4346],[[-0.411648,0.911343,0],[0,0,1]],[true,false]],
     ["Land_WaterBottle_01_empty_F",[-0.176758,2.21887,1.62601],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_WaterBottle_01_cap_F",[-0.252441,2.2337,0.813006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_FoodSack_01_full_brown_F",[1.04785,5.42175,0.4346],[[-0.424021,-0.905652,0],[0,0,1]],[true,false]],
     ["Land_FoodSack_01_dmg_brown_F",[-0.353516,5.34875,0],[[0.999034,0.0439333,0],[0,0,1]],[true,false]],
     ["Land_CanisterFuel_Blue_F",[-1.18164,5.41907,0],[[-0.999675,0.0255023,0],[0,0,1]],[true,true]],
     ["Land_Bucket_F",[-1.46436,5.51001,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Axe_fire_F",[-1.88379,5.64417,0.479031],[[-0.981833,-0.0283376,-0.187619],[0,-0.988785,0.149344]],[false,false]],
     ["Land_Matches_F",[-0.38623,-6.5625,0.531664],[[-0.735519,0.677504,0],[0,0,1]],[true,true]],
     ["Land_CanisterPlastic_F",[4.24951,-3.32385,0.314514],[[0,0.999988,0.004809],[-0.00711782,-0.00480888,0.999963]],[true,true]],
     ["Land_GasCooker_F",[1.45801,5.61853,0.4346],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_PlasticBucket_01_closed_F",[-2.94678,5.52209,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Shovel_F",[-3.9707,-6.10718,0.617],[[0.785845,-0.618423,-0.000170474],[0.00133721,0.00142357,0.999998]],[false,false]],
     ["Land_BarrelEmpty_grey_F",[0.214844,-7.33521,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_BarrelEmpty_F",[0.732422,-7.52832,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_MetalCase_01_small_F",[1.26025,2.961,0.257079],[[0.370738,0.928724,-0.00503027],[0.0120693,0.000597976,0.999927]],[true,true]],
     ["Book_02_F",[1.19678,2.77197,0.555043],[[-0.483644,0.875248,0.00531427],[0.0120693,0.000597976,0.999927]],[true,false]],
     ["Land_Camping_Light_off_F",[1.94336,3.26343,0.25546],[[0.952697,-0.303783,0.00914924],[-0.010131,-0.00165576,0.999947]],[false,false]],
     ["Land_PainKillers_F",[0.399414,5.33679,0.435],[[0,1,0],[0,0,1]],[true,false]],
     ["Land_VitaminBottle_F",[0.55127,5.35181,0.435],[[-0.64808,-0.761572,0],[0,0,1]],[true,false]],
     ["EauDeCombat_01_F",[0.844238,5.63782,0.435],[[-0.52017,0.854063,0],[0,0,1]],[true,false]],
     ["Weapon_hgun_Rook40_F",[-0.564941,1.59283,1.62601],[[0,1,0],[0,0,1]],[true,true]],
     ["Weapon_SMG_02_F",[1.41943,2.93677,0.646434],[[-0.591056,-0.805328,-0.0458161],[0.718789,-0.551616,0.423156]],[true,true]],
     ["Land_WoodPile_large_F",[4.23096,2.55804,0],[[0.646584,-0.762843,0],[0,0,1]],[true,true]],
     ["Land_CampingChair_V1_folded_F",[-3.37988,-5.21155,0.556963],[[-0.00619683,-0.999516,0.0304857],[0.97996,0,0.199196]],[false,false]],
     ["Land_Sleeping_bag_folded_F",[-2.25244,-3.04401,0.254653],[[0.356928,0.934109,-0.00662078],[-0.00738899,0.00991063,0.999924]],[true,true]],
     ["Land_Pillow_grey_F",[-2.73096,-2.62817,0.254289],[[0.588705,0.808346,0.00183961],[0.00685331,-0.00726681,0.99995]],[true,true]],
     ["Weapon_hgun_Rook40_F",[-2.45703,-2.84326,0.25114],[[0,0.999951,-0.00991091],[-0.00738899,0.00991063,0.999924]],[true,true]]
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
     ["B_HMG_01_high_F", [3.48706,-9.55267,0], [[0,1,0],[0,0,1]], "Blue"]
];

_missionGroups = [
     [[12.9507,-10.0192,0.00143909],1,2,"Blue"],
     [[3.16333,14.5118,0.00143909],1,3,"Blue"],
     [[-16.0146,-1.60681,0.00143909],1,2,"Blue"]
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