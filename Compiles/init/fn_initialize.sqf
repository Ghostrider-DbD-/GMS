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

// Only run this on a dedicated server
if (hasInterface) exitWith 
{
	"[GMS] Mission system may only be run on a dedicate server or headless client";
};

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

	// set up the lists of available missions for each mission category
	#include "\x\addons\GMS\Missions\GMS_missionLists.sqf";
	//#include "\x\addons\GMS\Missions_GRG\GMS_missionLists.sqf";
	if (GMS_debugLevel > 0) then {["DEBUG ON: Mission Lists Loaded Successfully"] call GMS_fnc_log};
	// TODO: merge in underwater / sea missions at some point 

	//Start the mission timers
	if (GMS_enableOrangeMissions > 0) then
	{
		[_missionListOrange,_missionDirectory,_pathOrange,"OrangeMarker","orange",GMS_TMin_Orange,GMS_TMax_Orange,GMS_enableOrangeMissions] call GMS_fnc_addMissionToQue;
	};
	if (GMS_enableGreenMissions > 0) then
	{
		[_missionListGreen,_missionDirectory,_pathGreen,"GreenMarker","green",GMS_TMin_Green,GMS_TMax_Green,GMS_enableGreenMissions] call GMS_fnc_addMissionToQue;
	};
	if (GMS_enableRedMissions > 0) then
	{
		[_missionListRed,_missionDirectory,_pathRed,"RedMarker","red",GMS_TMin_Red,GMS_TMax_Red,GMS_enableRedMissions] call GMS_fnc_addMissionToQue;
	};
	if (GMS_enableBlueMissions > 0) then
	{
		[_missionListBlue,_missionDirectory,_pathBlue,"BlueMarker","blue",GMS_TMin_Blue,GMS_TMax_Blue,GMS_enableBlueMissions] call GMS_fnc_addMissionToQue;
	};

	/*
	if (GMS_numberUnderwaterDynamicMissions > 0) then 
	{
		if !(GMS_maxSeaSearchDistance == 0) then {
			[_missionListUMS,_missionDirectory,_pathUMS,"UMSMarker","Red",GMS_TMin_UMS,GMS_TMax_UMS,GMS_numberUnderwaterDynamicMissions] call GMS_fnc_addMissionToQue;
		};
	};
	*/
	if (GMS_enableScoutsMissions > 0) then
	{
		[_missionListScouts,_missionDirectory,_pathScouts,"ScoutsMarker","red",GMS_TMin_Scouts,GMS_TMax_Scouts,GMS_enableScoutsMissions] call GMS_fnc_addMissionToQue;
	};

	if (GMS_enableHunterMissions > 0) then
	{
		[_missionListHunters,_missionDirectory,_pathHunters,"HunterMarker","green",GMS_TMin_Hunter,GMS_TMax_Hunter,GMS_enableHunterMissions] call GMS_fnc_addMissionToQue;
	};

	if (GMS_enableStaticMissions > 0 && !(_missionListStatics isEqualTo [])) then // GMS_enableStaticMissions should be an integer between 1 and N
	{
		[_missionListStatics, _missionDirectory, _pathStatics,"StaticsMarker","red", GMS_TMin_Statics, GMS_TMax_Statics, GMS_enableStaticMissions] call GMS_fnc_addMissionToQue;
	};

	// Flag any class names with issues (invald classname or classname without pricing)
	{
		private _var = missionNameSpace getVariable[_x,[]];
		//[format["validating classnames and pricing for %1 | count = %2 | _x = %3",_x,count _var, _var]] call GMS_fnc_log;
		_var = [_var,true] call GMSCore_fnc_checkClassnamesArray;
		_var = [_var,true] call GMSCore_fnc_checkClassNamePrices;
		//[format["GMS_init_server: Updated %1 | count = %2 | _x = %3",_x,count _var, _var]] call GMS_fnc_log;

		//  NOTE: The lists below may need updating depending on what you have in your config files
	} forEach [
		"GMS_patrolHelisBlue",
		"GMS_patrolHelisRed",
		"GMS_patrolHelisGreen",
		"GMS_patrolHelisOrange",
		"GMS_AIPatrolVehiclesBlue",
		"GMS_AIPatrolVehiclesRed",
		"GMS_AIPatrolVehiclesGreen",
		"GMS_AIPatrolVehiclesOrange",
		"GMS_tools",
		"GMS_buildingMaterials",
		"GMS_NVG",
		"GMS_specialItems",
		"GMS_ConsumableItems",
		"GMS_vests_blue",
		"GMS_vests_red",
		"GMS_vests_green",
		"GMS_vests_orange",
		"GMS_SkinList_blue",
		"GMS_SkinList_red",
		"GMS_SkinList_green",
		"GMS_SkinList_orange",
		"GMS_headgear_blue",
		"GMS_headgear_red",
		"GMS_headgear_green",
		"GMS_headgear_orange",
		"GMS_backpacks_blue",
		"GMS_backpacks_red",
		"GMS_backpacks_green",
		"GMS_WeaponList_Blue",
		"GMS_WeaponList_Red",
		"GMS_WeaponList_Green",
		"GMS_WeaponList_Orange"
	];

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

