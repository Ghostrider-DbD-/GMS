/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016
	checks the status of each entry in 
/*
	By Ghostrider [GRG]
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";



if (blck_missionsRunning >= blck_maxSpawnedMissions) exitWith {};

diag_log format["_fnc_spawnPendingMissions: count blck_missionData = %1",count blck_missionData];
{	
	/*
	_missionCategoryDescriptors params [
			"_difficulty",
			"_noMissions",  // Max no missions of this category
			"_noActive",  // Number active 
			"_tMin", // Used to calculate waittime in the future
			"_tMax", // as above
			"_waitTime",  // time at which a mission should be spawned
			"_missionsData"  // 
		];
	*/	
	private _missionCategoryDescriptors = _x;	
								// 0		1					2				   						3		4		  5	       6	   
	_missionCategoryDescriptors params["_difficulty","_maxNoMissions","_noActiveMissions","_tMin","_tMax","_waitTime","_missionsData"];
	
	
	{
		diag_log format["_fnc_spawnPendingMissions: _missionCategoryDescriptors param %1 = %2",_x,_missionCategoryDescriptors select _forEachIndex];
	} forEach ["_difficulty","_maxNoMissions","_noActiveMissions","_tMin","_tMax","_waitTime","_missionsData"];
	
	
	if (_noActiveMissions < _maxNoMissions && diag_tickTime > _waitTime && blck_missionsRunning < blck_maxSpawnedMissions) then 
	{
		// time to reset timers and spawn something.
		private _wt = diag_tickTime + _tmin + (random(_tMax - _tMin));

		#define waitTime 5
		#define noActive 2
		
		_x set[waitTime, _wt];  // _x here is the _missionCategoryDescriptors being evaluated
		//_x set[timesSpawned, _timesSpawned + 1];
		_x set[noActive, _noActiveMissions + 1];
		//private _m = ;
		//private _mrkr = format["%1:%2",_marker,_timesSpawned];

		//uisleep 1;  // only for debugging purposes.  
		//  TODO: comment out uiSleep at a later time.
		//[_x,selectRandom _missionsData] call blck_fnc_initializeMission;
		//diag_log format["_fnc_spawnPendingMissions: adding mission to cue of missions to be initialized using _x %1 | _noActive %2 | _waitTime %3",_x,_noActiveMissions,_wt];			
		blck_initializedMissionsList pushBack [_x,selectRandom _missionsData];
	};
} forEach blck_missionData;



/*  Old version begins here (from 206)
private["_coords","_compiledMission","_search","_readyToSpawnQue","_missionToSpawn","_allowReinforcements"];
_readyToSpawnQue = [];
{ 	
	if ( (diag_tickTime > (_x select 5)) && ((_x select 5) > 0) ) then 
	{
		_readyToSpawnQue pushback _x;
	};
} forEach blck_pendingMissions;

if (count _readyToSpawnQue > 0) then
{
	_missionToSpawn = selectRandom _readyToSpawnQue;

	_coords = [] call blck_fnc_FindSafePosn;
	if (_coords isEqualTo []) exitWith 
	{
		diag_log format["[blckagls] fnc_spawnPendingMissions: <ERROR> _fnc_findSafePosn could not find a location for this mission; consider reducing distances between players, bases, missions or towns."];
	};
	_compiledMission = selectRandom (_missionToSpawn select 0);
	_missionMarker = _missionToSpawn select 1;
	_missionDifficulty = _missionToSpawn select 2;
	[_coords,_missionMarker,_missionDifficulty] spawn _compiledMission;
};

true
