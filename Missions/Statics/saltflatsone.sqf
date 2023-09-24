

/*
	Dynamic Mission Generated
	Using 3DEN Plugin for GMS by Ghostrider
	GMS 3DEN Plugin Version 1.1 : Build 16 : Build Date 09/23/23
	By Ghostrider-GRG-
*/

#include "\GMS\Compiles\Init\GMS_defines.hpp"
#include "\GMS\Missions\GMS_privateVars.sqf" 

//_difficulty = Blue
_chanceMissionSpawned = 100
_defaultMissionLocations = [[22813.6,17117.7,1.43051e-006]];
_maxMissionRespawns = -1; // Chage this to either zero for no respawns or a positive number if you want to limit the number of times a mission spawns at the same location
_markerLabel = "";
_markerType = ["ELLIPSE",[175,175],"GRID"];
//_markerType = ["RECTANGLE", [350,350],"GRID"Full"];
			// The mission system supports circular or square mission markers as well as typical Arma icon-style (triangle, dot, flag etc) markers.
			// to have an icon define the map marker as follows:
			// ["mil_triangle",[0,0]];
			// Just replace the icon name with the one you want to spawn.
_markerColor = "ColorBlue";
_startMsg = "The enemy have fortified a local village";
_endMsg = "TODO: Change Appropriately";
_markerMissionName = "Zendar Fort";
_crateLoot = GMS_BoxLoot_Blue;
_lootCounts = GMS_lootCountsBlue;

_garrisonedBuilding_ATLsystem = [

];

_missionLandscape = [
     ["RoadCone_L_F",[-0.00390625,0.00585938,0.000124454],0],
     ["Land_MedicalTent_01_NATO_generic_outer_F",[35.3652,7.47461,0.0472379],0],
     ["Land_MedicalTent_01_CSAT_brownhex_generic_outer_F",[-10.8438,-14.3906,0.0081706],0],
     ["Land_Research_HQ_F",[18.6621,37.082,-0.0358014],0]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_missionPatrolVehicles = [
     //["B_LSV_01_armed_F",[16.127,-3.59375,0.0630085],0]
];

_submarinePatrolParameters = [

];

_airPatrols = [

];

_missionEmplacedWeapons = [
     //["B_HMG_01_high_F",[-13.4297,18.7031,0.0169539],0]
];

_missionGroups = [

];

_scubaGroupParameters = [

];

_missionLootBoxes = [

];

/*
	Use the parameters below to customize your mission - see the template or blck_configs.sqf for details about each them
*/
_chanceHeliPatrol = GMS_chanceHeliPatrolBlue;
_noChoppers = GMS_noPatrolHelisBlue;
_missionHelis = GMS_patrolHelisBlue;
_chancePara = GMS_chanceParaBlue;
_noPara = GMS_noParaBlue;
_paraTriggerDistance = 400;
_chanceLoot = 0.0;
_paraLoot = GMS_BoxLoot_Blue;
_paraLootCounts = GMS_lootCountsBlue;
_missionLandscapeMode = "precise";
_uniforms = GMS_SkinList;
_headgear = GMS_headgear;
_vests = GMS_vests;
_backpacks = GMS_backpacks;
_sideArms = GMS_Pistols;
_spawnCratesTiming = "atMissionEndAir";
_loadCratesTiming = "atMissionCompletion";
_endCondition = allUnitsKilled;
_minNoAI = GMS_MinAI_Blue;
_maxNoAI = GMS_MaxAI_Blue;
_noAIGroups = GMS_AIGrps_Blue;
_noVehiclePatrols = GMS_SpawnVeh_Blue;
_noEmplacedWeapons = GMS_SpawnEmplaced_Blue;
_submarinePatrols = 0; // Default number of submarine patrols at pirate missions
_scubaPatrols = 0; // Default number of scuba diver patrols at pirate missions

#include "\GMS\Compiles\Missions\GMS_fnc_missionSpawner.sqf";