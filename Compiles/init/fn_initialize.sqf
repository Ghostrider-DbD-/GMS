/*
	by Ghostrider [GRG]
	Last Modified 3/14/17
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/

#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"

///////////////////////////////////////////////
//  prevent the system from being started twice
//////////////////////////////////////////////
if !(isNil "GMS_missionSystemRunning") exitWith {"[GMS] Mission System already initialized"};
GMS_missionSystemRunning = true;

/*
private _data = [1,2,3,4,5,6,7,8,9];
for "_i" from 1 to 10 do {
	for "_i" from 0 to 15 do {
		private _count = _i;
		private _output = [_data, _count] call GMSCore_fnc_selectRandomCount;
		[format["_initialize: _count %1 _output %2", _count, _output]] call GMS_fnc_log;
	};
};
_data = [];
_count = 1;
_output = [_data, _count] call GMSCore_fnc_selectRandomCount;
[format["_initialize: _count %1 _output %2", _count, _output]] call GMS_fnc_log;
*/

// Only run this on a dedicated server
if (hasInterface) exitWith 
{
	"[GMS] Mission system may only be run on a dedicate server or headless client";
};

/*  Test GMSCore_fnc_selectRandomCount*/

[] spawn {
	waitUntil {!isNil "GMSCore_Initialized"}; 
	diag_log format["[GMS] Loading GMS at %1",diag_tickTime];
	diag_log format["[GMS] GMSCore_modtype = %1 | GMSCore_side %2 | GMSCore_unitType %3",GMSCore_modtype,GMSCore_side,GMSCore_unitType];

	// Just some housekeeping for ghost.
	private _loadingStartTime = diag_tickTime;

		/*
		changing any of these variables may break the mission system
	*/

	GMS_debugLevel = getNumber(configFile >> "CfgGMSmissiosystem" >> "GMS_debugLevel");  // 

	diag_log format["[GMS] _initialize: GMS_debugLevel = %1", GMS_debugLevel];

	// compile functions
	[] call compileFinal preprocessFileLineNumbers "\x\addons\GMS\Compiles\Init\GMS_functions.sqf";
	diag_log format["[GMS] Loaded Functions at %1",diag_tickTime];
	
	// Load vaariables used to store information for the mission system.
	[] call compileFinal preprocessFileLineNumbers "\x\addons\GMS\Compiles\Init\GMS_variables.sqf";
	if (GMS_debugLevel > 0) then {[format["DEBUG ON: Variables loaded at %1",diag_tickTime]] call GMS_fnc_log};

	// Load Configs
	[] call compile preprocessfilelinenumbers "\x\addons\GMS\Configs\GMS_configs.sqf";

	diag_log format["[GMS] Loaded Configs at %1",diag_tickTime];

	// Make sure all key variables are defined before proceding with loading with GMS
	waitUntil{!(isNil "GMS_configs_loaded")};

	// Load any user-defined specifications or overrides
	//  HINT: Use these for map-specific settings
	#include "\x\addons\GMS\Configs\GMS_custom_config.sqf";

	if (GMS_debugLevel > 0) then {[format["DEBUG ON: Custom Configurations Loaded at %1",diag_tickTime]] call GMS_fnc_log};
	if (GMS_debugLevel > 0) then {[format["GMS_debugLevel = %1",GMS_debugLevel]] call GMS_fnc_log};

	// find and set Mapcenter and size
	[] call compileFinal preprocessFileLineNumbers "\x\addons\GMS\Compiles\init\GMS_fnc_findWorld.sqf";
	if (GMS_debugLevel > 0) then {["DEBUG ON: Map-specific information defined"] call GMS_fnc_log};

	{
		// Parameters addBlacklistedLocation 
		_x params[["_location", [[0,0,0], 0, 0]],["_name",""]];
		[format["_initialze: _x %1 | _location %2 | _name %3", _x, _location, _name]] call GMS_fnc_log;
		//[_location, _name] call GMSCore_fnc_addMissionNoSpawnZone;
	} forEach GMS_locationBlackList;

	private _modType = [] call GMSCore_fnc_getModType; 
	[format["_initialize: _modeType = %1", _modType]] call GMS_fnc_log; 
	switch (toLower _modType) do {
		case "epoch": { 
			["Missions_Epoch"] call GMS_fnc_loadMissionData;
		};
		case "exile": {
			["Missions_Exile"] call GMS_fnc_loadMissionData;
		};
		case "default": {
			["Missions_Default"] call GMS_fnc_loadMissionData;
		};
	};

	[] call GMS_fnc_validateClassnames; 

	// Define some arrays we will need when spawning stuff 
	
	GMS_crateMoneyList =  [GMS_crateMoneyBlue, GMS_crateMoneyRed, GMS_crateMoneyGreen, GMS_crateMoneyOrange];
	GMS_rewards = [GMS_rewardsBlue,GMS_rewardsRed,GMS_rewardsGreen,GMS_rewardsOrange];
	GMS_patrolVehiclesLists = [GMS_AIPatrolVehiclesBlue, GMS_AIPatrolVehiclesRed, GMS_AIPatrolVehiclesGreen, GMS_AIPatrolVehiclesOrange];
	GMS_sidearmLists = [GMS_Pistols_blue, GMS_Pistols_red, GMS_Pistols_green, GMS_Pistols_orange];
	GMS_weaponsLists = [GMS_weaponlist_Blue, GMS_WeaponList_Red, GMS_WeaponList_Green, GMS_WeaponList_Orange];
	GMS_backpackLists = [GMS_backpacks_blue, GMS_backpacks_red, GMS_backpacks_red, GMS_backpacks_orange];
	GMS_headgearLists = [GMS_headgear_blue, GMS_headgear_red, GMS_headgear_green, GMS_headgear_orange];
	GMS_uniformstLists = [GMS_SkinList_blue, GMS_SkinList_red, GMS_SkinList_green, GMS_SkinList_orange];
	GMS_boxLootLists = [GMS_boxLoot_Blue, GMS_BoxLoot_Red, GMS_BoxLoot_Green, GMS_BoxLoot_Orange];
	GMS_lootCountsLists = [GMS_lootCountsBlue, GMS_lootCountsRed, GMS_lootCountsGreen, GMS_lootCountsOrange];

	//  start the main thread for the mission system which monitors missions running and stuff to be cleaned up
	[] spawn GMS_fnc_mainThread;

	// Start the helicrash monitor
	if (GMS_maxCrashSites > 0) then
	{
		private _filePath = "\x\addons\GMS\Missions\HeliCrashs\Crashes2.sqf";
		private _fileExists = if (fileExists _filePath) then {true} else {false};
		if (_fileExists) then {
			private _hellicrashMonitor = compileFinal preprocessFileLineNumbers "\x\addons\GMS\Missions\HeliCrashs\Crashes2.sqf";
			[] spawn _hellicrashMonitor;
		} else {
			[format["_initialize: fille not found: %1 ", _filePath]] call GMS_fnc_log;
		};
	};


	private _version = getText(configFile >> "GMSBuild" >> "Version");
	private _build = getText(configFile >> "GMSBuild" >> "Build");
	private _date = getText(configFile >> "GMSBuild" >> "Date");
	[format[" Initialized Server Code for Version %1 Build %2 Date %4 Loaded in %3 seconds",
		_version,
		_build,
		diag_tickTime - _loadingStartTime,
		_date]
	] call GMS_fnc_log;
};

