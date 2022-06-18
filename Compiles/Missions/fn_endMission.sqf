/*
	schedules deletion of all remaining alive AI and mission objects.
	Updates the mission que.
	Updates mission markers.
	By Ghostrider-GRG-
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp"
	
///////////////////////////////////////////////////////////////////////
//  MAIN FUNCTION STARTS HERE
//////////////////////////////////////////////////////////////////////

params[
	"_key",
	"_missionData",
	"_endMsg",
	"_markerData",
	"_missionLootConfigs",
	"_isScuba",
	"_endCondition"
];

_missionData params [
	"_coords",
	"_mines",
	"_objects",
	"_hiddenObjects",
	"_crates",
	"_missionAI",
	"_assetSpawned",
	"_aiVehicles",
	"_lootVehicles",
	"_markers"
];	

_markerData params [
	"_markerName",
	"_markerMissionName"
];

_missionLootConfigs params [
	"_spawnCratesTiming", 
	"_loadCratesTiming",		
	"_crateLoot", 
	"_lootCounts"
	// Ignore the remaining entries in the configuration
];
[format["_endMission (56) _endMsg = %1",_endMsg]] call blck_fnc_log;
[format["_endMission (57) _lootCounts = %1",_lootCounts]] call blck_fnc_log;
[format["_endMission (58) _crateLoot = %1",_crateLoot]] call blck_fnc_log;
[format["_endMission (59) _crates = %1",_crates]] call blck_fnc_log;
[format["_endMission (60) _mines = %1",_mines]] call blck_fnc_log;
[format["_endMission (61) _objects = %1",_objects]] call blck_fnc_log;
[format["_endMission (62) _missionAI = %1",_missionAI]] call blck_fnc_log;
[format["_endMission (63) _aiVehicles = %1",_aiVehicles]] call blck_fnc_log;

{[_x] call blck_fnc_deleteMarker} forEach (_markers);

{
	private _el = _x;
	if ((_el select 0) == _key) exitWith 
	{
		#define noActive 3
		private _activeMissions = _el select noActive;
		_el set[noActive, _activeMissions - 1];
	};
} forEach blck_missionData;

switch (_endCondition) do 
{
	case -1: {
			[format["_endMission (93): _exception -1 | _mines %1 | _crates %2 | count _objects %3 | count _missionAI %4 ",_mines,_crates,count _objects, count _missionAI]] call blck_fnc_log;
			blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime)];			
			[_mines, 0] call GMS_fnc_deleteObjectsMethod;	
			[_crates, 0] call GMS_fnc_deleteObjectsMethod;
			[_objects, 0] call GMS_fnc_deleteObjectsMethod;				
			[_missionAI, 0] call GMS_fnc_deleteObjectsMethod;				
			[_aiVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[_lootVehicles, 0] call GMS_fnc_deleteObjectsMethod;
	};
	case 1: {  // Normal End
			[format["_endMission (102): _exception 1 (normal ending) | _mines %1 | _crates %2 | count _objects %3 | count _missionAI %4 ",_mines,_crates,count _objects, count _missionAI]] call blck_fnc_log;
			if (blck_useSignalEnd) then
			{
				[_crates select 0,150] spawn GMS_fnc_visibleMarker;
				{
					_x enableRopeAttach true;
				}forEach _crates;
			};
			
			[["end",_endMsg,_markerMissionName]] call blck_fnc_messageplayers;

			[_coords, _markerName] spawn blck_fnc_missionCompleteMarker;

			/*
			{
				if !(_x getVariable["lootLoaded",false] || {_endCondition == 1}) then // dont load loot if the asset was killed
				{
					[_x,_crateLoot,_lootCounts] call blck_fnc_fillBoxes;
					[format["_endMission: crate %1 contains weapons %2",_x,getWeaponCargo _x]] call blck_fnc_log;
					[format["_endMission: crate %1 contains items %2",_x,getItemCargo _x]] call blck_fnc_log; 
					[format["_endMission: crate %1 contains magazines %2",_x, getMagazinecargo _x]] call blck_fnc_log;
				};
			}forEach _crates;
			*/
			{
				private ["_v","_posnVeh"];
				_posnVeh = blck_monitoredVehicles find _x;  // returns -1 if the vehicle is not in the array else returns 0-(count blck_monitoredVehicles -1)
				if (_posnVeh >= 0) then
				{
					(blck_monitoredVehicles select _posnVeh) setVariable ["missionCompleted", diag_tickTime];
				} else {
					_x setVariable ["missionCompleted", diag_tickTime];
					blck_monitoredVehicles pushback _x;
				};
			} forEach _aiVehicles;

			[_coords,_mines,_objects,_hiddenObjects,_missionAI, blck_AliveAICleanUpTimer,blck_cleanupCompositionTimer,_isScuba] call _fn_missionCleanup;
			[format["Mission Completed | _coords %1 : _markerClass %2 :  _markerMissionName %3",_coords,_markerName,_markerLabel]] call blck_fnc_log;			
	};
	case 2: {  // Aborted for moving a crate 
			#define illegalCrateMoveMsg "Crate moved before mission completed"
			[["warming",illegalCrateMoveMsg,_markerLabel]] call blck_fnc_messageplayers;
			blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime)];
			[_mines, 0] call GMS_fnc_deleteObjectsMethod;	
			[_crates, 0] call GMS_fnc_deleteObjectsMethod;
			[_objects, 0] call GMS_fnc_deleteObjectsMethod;				
			[_missionAI, 0] call GMS_fnc_deleteObjectsMethod;				
			[_aiVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[_lootVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[format["Mission Aborted <CRATE MOVED> | _coords %1 : _markerClass %2 :  _markerMissionName %3",_coords,_markerName,_markerLabel]] call blck_fnc_log;
	};
	case 3: {  // Mision aborted for killing an asset
			[["warning",_endMsg,_markerLabel]] call blck_fnc_messageplayers;
			blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime)];
			[_mines, 0] call GMS_fnc_deleteObjectsMethod;	
			[_crates, 0] call GMS_fnc_deleteObjectsMethod;
			[_objects, 0] call GMS_fnc_deleteObjectsMethod;				
			[_missionAI, 0] call GMS_fnc_deleteObjectsMethod;				
			[_aiVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[_lootVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[format["Mission Aborted <ASSET KILLED> | _coords %1 : _markerClass %2 :  _markerMissionName %3",_coords,_markerName,_markerLabel]] call blck_fnc_log;
	};
	case 4: {
			[format["_endMission (153): _exception 4 | count _mines %1 | count _crates %2 | count _objects %3 | count _missionAI %4 ",_mines,_crates,count _objects, count _missionAI]] call blck_fnc_log;
			blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime)];
			if (blck_useSignalEnd) then
			{
				[_crates select 0,150] spawn GMS_fnc_visibleMarker;
				{
					_x enableRopeAttach true;
				}forEach _crates;
			};
			
			[["end",_endMsg,_markerMissionName]] call blck_fnc_messageplayers;

			[_coords, _markerName] spawn blck_fnc_missionCompleteMarker;

			{
				private ["_v","_posnVeh"];
				_posnVeh = blck_monitoredVehicles find _x;  // returns -1 if the vehicle is not in the array else returns 0-(count blck_monitoredVehicles -1)
				if (_posnVeh >= 0) then
				{
					(blck_monitoredVehicles select _posnVeh) setVariable ["missionCompleted", diag_tickTime];
				} else {
					_x setVariable ["missionCompleted", diag_tickTime];
					blck_monitoredVehicles pushback _x;
				};
			} forEach _aiVehicles;			
			[_mines, 0] call GMS_fnc_deleteObjectsMethod;	
			[_crates, 1200] call GMS_fnc_deleteObjectsMethod;
			[_objects, 0] call GMS_fnc_deleteObjectsMethod;				
			[_missionAI, 0] call GMS_fnc_deleteObjectsMethod;				
			[_aiVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[_lootVehicles, 0] call GMS_fnc_deleteObjectsMethod;			
	};	

	case 5: {
			[format["_endMission (190): _exception 5 | count _mines %1 | count _crates %2 | count _objects %3 | count _missionAI %4 ",_mines,_crates,count _objects, count _missionAI]] call blck_fnc_log;
			blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime)];
			if (blck_useSignalEnd) then
			{
				[_crates select 0,150] spawn GMS_fnc_visibleMarker;
				{
					_x enableRopeAttach true;
				}forEach _crates;
			};
			
			[["end",_endMsg,_markerMissionName]] call blck_fnc_messageplayers;

			[_coords, _markerName] spawn blck_fnc_missionCompleteMarker;

			{
				private ["_v","_posnVeh"];
				_posnVeh = blck_monitoredVehicles find _x;  // returns -1 if the vehicle is not in the array else returns 0-(count blck_monitoredVehicles -1)
				if (_posnVeh >= 0) then
				{
					(blck_monitoredVehicles select _posnVeh) setVariable ["missionCompleted", diag_tickTime];
				} else {
					_x setVariable ["missionCompleted", diag_tickTime];
					blck_monitoredVehicles pushback _x;
				};
			} forEach _aiVehicles;			
			[_mines, 0] call GMS_fnc_deleteObjectsMethod;	
			[_crates, 120] call GMS_fnc_deleteObjectsMethod;
			[_objects, 0] call GMS_fnc_deleteObjectsMethod;				
			[_missionAI, 0] call GMS_fnc_deleteObjectsMethod;				
			[_aiVehicles, 0] call GMS_fnc_deleteObjectsMethod;
			[_lootVehicles, 0] call GMS_fnc_deleteObjectsMethod;			
	};	
};
{
		[format["_endMission: crate %1 contains weapons %2",_x,getWeaponCargo _x]] call blck_fnc_log;
		[format["_endMission: crate %1 contains items %2",_x,getItemCargo _x]] call blck_fnc_log; 
		[format["_endMission: crate %1 contains magazines %2",_x, getMagazinecargo _x]] call blck_fnc_log;					
}forEach _crates;
blck_missionsRun = blck_missionsRun + 1;