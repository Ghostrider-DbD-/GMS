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
if !(isNil "blck_missionSystemRunning") exitWith {"[blckeagls] Mission System already initialized"};
blck_missionSystemRunning = true;

// Only run this on a dedicated server
if ( !(isServer) || hasInterface) exitWith
{
	"[blckeagls] Mission system may only be run on a dedicate server or headless client";
};
diag_log format["[blckeagls] Loading blackeagls at %1",diag_tickTime];

waitUntil {!isNil "GMSCore_Initialized"}; //  && !isNil "GMS_side" && !isNil "GMS_unitType"; uisleep 5};

// find and set Mod
blck_modType = GMS_modType;
publicVariable "blck_modType";
diag_log format["[blckeagls] blck_modType = %1",blck_modType];

blck_AI_Side = GMS_Side;
blck_unitType = GMS_unitType;
diag_log format["[blckeagls] blck_ai_side = %1 | blck_unitType = %2",blck_AI_Side,blck_unitType];

// Just some housekeeping for ghost.
private _blck_loadingStartTime = diag_tickTime;
#include "\q\addons\custom_server\init\build.sqf";

// compile functions
[] call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_functions.sqf";
diag_log format["[blckeagls] Loaded Functions at %1",diag_tickTime];
// Load Configs
[] call compile preprocessfilelinenumbers "\q\addons\custom_server\Configs\blck_configs.sqf";

diag_log format["[blckeagls] Loaded Configs at %1",diag_tickTime];
waitUntil{(!isNil "blck_useHC") && (!isNil "blck_simulationManager") && (!isNil "blck_debugOn") && (!isNil "blck_AI_Side") && !(isNil "blck_configs_loaded")};

{
	[format["blck_init_server: validating classnames and pricing for %1",_x]] call blck_fnc_log;
	//_x = [_x,true] call GMS_fnc_checkClassnamesArray;
	//_x = [_x,true] call GMS_fnc_checkClassNamePrices;
} forEach [
	blck_patrolHelisBlue,
	blck_patrolHelisRed,
	blck_patrolHelisGreen,
	blck_patrolHelisOrange,
	blck_AIPatrolVehiclesBlue,
	blck_AIPatrolVehiclesRed,
	blck_AIPatrolVehiclesGreen,
	blck_AIPatrolVehiclesOrange,
	blck_tools,
	blck_buildingMaterials,
	blck_NVG,
	blck_specialItems,
	blck_ConsumableItems,
	blck_vests_blue,
	blck_vests_red,
	blck_vests_green,
	blck_vests_orange,
	blck_SkinList_blue,
	blck_SkinList_red,
	blck_SkinList_green,
	blck_SkinList_orange,
	blck_headgear_blue,
	blck_headgear_red,
	blck_headgear_green,
	blck_headgear_orange,
	blck_backpacks_blue,
	blck_backpacks_red,
	blck_backpacks_green,
	blck_WeaponList_Blue,
	blck_WeaponList_Red,
	blck_WeaponList_Green,
	blck_WeaponList_Orange
];
/*
blck_gearBlue = [
	[
		[
			blck_WeaponList_Blue,
			blck_chancePrimary,
			blck_chanceOpticsPrimary,
			blck_chanceMuzzlePrimary,
			blck_chancePointerPrimary,
			blck_blacklistedPrimaryWeapons
		], // Just adding together all the subclasses of primary weaponss
		[
			blck_Pistols_blue, 
			blck_chanceSecondary, 
			blck_chanceOpticsSecondary, 
			blck_chanceMuzzleSecondary, 
			blck_chancePointerSecondary,
			blck_blacklistedSecondaryWeapons
		],
		[blck_explosives, blck_chanceThowable,GMSAI_blackListedThrowables],
		[blck_headgear_blue, blck_chanceHeadgear,blck_blacklistedHeadgear],
		[blck_SkinList_blue, blck_chanceUniform,blck_blacklistedUniforms],
		[blck_vests_blue, blck_chanceVest,blck_blacklistedVests],
		[blck_backpacks_blue, blck_chanceBackpack,blck_blacklistedBackpacks],
		[blck_launcherTypes, 1.0,blck_blacklistedLaunchersAndSwingWeapons],  // this is determined elsewhere for GMSAI
		[blck_NVG, 1.0,[]],  // this is determined elsewhere for GMSAI
		[blck_binocs,blck_chanceBinoc,[]],
		[blck_ConsumableItems, 1.0,[]],
		[blck_medicalItems, 1.0,[]],
		[blck_tools, 1.0,[]]
	]
];
blck_gearRed = [
	[
		[
			blck_WeaponList_Red,
			blck_chancePrimary,
			blck_chanceOpticsPrimary,
			blck_chanceMuzzlePrimary,
			blck_chancePointerPrimary,
			blck_blacklistedPrimaryWeapons
		], // Just adding together all the subclasses of primary weaponss
		[
			blck_Pistols_Red, 
			blck_chanceSecondary, 
			blck_chanceOpticsSecondary, 
			blck_chanceMuzzleSecondary, 
			blck_chancePointerSecondary,
			blck_blacklistedSecondaryWeapons
		],
		[blck_explosives, blck_chanceThowable,[]],
		[blck_headgear_Red, blck_chanceHeadgear,blck_blacklistedHeadgear],
		[blck_SkinList_Red, blck_chanceUniform,blck_blacklistedUniforms],
		[blck_vests_Red, blck_chanceVest,blck_blacklistedVests],
		[blck_backpacks_Red, blck_chanceBackpack,blck_blacklistedBackpacks],
		[blck_launcherTypes, 1.0 ,blck_blacklistedLaunchersAndSwingWeapons],  // this is determined elsewhere for GMSAI
		[blck_NVG, 1.0, []],  // this is determined elsewhere for GMSAI
		[blck_binocs,blck_chanceBinoc,[]],
		[blck_ConsumableItems, 1.0, []],
		[blck_medicalItems, 1.0, []],
		[blck_tools, 1.0, []]
	]
];
blck_gearGreen = [
	[
		[
			blck_WeaponList_Green,
			blck_chancePrimary,
			blck_chanceOpticsPrimary,
			blck_chanceMuzzlePrimary,
			blck_chancePointerPrimary,
			blck_blacklistedPrimaryWeapons
		], // Just adding together all the subclasses of primary weaponss
		[
			blck_Pistols_Green, 
			blck_chanceSecondary, 
			blck_chanceOpticsSecondary, 
			blck_chanceMuzzleSecondary, 
			blck_chancePointerSecondary,
			blck_blacklistedSecondaryWeapons
		],
		[blck_explosives, blck_chanceThowable,[]],
		[blck_headgear_Green, blck_chanceHeadgear,blck_blacklistedHeadgear],
		[blck_SkinList_Green, blck_chanceUniform,blck_blacklistedUniforms],
		[blck_vests_Green, blck_chanceVest,blck_blacklistedVests],
		[blck_backpacks_Green, blck_chanceBackpack,blck_blacklistedBackpacks],
		[blck_launcherTypes, 1.0 ,blck_blacklistedLaunchersAndSwingWeapons],  // this is determined elsewhere for GMSAI
		[blck_NVG, 1.0, []],  // this is determined elsewhere for GMSAI
		[blck_binocs,blck_chanceBinoc,[]],
		[blck_ConsumableItems, 1.0, []],
		[blck_medicalItems, 1.0, []],
		[blck_tools, 1.0, []]
	];
];
blck_gearOrange = [
	[
		[
			blck_WeaponList_Orange,
			blck_chancePrimary,
			blck_chanceOpticsPrimary,
			blck_chanceMuzzlePrimary,
			blck_chancePointerPrimary,
			blck_blacklistedPrimaryWeapons
		], // Just adding together all the subclasses of primary weaponss
		[
			blck_Pistols_Orange, 
			blck_chanceSecondary, 
			blck_chanceOpticsSecondary, 
			blck_chanceMuzzleSecondary, 
			blck_chancePointerSecondary,
			blck_blacklistedSecondaryWeapons
		],
		[blck_explosives, blck_chanceThowable,[]],
		[blck_headgear_Orange, blck_chanceHeadgear,blck_blacklistedHeadgear],
		[blck_SkinList_Orange, blck_chanceUniform,blck_blacklistedUniforms],
		[blck_vests_Orange, blck_chanceVest,blck_blacklistedVests],
		[blck_backpacks_Orange, blck_chanceBackpack,blck_blacklistedBackpacks],
		[blck_launcherTypes, 1.0 ,blck_blacklistedLaunchersAndSwingWeapons],  // this is determined elsewhere for GMSAI
		[blck_NVG, 1.0, []],  // this is determined elsewhere for GMSAI
		[blck_binocs,blck_chanceBinoc,[]],
		[blck_ConsumableItems, 1.0, []],
		[blck_medicalItems, 1.0, []],
		[blck_tools, 1.0, []]
	]
];
*/
if (blck_debugOn) then {[format["blck_AI_Side = %1",blck_AI_Side]] call blck_fnc_log};

// This block waits for the mod to start but is disabled for now
if ((tolower blck_modType) isEqualto "epoch") then {
	diag_log "[blckeagls] Waiting until EpochMod is ready...";
	if !(blck_debugOn) then {waitUntil {!isnil "EPOCH_SERVER_READY"}};
	diag_log "[blckeagls] EpochMod is ready...loading blckeagls";
};
if ((toLower blck_modType) isEqualTo "exile") then
{
	diag_log "[blckeagls] Waiting until ExileMod is ready ...";
	if !(blck_debugOn) then {waitUntil {!isNil "PublicServerIsLoaded"}};
	diag_log "[blckeagls] Exilemod is ready...loading blckeagls";	
};
if ((toLower blck_modType) isEqualTo "default") then 
{
	["[blckeagls] Configuring Mission System for Default Settings..."] call blck_fnc_log;
};


// Load any user-defined specifications or overrides
//  HINT: Use these for map-specific settings
#include "\q\addons\custom_server\Configs\blck_custom_config.sqf";

if (blck_debugOn) then {[format["[blckeagls] Custom Configurations Loaded at %1",diag_tickTime]] call blck_fnc_log};
if (blck_debugOn) then {[format["[blckeagls] debug mode settings:blck_debugON = %1 | blck_debugLevel = %2",blck_debugON,blck_debugLevel]] call blck_fnc_log};

// Load vaariables used to store information for the mission system.
[] call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_variables.sqf";
if (blck_debugOn) then {diag_log format["[blckeagls] Variables loaded at %1",diag_tickTime]};

// configure dynamic simulation management is this is being used.
if (blck_simulationManager == 2) then 
{
	"Group" setDynamicSimulationDistance 1800;
	enableDynamicSimulationSystem true;
};

// spawn map addons to give the server time to position them before spawning in crates etc.
if (blck_spawnMapAddons) then
{
	call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\MapAddons\MapAddons_init.sqf";
}else{
	["Map Addons disabled"] call blck_fnc_log;
};

// find and set Mapcenter and size
call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\init\GMS_fnc_findWorld.sqf";
if (blck_debugOn) then {diag_log "[blckeagls] Map-specific information defined"};


// set up the lists of available missions for each mission category
#include "\q\addons\custom_server\Missions\GMS_missionLists.sqf";
if (blck_debugOn) then {diag_log "[blckeagls] Mission Lists Loaded Successfully"};
call compile preprocessfilelinenumbers "\q\addons\custom_server\Missions\Static\GMS_StaticMissions_init.sqf";
call compile preprocessfilelinenumbers "q\addons\custom_server\Missions\UMS\GMS_UMS_init.sqf";  // loads functions and spawns any static missions.
if (blck_debugOn) then {diag_log "[blckeagls] blck_init_server: ->> Static and UMS systems initialized."};

switch (blck_simulationManager) do
{
	case 2: {["dynamic simulation manager enabled"] call blck_fnc_log}; 
	case 1: {["blckeagls simulation manager enabled"] call blck_fnc_log};
	case 0: {["[blckeagls] simulation management disabled"] call blck_fnc_log};
};

[format["Version %1 Build %2 Loaded in %3 seconds",blck_versionNumber,blck_buildNumber,diag_tickTime - _blck_loadingStartTime]] call blck_fnc_log;

/*
if ( !(blck_debugON) && (blck_debugLevel isEqualTo 0)) then
{
	[format["Waiting for players to join ----    >>>>"]] call blck_fnc_log;
	//waitUntil{{isPlayer _x}count allPlayers > 0};
	["Player Connected, spawning missions"] call blck_fnc_log;
} else {
	["Debug mode ON, proceding without players"] call blck_fnc_log;
};
*/

if (blck_spawnStaticLootCrates) then
{
	[] spawn compile preprocessfilelinenumbers "\q\addons\custom_server\SLS\SLS_init.sqf";
	["SLS::  -- >>  Static Loot Spawner Done"] call blck_fnc_log;
}else{
	["SLS::  -- >>  Static Loot Spawner disabled"] call blck_fnc_log;
};

if (blck_blacklistTraderCities) then
{
	[] spawn compile preprocessfilelinenumbers "\q\addons\custom_server\init\GMS_fnc_getTraderCites.sqf";
};

if (blck_ai_offload_to_client) then 
{
	if (blck_useHC) then 
	{
		blck_useHC = false;
		["blck_useHC has been diabled to allow offloading to clients",'warning'] call blck_fnc_log;
	};
	// Broadcast some code to clients
	publicVariable "blck_fnc_setNextWaypoint";
	publicVariable "blck_EH_unitWeaponReloaded";
	publicVariable "blck_EH_AIfiredNear";
	publicVariable "blck_fnc_processAIfiredNear";
	publicVariable "blck_EH_vehicleGetOut";
	publicVariable "blck_fnc_handleVehicleGetOut";
	publicVariable "blck_EH_vehicleManGetOut";
	publicVariable "blck_fnc_checkForEmptyVehicle";
	publicVariable "blck_fnc_handleEmptyVehicle";
	publicVariable "blck_fnc_unlockVehicle";
	publicVariable "blck_EH_AIKilled";
	publicVariable "blck_fnc_processAIKill";
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

call compile preprocessfilelinenumbers "\q\addons\custom_server\DLS\DLS_init.sqf";
#endif

// Setup a group for AI corpses
blck_graveyardGroup = createGroup [blck_AI_Side,false];
blck_graveyardGroup setGroupId ["blck_graveyard"];
blck_graveyardGroup setVariable ["blck_group",1];

//  start the main thread for the mission system which monitors missions running and stuff to be cleaned up
[] spawn blck_fnc_mainThread;
blck_pvs_version = blck_versionNumber;
publicVariable "blck_pvs_version";
[format["Version %1 Build %2 Date %4 Loaded in %3 seconds",blck_versionNumber,blck_buildNumber,diag_tickTime - _blck_loadingStartTime,blck_buildDate]] call blck_fnc_log;

/*
for "_i" from 1 to 100 do
{
	private _mPos = [] call blck_fnc_findSafePosn; 
	private _mkr = createMarker[format["debug%1",_i],_mPos];
	_mkr setMarkerColor "COLORYELLOW";
	_mkr setMarkerType "hd_dot";
};