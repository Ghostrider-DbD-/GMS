/*
Dynamic Loot Crate Spawner for Exile Mod for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
4-6-16

https://community.bistudio.com/wiki/createTrigger
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
private ["_trigger","_index","_triggerName"];
if (blck_debugLevel > 2) then {diag_log format["DLS:: DLS_InitializeTriggers::->> DLS_Spawn_Locations = %1",DLS_Spawn_Locations];};
_index = 1;
{
	//diag_log format["DLS_InitializeTriggers::-->> Initializing Trigger at %1", _x];
	_trigger = createTrigger ["EmptyDetector", _x select 0];  
	_trigger setTriggerArea [DLS_Trigger_Radius,DLS_Trigger_Radius,0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	//_trigger setTriggerTimeout [10, 90, 180, true];
	_trigger setTriggerStatements ["{if (isPlayer _x) exitWith {1}} count thisList != 0;","_nul = [thisTrigger] spawn fn_DLS_triggerActivated","_nul = [thisTrigger] spawn fn_DLS_triggerDeactivated"];
	_trigger setVariable ["position", _x select 0];
	_trigger setVariable [playerNear,false,true];
	_trigger setVariable ["lastSpawned", 0, true];
	_trigger setVariable ["crateSpawned", false, true];
	_trigger setVariable ["crate", objNull, true];
	_trigger setVariable ["spawnMode", _x select 1, true];
	_trigger setVariable ["loadout", _x select 2, true];
	_trigger setVariable ["isCleaning",false];
	_trigger setVariable ["setVisualMarker",DLS_createVisualMarker,_x select 3];
	_trigger setVariable ["LootTries", _x select 4, true];	
	//diag_log format["DLS:: Initializing Trigger at %1",_x select 0];
	
	_blck_localMissionMarker = [ format["DLS%1%2",_x select 0, _x select 1],(getPos _trigger),"Mafia","","ColorEAST",["mil_triangle",[]]];
	//diag_log format["[blckeagls] DLS:: spawning Map marker at %1",_x];
	// params["_missionType","_markerPos","_markerLabel","_markerLabelType","_markerColor","_markerType"];
	[_blck_localMissionMarker] call blck_fnc_spawnMarker;
	
	//DLS_triggers pushback _trigger;
} forEach DLS_Spawn_Locations;
if (blck_debugLevel > 2) then {diag_log format["DLS:: Initialized Triggers with DLS_Spawn_Locations = %1",DLS_Spawn_Locations];};
diag_log "DLS:: Triggers Initialized";
