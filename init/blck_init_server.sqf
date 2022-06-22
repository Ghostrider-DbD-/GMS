/*
	By Ghostrider-GRG-

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

///////////////////////////////////////////////
//  prevent the system from being started twice
//////////////////////////////////////////////
if !(isNil "blck_missionSystemRunning") exitWith {"[GMS] Mission System already initialized"};
blck_missionSystemRunning = true;

// Only run this on a dedicated server
if (hasInterface) exitWith 
{
	"[GMS] Mission system may only be run on a dedicate server or headless client";
};
waitUntil {!isNil "GMSCore_Initialized"}; 
diag_log format["[GMS] Loading GMS at %1",diag_tickTime];
diag_log format["[GMS] GMS_modType = %1 | GMS_side %2 | GMS_unitType %3",GMS_modType,GMS_side,GMS_unitType];

// Just some housekeeping for ghost.
private _blck_loadingStartTime = diag_tickTime;

// compile functions
[] call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_functions.sqf";
diag_log format["[GMS] Loaded Functions at %1",diag_tickTime];
// Load Configs
[] call compile preprocessfilelinenumbers "\q\addons\custom_server\Configs\blck_configs.sqf";

diag_log format["[GMS] Loaded Configs at %1",diag_tickTime];

waitUntil{(!isNil "blck_simulationManager") && {(!isNil "blck_debugOn") && {!(isNil "blck_configs_loaded")}}};

{
	private _var = missionNameSpace getVariable[_x,[]];
	[format["validating classnames and pricing for %1 | count = %2 | _x = %3",_x,count _var, _var]] call blck_fnc_log;
	_var = [_var,true] call GMS_fnc_checkClassnamesArray;
	_var = [_var,true] call GMS_fnc_checkClassNamePrices;
	//[format["blck_init_server: Updated %1 | count = %2 | _x = %3",_x,count _var, _var]] call blck_fnc_log;
} forEach [
	"blck_patrolHelisBlue",
	"blck_patrolHelisRed",
	"blck_patrolHelisGreen",
	"blck_patrolHelisOrange",
	"blck_AIPatrolVehiclesBlue",
	"blck_AIPatrolVehiclesRed",
	"blck_AIPatrolVehiclesGreen",
	"blck_AIPatrolVehiclesOrange",
	"blck_tools",
	"blck_buildingMaterials",
	"blck_NVG",
	"blck_specialItems",
	"blck_ConsumableItems",
	"blck_vests_blue",
	"blck_vests_red",
	"blck_vests_green",
	"blck_vests_orange",
	"blck_SkinList_blue",
	"blck_SkinList_red",
	"blck_SkinList_green",
	"blck_SkinList_orange",
	"blck_headgear_blue",
	"blck_headgear_red",
	"blck_headgear_green",
	"blck_headgear_orange",
	"blck_backpacks_blue",
	"blck_backpacks_red",
	"blck_backpacks_green",
	"blck_WeaponList_Blue",
	"blck_WeaponList_Red",
	"blck_WeaponList_Green",
	"blck_WeaponList_Orange"
];

// This block waits for the mod to start but is disabled for now
if ((toLowerANSI GMS_modType) isEqualto "epoch") then {
	diag_log "[GMS] Waiting until EpochMod is ready...";
	if !(blck_debugOn) then {waitUntil {!isnil "EPOCH_SERVER_READY"}};
	diag_log "[GMS] EpochMod is ready...loading blckeagls";
};
if ((toLowerANSI GMS_modType) isEqualTo "exile") then
{
	diag_log "[GMS] Waiting until ExileMod is ready ...";
	if !(blck_debugOn) then {waitUntil {!isNil "PublicServerIsLoaded"}};
	diag_log "[GMS] Exilemod is ready...loading blckeagls";	
};
if ((toLowerANSI GMS_modType) isEqualTo "default") then 
{
	["[GMS] Configuring Mission System for Default Settings..."] call blck_fnc_log;
};


// Load any user-defined specifications or overrides
//  HINT: Use these for map-specific settings
#include "\q\addons\custom_server\Configs\blck_custom_config.sqf";

if (blck_debugOn) then {[format["[GMS] Custom Configurations Loaded at %1",diag_tickTime]] call blck_fnc_log};
if (blck_debugOn) then {[format["[GMS] debug mode settings:blck_debugON = %1 | blck_debugLevel = %2",blck_debugON,blck_debugLevel]] call blck_fnc_log};

// Load vaariables used to store information for the mission system.
[] call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_variables.sqf";
if (blck_debugOn) then {diag_log format["[GMS] Variables loaded at %1",diag_tickTime]};

// configure dynamic simulation management is this is being used.
if (blck_simulationManager == 2) then 
{
	"Group" setDynamicSimulationDistance 1800;
	enableDynamicSimulationSystem true;
};

// find and set Mapcenter and size
call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\init\GMS_fnc_findWorld.sqf";
if (blck_debugOn) then {diag_log "[GMS] Map-specific information defined"};


// set up the lists of available missions for each mission category
#include "\q\addons\custom_server\Missions\GMS_missionLists.sqf";
if (blck_debugOn) then {diag_log "[GMS] Mission Lists Loaded Successfully"};
// TODO: merge in underwater / sea missions at some point 

switch (blck_simulationManager) do
{
	case 2: {["dynamic simulation manager enabled"] call blck_fnc_log}; 
	case 1: {["[GMS] simulation manager enabled"] call blck_fnc_log};
	case 0: {["[GMS] simulation management disabled"] call blck_fnc_log};
};

if (blck_blacklistTraderCities) then
{
	[] spawn compile preprocessfilelinenumbers "\q\addons\custom_server\init\GMS_fnc_getTraderCites.sqf";
};


_fn_setupLocationType = {
	params[	"_locationType"];
	private _locations = nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), [_locationType], worldSize];	
	_locations	
};

if (isNil "blck_crateMoveAllowed") then {blck_crateMoveAllowed = false};

private _villages = ["NameVillage"] call _fn_setupLocationType;
private _cites = ["NameCity"] call _fn_setupLocationType;
private _capitals = ["NameCityCapital"] call _fn_setupLocationType;
private _marine = ["NameMarine"] call _fn_setupLocationType;
private _other = ["NameLocal"] call _fn_setupLocationType;
private _airport = ["Airport"] call _fn_setupLocationType;

blck_townLocations = _villages + _cites + _capitals + _marine + _other + _airport;

//Start the mission timers
if (blck_enableOrangeMissions > 0) then
{
	[_missionListOrange,_pathOrange,"OrangeMarker","orange",blck_TMin_Orange,blck_TMax_Orange,blck_enableOrangeMissions] call blck_fnc_addMissionToQue;
};
if (blck_enableGreenMissions > 0) then
{
	[_missionListGreen,_pathGreen,"GreenMarker","green",blck_TMin_Green,blck_TMax_Green,blck_enableGreenMissions] call blck_fnc_addMissionToQue;
};
if (blck_enableRedMissions > 0) then
{
	[_missionListRed,_pathRed,"RedMarker","red",blck_TMin_Red,blck_TMax_Red,blck_enableRedMissions] call blck_fnc_addMissionToQue;
};
if (blck_enableBlueMissions > 0) then
{
	[_missionListBlue,_pathBlue,"BlueMarker","blue",blck_TMin_Blue,blck_TMax_Blue,blck_enableBlueMissions] call blck_fnc_addMissionToQue;
};
if (blck_numberUnderwaterDynamicMissions > 0) then 
{
	if !(blck_maxSeaSearchDistance == 0) then {
		[_missionListUMS,_pathUMS,"UMSMarker","Red",blck_TMin_UMS,blck_TMax_UMS,blck_numberUnderwaterDynamicMissions] call blck_fnc_addMissionToQue;
	};
};
#ifdef GRGserver
["Running GhostriderGaming Version"] call blck_fnc_log;
if (blck_enableScoutsMissions > 0) then
{
	[_missionListScouts,_pathScouts,"ScoutsMarker","red",blck_TMin_Scouts,blck_TMax_Scouts,blck_enableScoutsMissions] call blck_fnc_addMissionToQue;
};

if (blck_enableHunterMissions > 0) then
{
	[_missionListHunters,_pathHunters,"HunterMarker","green",blck_TMin_Hunter,blck_TMax_Hunter,blck_enableHunterMissions] call blck_fnc_addMissionToQue;
};

// Running new version of Crash sites.
if (blck_maxCrashSites > 0) then
{
	[] execVM "\q\addons\custom_server\Missions\HeliCrashs\Crashes2.sqf";
};
#endif

//  start the main thread for the mission system which monitors missions running and stuff to be cleaned up
[] spawn blck_fnc_mainThread;
private _version = getText(configFile >> "GMSBuild" >> "Version");
private _build = getText(configFile >> "GMSBuild" >> "Build");
private _date = getText(configFile >> "GMSBuile" >> "Date");
[format["Version %1 Build %2 Date %4 Loaded in %3 seconds",_version,_build,diag_tickTime - _blck_loadingStartTime,_date]] call blck_fnc_log;
