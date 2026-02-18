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
_difficulty = "Red";
/*	Specify the chance this mission is spawned [0 .. 1.0]	*/
_chanceMissionSpawned = 1;
/*	 Set number of times a mission respawns or use -1 for inifinite respawns 	*/
_maxMissionRespawns = -1;
/* 	Add your Start, End and Timeout Messages Here  */
_startMsg = "Enemy ICBM Site scouted and marked on the map. (ORANGE/MEDIUM)";
_endMsg = "Enemy ICBM Site has been shut down and looted.";
_timeoutMsg = "Enemy ICBM site has moved to new location.";
_showMarker = true;
_markerType = ["ELLIPSE",[350,350],"SOLID"];
_markerColor = "ColorOrange";


_markerMissionName = "ICBM Site";
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
_chanceHeliPatrol = GMS_chanceHeliPatrolRed;
_noChoppers = 0;
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
     ["RoadCone_F",[0,-0.000183105,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_TBox_F",[-17.6167,-11.2562,0],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_TTowerSmall_1_F",[-16.73,20.7778,1.01217],[[-0.00191623,0.999998,0],[0,0,1]],[false,true]],
     ["Land_TTowerSmall_2_F",[19.562,17.5295,7.62939e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.3765,13.7621,4.29153e-006],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.3579,3.76825,4.29153e-006],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.3418,-6.2276,6.19888e-006],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.3232,-16.2342,-0.000174999],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.3125,14.0432,6.19888e-006],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.3389,4.04535,6.19888e-006],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.3486,-5.94684,6.19888e-006],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.374,-15.9478,0.000509739],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-8.04053,-20.7562,-0.00189924],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-18.0381,-20.7757,-0.016191],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[22.1177,-21.388,0.00112009],[[0.00117722,-0.999999,0],[0,0,1]],[true,true]],
     ["Land_ConcreteWall_01_l_gate_F",[2.38818,-20.9014,0],[[0.00117007,-0.999999,0],[0,0,1]],[true,true]],
     ["Land_spp_Transformer_F",[17.8076,19.204,5.72205e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_Pier_Box_F",[-11.1953,17.5058,1.04753],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Mil_WiredFence_Gate_F",[2.03955,-21.0865,-0.575744],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_DirtPatch_03_F",[-19.6216,5.49335,0.705107],[[0.0291527,-0.999575,0],[0,0,1]],[false,true]],
     ["Land_Sign_WarningMilAreaSmall_F",[1.26123,-21.2064,-0.943848],[[-0.00190813,0.999998,0],[0,0,1]],[true,true]],
     ["Land_Sign_WarningMilAreaSmall_F",[-33.0249,8.84906,-0.932699],[[0.999998,0.00195868,0],[0,0,1]],[true,true]],
     ["Land_Sign_WarningMilAreaSmall_F",[26.9761,8.95844,-0.959887],[[-0.999998,-0.00183724,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.3994,23.7614,4.29153e-006],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-28.021,-20.795,-0.016191],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.2988,24.0505,6.19888e-006],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[11.8369,39.2744,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[1.84863,39.2563,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-8.1626,39.2324,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-18.1514,39.216,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[21.8438,39.2946,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_Sign_WarningMilAreaSmall_F",[-3.07666,38.9016,-0.957932],[[0.00116936,-0.999999,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-33.4209,33.7468,4.29153e-006],[[-0.999998,-0.00184392,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[-28.145,39.1967,6.19888e-006],[[-0.00191623,0.999998,0],[0,0,1]],[true,true]],
     ["Land_New_WiredFence_10m_F",[27.2793,34.0297,6.19888e-006],[[0.999998,0.00196679,0],[0,0,1]],[true,true]],
     ["Land_Rampart_F",[1.04395,14.6047,-0.0668921],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[1.02344,26.5588,-0.430402],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-11.4307,29.5146,-0.49275],[[0.999998,0.00195868,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-6.76074,29.5268,-0.291329],[[0.999998,0.00195868,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-0.806152,29.5351,-0.446109],[[0.999998,0.00195868,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-21.5923,29.4936,-0.151639],[[0.999998,0.00195868,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-23.498,14.5541,-0.0681138],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-23.5151,20.3891,-0.202],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-23.5269,26.5087,-0.327788],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[1.03418,20.4372,-0.49275],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-15.9746,29.5085,-0.25585],[[0.999998,0.00195868,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[1.06494,8.89374,-0.49275],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_Rampart_F",[-23.4922,8.84149,-0.49275],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["Land_DirtPatch_03_F",[-13.9551,5.65814,0],[[0.0291527,-0.999575,0],[0,0,1]],[false,true]],
     ["Land_DirtPatch_03_F",[-8.49072,5.81976,0],[[0.0291527,-0.999575,0],[0,0,1]],[false,true]],
     ["Land_DirtPatch_03_F",[-2.8208,5.98578,0],[[0.0291527,-0.999575,0],[0,0,1]],[false,true]],
     ["Land_New_WiredFence_10m_F",[12.1147,-21.4053,6.19888e-006],[[0.00117722,-0.999999,0],[0,0,1]],[true,true]],
     ["Land_PowerStation_01_F",[18.0903,-3.54498,0.994575],[[0.00116936,-0.999999,0],[0,0,1]],[true,true]],
     ["PortableHelipadLight_01_red_F",[-15.5215,7.58661,1.09981],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["PortableHelipadLight_01_red_F",[-6.91846,7.60541,1.09981],[[0.00116936,-0.999999,0],[0,0,1]],[false,true]],
     ["PortableHelipadLight_01_red_F",[17.2383,16.6596,4.3336],[[0.00116936,-0.999999,0],[0,0,1]],[true,true]],
     ["PortableHelipadLight_01_yellow_F",[2.01318,-21.0501,2.39024],[[0.00117007,-0.999999,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     ["O_MRAP_02_hmg_F",[62.1812,40.0956,-9.53674e-007],0]
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
     ["B_Ship_MRLS_01_F", [-11.2388,17.1989,1.00688], [[0.00116936,-0.999999,0],[0,0,1]], "Red"],
     ["B_HMG_01_high_F", [17.9302,24.3163,0], [[0,1,0],[0,0,1]], "Green"],
     ["B_HMG_01_high_F", [-21.5981,-11.6798,0], [[0,1,0],[0,0,1]], "Red"]
];

_missionGroups = [
     [[41.7607,-49.5333,0.00143909],2,3,"Red"],
     [[-9.12939,-8.4743,0.00143909],2,3,"Red"],
     [[-30.9912,64.3263,0.00143909],2,3,"Green"]
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