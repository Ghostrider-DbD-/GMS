/*
Dynamic Loot Crate Spaw System for Exile Mod for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
4-6-16

Spawn a crate on land or in the air
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

private["_trigger","_loc","_loadout","_spawnMode","_box","_chute","_lootLoaded","_useChute","_lootLoaderTries"];
private ["_crate","_lootLoaded","_chute","_crateAltitude","_crateVisualMarker","_modType","_cleaning","_lastSpawned"];

params["_trigger"];

////////////////////////////
// Pull Configurations
_spawnMode = _trigger getVariable ["spawnMode", 0];
_loadout = _trigger getVariable ["loadout",0];
_loc = _trigger getVariable ["position",[0,0,0]];
_cleaning = _trigger getVariable ["isCleaning",false];
_crateVisualMarker = _trigger getVariable ["setVisualMarker",false];
_crateAltitude = DLS_crateAltitude;
_lastSpawned = _trigger getVariable ["lastSpawned", 0];
_lootLoaderTries = _trigger getVariable ["LootTries",1];

if (blck_debugLevel > 2) then {diag_log format["spawnCrate:: mode = %1, loadout = %2 and location = %3 isCleaning = %4 createVisualMarker %5 lastActivated %6",_spawnMode,_loadout,_loc,_cleaning,_crateVisualMarker];};

if (_cleaning) exitWith {/* The trigger is in reset mode*/};
if ( ( (diag_tickTime - _lastSpawned) < DLS_minimumIntervalBetweenCrateSpawns ) && _lastSpawned > 0) exitWith {/* Must wait a certain time between each attempt to spawn a crate*/};
_trigger setTriggerArea [DLS_Trigger_Radius + 250 ,DLS_Trigger_Radius + 250,0, false];

[["DLS","A mafia supply drop was spotted at a location near you",(getPos _trigger)]] call blck_fnc_MessagePlayers;

if (_spawnMode == 2) then {_useChute = 1} else 
{if (_spawnMode == 1) then {_useChute = -1} else
{_spawnMode = selectRandom  [-1,1]};};

if (toLower(blck_modType) isEqualTo "exile") then
{
	//_box = "Exile_Container_SupplyBox";
	_box = selectRandom blck_crateTypes;	
};
if (toLower(blck_modType) isEqualTo "epoch") then
{
	_box = selectRandom blck_crateTypes;
};
_pos = [_loc, 0, 100, 0, 0, 300, 0] call bis_fnc_findSafePos;

//if (blck_debugLevel > 2) then {diag_log format["DLS:: crate spawn position = %1, _useChute = %2",_pos,_useChute];};
//diag_log format["DLS:: crate spawn position = %1, _useChute = %2",_pos,_useChute];
_crate = createVehicle [_box, [0,0,0], [], 0, "CAN_COLLIDE"];
//diag_log format["DLS_triggerActivated: crate_spawned = %1",_crate];
_crate setVariable ["triggerInactive",false];
_crate setVariable ["spawned", diag_tickTime, true];
_trigger setVariable ["crate",_crate];
_crate allowDamage false;

if (blck_debugLevel > 2) then {diag_log format["triggerActivated::-->> _lootLoaderTries = %1",_lootLoaderTries];};

_lootLoaded = [_loadout, _crate] call fn_DLS_loadLoot;

if _lootLoaded then { diag_log format["DynamicCrateSpawner:: Loot loaded successfully into parachuting crate"];};
if !(_lootLoaded) exitWith {diag_log "DyanamicCrateSpawner:: Loot not loaded correctly, aborting"; deleteVehicle _crate;};

if (_useChute isEqualTo 1) then
{
	private _chute = [_loc, _crate, true, 150] call blck_fnc_paraDropObject;
	waitUntil { uiSleep 1; (((getPos _crate) select 2) < 3) };
	detach _crate;
	deleteVehicle _chute;
};
if (_useChute isEqualTo -1) then
{
	_crate setPos _pos;
	if (_crateVisualMarker) then {[_crate] spawn fn_DLS_visualMarker;};
};
_trigger setVariable ["lastSpawned", diag_tickTime,true];  //  
_crate setVariable ["initPos", getPos _crate, true];


	

