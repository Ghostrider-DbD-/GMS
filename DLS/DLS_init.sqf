/*
	Dynamic Loot Crate Spawner for Arma 3
	by 	Ghostrider [GRG]

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

diag_log "[blckeagls] DLS_Init.sqf:: Initializing";
private _startTime = diag_tickTime;
////////////////////////////
// Configurations
DLS_Crate_Delete_Time = 300; // time in seconds after which loot will be deleted if no player is near and the crate is not owned.
DLS_Trigger_Radius = 400; // radius within which crate spawns are triggered.
DLS_numberCrateItems = 13;
DLS_createVisualMarker = true;
#ifdef blck_milServer
DLS_loadLaunchers = true;
#else
DLS_loadLaunchers = false;
#endif
DLS_crateAltitude = 125;
DLS_triggerTimout = 1200;
DLS_minimumIntervalBetweenCrateSpawns = 30 * 60;

//  Spawn modes: 1 ground, 2 air, 3 random
// loadouts: 0 random, 1 food/medical, 2 tools/contruction/household, 3, weapons/explosives, 4, clothing/headgear
// [[x, y, z],_spawnMode,_loadout,_useSmokeOrFlare, scale factor];
// scale factor - 1 loads DLS_numberCrateItems, 2 loads twice that number, etc., with each try re-selecting which of the four item types will be loaded

DLS_Spawn_Locations = [];

//if (blck_debugLevel > 2) then {diag_log "[blckeagls] DLS_Init.sqf:: Base Variables Set";};

if (blck_modType isEqualTo "Epoch") then
{
	call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\DLS_triggers_Epoch.sqf";
};

if (blck_modType isEqualTo "Exile") then
{
	call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\DLS_triggers_Exile.sqf";
};

//if (blck_debugLevel > 2) then {diag_log format["[blckeagls] DLS Diagnostics:: DLS_Spawn_Locations defined as %1",DLS_Spawn_Locations];};
//diag_log format["[blckeagls] DLS Diagnostics:: DLS_Spawn_Locations defined as %1",DLS_Spawn_Locations];
//diag_log "DLS:: Variables Defined";
///////////////////////////////
//  A few functions that will be required.
fn_DLS_triggerActivated = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\fn_DLS_triggerActivated.sqf";
fn_DLS_triggerDeactivated = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\fn_DLS_triggerDeactivated.sqf";
fn_DLS_loadLoot = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\fn_DLS_loadLoot.sqf";
fn_DLS_visualMarker = compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\fn_DLS_visualMarker.sqf";
//diag_log "DLS:: Functions Compiled";

// This starts the system which is entirely trigger-based.
call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\DLS\fn_DLS_InitializeTriggers.sqf";
diag_log format["[DLS] Dynamic Crate System Addon for blckeagls / GMS Mission system loaded in %1 seconds",(diag_tickTime-_startTime)];
blck_DLSComplete = true;
//execVM "\q\addons\custom_server\DLS\testCrateLoadingDLS.sqf";