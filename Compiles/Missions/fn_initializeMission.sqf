/*
	blck_fnc_initializeMission 

	Perform all functions necessary to initialize a mission.
	A marker is created and mission info is added to blck_initializedMissionsList
	 
	[_mrkr,_difficulty,_m] call blck_fnc_initializeMission;
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
// Need to debug for GM map
private ["_coords","_coordArray","_return"];
params[
	"_key",  			// This key can be used to seach the list of available mission types to update that list when a mission is completed or times out
	"_missionConfigs",  // Selfevident but this is an array with all configs for the mission 
	"_missionCount"		// The number of missions run thus far which is used to unsure each marker has a unique name 
];

 _missionConfigs params [
	"_difficulty",
	"_markerConfigs",
	"_endCondition",	
	"_isscubamission",	
	"_missionLootConfigs",
	"_aiConfigs",
	"_missionMessages",	
	"_paraConfigs",	
	"_defaultMissionLocations"
];

_markerConfigs params[
	"_markerName",  //  The unique text identifier for the marker
	"_markerMissionName", // Name used for setMarkerText - does not need to be unique
	"_markerType", 
	"_markerColor", 
	"_markerSize",
	"_markerBrush"
];

//[format["_initializeMission (39): _markerName %1 | _key %2 | _missionCount %3",_markerName,_key,_missionCount]] call blck_fnc_log;

_coordsArray = [];
if !(_defaultMissionLocations isEqualTo []) then 
{
	_coords = selectRandom _defaultMissionLocations;
} else {
	if (_isScubaMission) then 
	{
		_coords = [] call blck_fnc_findShoreLocation;
	} else {
		_coords =  [] call blck_fnc_findSafePosn;
		_coords = [_coords select 0, _coords select 1, 0];
	};
};

if (_coords isEqualTo []) exitWith 
{
	[format["No Safe Mission Spawn Position Found to spawn Mission %1",_markerMissionName],'warning'] call blck_fnc_log;
	false;
	for "_i" from 1 to (count blck_missionData) do 
	{
		if (_key == (_x select 0)) exitWith 
		{
			#define noActive 3
			private _activeMissions = _x select noActive;
			_x set[noActive, _activeMissions - 1];
		};
	};
};

blck_ActiveMissionCoords pushback _coords; 
blck_missionsRunning = blck_missionsRunning + 1;
//[format["_initializeMission (70): _coords = %1 | blck_missionsRunning = %2",_coords,blck_missionsRunning]] call blck_fnc_log;

private _markers = [];

/*
	Handle map markers 
*/

private "_markerPos";
if (blck_labelMapMarkers select 0) then
{
	_markerPos = _coords;
};
if !(blck_preciseMapMarkers) then
{
	_markerPos = [_coords,75] call blck_fnc_randomPosition;
};

if (blck_debugLevel >= 3) then 
{
	{
		diag_log format["_initializeMission (95) %1 = %2",_x,_markerConfigs select _forEachIndex];
	} forEach [	
		"_markerType", 
		"_markerColor", 
		"_markerSize",
		"_markerBrush"
	];
};
private _markerError = false;
if !(toLowerANSI (_markerType) in ["ellipse","rectangle"] || {isClass(configFile >> "CfgMarkers" >> _markerType)}) then 
{
	[format["_markerType set to 'ELLIPSE': Illegal marker type %1 used for mission %2 of difficulty %3",_markerType,_markerMissionName,_difficulty],"warning"] call blck_fnc_log;
	_markerType = "ELLIPSE";
	_markerSize = [200,200];
	_markerBrush = "SOLID";
	_markerError = true;
};
if !(isClass(configFile >> "CfgMarkerColors" >> _markerColor)) then 
{
	[format["_markerColor set to 'default': Illegal color %1 used for mission %2 of difficulty %3",_markerColor,_markerMissionName,_difficulty],"warning"] call blck_fnc_log;
	_markerColor = "DEFAULT";
	_markerError = true;
};


// _markers holds the two markers generated for the mission. 
// The first can be "" if the marker type used is an icon such as a triangle. 
// The second is always an icon which may have a label.
private _markers = [  
	format["%1:%2",_markerName,_missionCount],
	_markerPos,
	_markerMissionName,
	_markerColor,
	_markerType,
	_markerSize,
	_markerBrush] call blck_fnc_createMissionMarkers;

if (blck_debugLevel >= 3) then {[format["_initializeMission (130): _marker = %1 | _markerMissionName = %2 | _difficulty = %3",_markers,_markerMissionName,_difficulty]] call blck_fnc_log};

/*
	Send a message to players.
*/
 private _startMsg = _missionMessages select 2;
[["start",_startMsg,_markerMissionName]] call blck_fnc_messageplayers;

#define missionTimeoutAt (diag_tickTime + blck_MissionTimeout)
#define triggered 0
#define objects []
#define hiddenObjects []
#define mines []
#define crates  []
#define missionVehicles []
#define missionAI []
#define lootVehicles []
#define assetSpawned objNull

private _missionData = [
	_coords,
	mines, 
	objects, 
	hiddenObjects, 
	crates, 
	missionAI, 
	assetSpawned, 
	missionVehicles, 
	lootVehicles,
	_markers
];
private _spawnPara = -1;
blck_initializedMissionsList pushBack [_key, missionTimeoutAt, triggered, _missionData, _missionConfigs, _spawnPara];
[format["_initializeMission (163): count blck_initializedMissionsList = %1",count blck_initializedMissionsList]] call blck_fnc_log;
true