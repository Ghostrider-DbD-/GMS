/*
	Mission Template by Ghostrider [GRG]
	Mission Compositions by Bill prepared for ghostridergaming
	Copyright 2016
	Last modified 3/20/17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
#include "\q\addons\custom_server\Missions\privateVars.sqf";
	
//diag_log "[GMS] Spawning Blue Mission with template = resupplyCamp";
_crateLoot = blck_BoxLoot_Blue;
_lootCounts = blck_lootCountsBlue;
_startMsg = "A Bandit resupply camp has been spotted. Check the Blue marker on your map for its location";
_endMsg = "The Bandit resupply camp at the Blue Marker is under player control";
_markerLabel = "";
_markerType = ["ellipse",[175,175],"GRID"];
_markerColor = "ColorBlue";
_markerMissionName = "Resupply Camp";
_missionLandscapeMode = "precise"; // acceptable values are "none","random","precise"
_missionLandscape = [
		["Land_Cargo_Patrol_V1_F",[-29.41016,0.13477,-0.0224228],359.992,[true,true]], 
		["Land_Cargo_House_V1_F",[29.2988,-0.1,0.150505],54.9965,[true,true]], 
		["CamoNet_INDP_big_F",[-20.4346,15.43164,-0.00395203],54.9965,[false,true]], 
		["Land_BagBunker_Small_F",[-20.4346,15.43164,-0.0138168],119.996,[false,true]], 
		["Land_BagBunker_Small_F",[-20.3604,-15.6035,-0.0130463],44.9901,[false,true]], 
		["Land_BagBunker_Small_F",[18.4453,-15.791,0.00744629],305.003,[false,true]], 
		["Land_BagBunker_Small_F",[18.3711,15.5703,0.0101624],254.999,[false,true]],
		["CamoNet_INDP_big_F",[18.3711,15.5703,-0.00395203],54.9965,[false,true]]
		]; // list of objects to spawn as landscape
_missionLootBoxes = [];  //  Parameters are "Box Item Code", array defining the loot to be spawned, and position.
_missionLootVehicles = []; //  Parameters are "Box Item Code", array defining the loot to be spawned, and position.
_missionEmplacedWeapons = []; // can be used to define the precise placement of static weapons [[1,2,3] /*loc 1*/, [2,3,4] /*loc 2*/]; if blank random locations will be used
//  Change _useMines to true/false below to enable mission-specific settings.
_useMines = blck_useMines;
_minNoAI = blck_MinAI_Blue;
_maxNoAI = blck_MaxAI_Blue;
_noAIGroups = blck_AIGrps_Blue;
_noVehiclePatrols = blck_SpawnVeh_Blue;
_noEmplacedWeapons = blck_SpawnEmplaced_Blue;

#include "\q\addons\custom_server\Compiles\Missions\GMS_fnc_missionSpawner.sqf"; 
