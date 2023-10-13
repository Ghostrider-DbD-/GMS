/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.02 : Build 15 : Build Date 09/22/23
	By Ghostrider-GRG-
*/

#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 

_defaultMissionLocations = [[20944.5,19254,14.0241]];
_maxMissionRespawns = -1; // Chage this to either zero for no respawns or a positive number if you want to limit the number of times a mission spawns at the same location
_markerType = ["ELLIPSE",[500,500],"GRID"];
_markerColor = "ColorOrange";
_startMsg = "Sir, We've located the C.L.I.T!. Action required, no time for cunning linguists! ";
_endMsg = "Patriots have satisfied the C.L.I.T mission parameters!";
_markerMissionName = "C.L.I.T Outpost";
_crateLoot = GMS_BoxLoot_Orange;
_lootCounts = GMS_lootCountsOrange;

_garrisonedBuilding_ATLsystem = [

];

_missionLandscape = [
     ["Land_Cargo_Tower_V1_F",[4.58789,-132.99,-14.0241],0]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [

];

_submarinePatrolParameters = [

];

_airPatrols = [

];

_missionEmplacedWeapons = [
     ["B_HMG_01_high_F",[110.023,40.4551,3.96983],0],
     ["B_HMG_01_high_F",[57.5,34.8281,-9.88396],0],
     ["B_HMG_01_high_F",[-31.5762,104.625,-9.91089],0],
     ["B_HMG_01_high_F",[-122.957,-66.6855,-9.79099],0],
     ["B_HMG_01_high_F",[1.11523,-134.869,4.04764],0],
     ["B_HMG_01_high_F",[70.3086,-111.371,-9.9243],0],
     ["B_HMG_01_high_F",[15.543,-60.8965,-10.9134],0],
     ["B_HMG_01_high_F",[-48.8379,22.8887,-14.0223],0],
     ["B_GMG_01_high_F",[101.902,39.6816,3.82671],0],
     ["B_GMG_01_high_F",[67.2246,40.0293,-14.0269],0],
     ["B_GMG_01_high_F",[-24.7422,78.1875,-3.90179],0],
     ["B_GMG_01_high_F",[8.78906,-130.131,3.47111],0],
     ["B_GMG_01_high_F",[22.2578,-53.3223,-10.897],0],
     ["B_GMG_01_high_F",[39.6094,-5.49414,-14.0235],0],
     ["B_Mortar_01_F",[102.457,46.2988,3.84845],0],
     ["B_Mortar_01_F",[1.46484,-128.242,3.65217],0],
     ["B_Mortar_01_F",[-59.1387,-62.7031,-11.4564],0]
];

_missionGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [
     ["I_CargoNet_01_ammo_F",[-38.2852,-34.8477,-14.0241],_crateLoot,_lootCounts,0],
     ["I_CargoNet_01_ammo_F",[-65.6777,-19.0859,-14.0241],_crateLoot,_lootCounts,0]
];

/*
	Use the parameters below to customize your mission - see the template or blck_configs.sqf for details about each them
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolOrange;
_noChoppers = GMS_noPatrolHelisOrange;
_missionHelis = GMS_patrolHelisOrange;
_chancePara = GMS_chanceParaOrange;
_noPara = GMS_noParaOrange;
_paraTriggerDistance = 400;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Orange;
_paraLootCounts = GMS_lootCountsOrange;
_missionLandscapeMode = "precise";
_uniforms = GMS_SkinList;
_headgear = GMS_headgear;
_vests = GMS_vests;
_backpacks = GMS_backpacks;
_sideArms = GMS_Pistols;
_spawnCratesTiming = "atMissionSpawnGround";
_loadCratesTiming = "atMissionCompletion";
_endCondition = allUnitsKilled;
_minNoAI = GMS_MinAI_Orange;
_maxNoAI = GMS_MaxAI_Orange;
_noAIGroups = GMS_AIGrps_Orange;
_noVehiclePatrols = GMS_SpawnVeh_Orange;
_noEmplacedWeapons = GMS_SpawnEmplaced_Orange;
_submarinePatrols = 0; // Default number of submarine patrols at pirate missions
_scubaPatrols = 0; // Default number of scuba diver patrols at pirate missions

#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";