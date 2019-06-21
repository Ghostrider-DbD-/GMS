/*
	by Ghostrider [GRG]

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
//private["_mode","_sm_groups"];
//_sm_groups = +blck_sm_Aircraft;
//diag_log format["_fnc_monitorAircraft: time %2 |  blck_sm_Aircraft %1",blck_sm_Aircraft,diag_tickTime];
for "_i" from 1 to (count blck_sm_Aircraft) do
{
	if (_i == (count blck_sm_Aircraft)) exitWith {};
	private _element = blck_sm_Aircraft deleteAt 0;
	_element params["_groupParameters","_group","_groupSpawned","_timesSpawned","_respawnAt","_maxRespawns"];
	//diag_log format["_fnc_monitorAircraft: _x %1",_element];
	//diag_log format["_fnc_monitorAircraft: _groupParameters = %1",_groupParameters];
	//diag_log format["_fnc_monitorAircraft (9): _group %1 | _groupSpawned %2 | _timesSpawned %3 | _respawnAt %4",_group,_groupSpawned,_timesSpawned,_respawnAt];
	_groupParameters params["_pos","_difficulty","_units","_patrolRadius","_respawnTime"];
	_groupParameters params["_aircraftType","_pos","_difficulty","_patrolRadius","_respawnTime"];	
	//diag_log format["_fnc_monitorAircraft:  _aircraftType | %1 | _pos = %2 | _difficulty = %3 | _patrolRadius = %4 | _respawnTime = %5",_aircraftType,_pos,_difficulty,_patrolRadius,_respawnTime];
	
	if (!(isNull _group) && {alive _x} count (units _group) == 0) then
	{
		deleteGroup _group;
		_group = grpNull;
	};
	if (isNull _group) then
	{
		_mode = -1;
		if ((_timesSpawned == 0) && (_groupSpawned == 0)) then {_mode = 1};  // spawn-respawn
		if (_timesSpawned > 0) then
		{
			if ((_groupSpawned == 1) && (_respawnTime == 0)) then {_mode = 0}; // remove patrol from further evaluation
			if ((_timesSpawned > _maxRespawns) && (_maxRespawns != -1)) then {_mode = 0}; 			
			if ((_groupSpawned == 1) && (_respawnTime > 0)) then {_mode = 2}; // set up for respawn at a later time 
			if ((_groupSpawned == 0) && (diag_tickTime > _respawnAt)) then {_mode = 1};
		};
		switch (_mode) do
		{
			case 0: {};
			case 1: {
						
						if ([_pos,staticPatrolTriggerRange] call blck_fnc_playerInRange) then
						{						
							_return = [_pos,_difficulty,[_aircraftType]] call blck_fnc_spawnMissionHeli; 
							_group = group (driver (_return select 0));
							_element set[patrolGroup,_group];
							_element set[groupSpawned,1];
							_element set[timesSpawned,_timesSpawned + 1];
							_element set[respawnAt,0];	
						};
						blck_sm_Aircraft pushBack _element;
					};
			case 2: {
						_element set[respawnAt,diag_tickTime + _respawnTime];	
						_element set[groupSpawned,0];
						blck_sm_Aircraft pushBack _element;
						//diag_log format["_fnc_monitorAircraft: update respawn time to %1",_respawnAt];						
					};
			default {};
		};
		//diag_log format["_fnc_monitorAircraft(56) respawn conditions evaluated : _group = %1 | _groupSpawned = %2 | _timesSpawned = %3",_group,_groupSpawned,_timesSpawned];
	} else {
		//diag_log format["_fnc_monitorAircraft: diag_tickTime = %1 | playerNearAt = %2",diag_tickTime,_group getVariable["playerNearAt",-1]];
		if ([_pos,staticPatrolTriggerRange] call blck_fnc_playerInRange) then
		{
			_group setVariable["playerNearAt",diag_tickTime];
			//diag_log format["_fnc_monitorAircraft: playerNearAt updated to %1",_group getVariable["playerNearAt",-1]];
			blck_sm_Aircraft pushBack _element;			
		} else {
			if (diag_tickTime > (_group getVariable["playerNearAt",diag_tickTime]) + blck_sm_groupDespawnTime) then
			{
				//diag_log format["_fnc_monitorAircraft: despanwing patrol for _element %1",_element];
				//_groupParameters set [2, {alive _x} count (units _group)];
				private _veh = vehicle (leader _group);
				{deleteVehicle _x} forEach (units _group);
				deleteGroup _group;				
				[_veh] call blck_fnc_destroyVehicleAndCrew;
				_element set[groupParameters,_groupParameters];
				_element set[patrolGroup ,grpNull];
				_element set[timesSpawned,(_timesSpawned - 1)];
				_element set[groupSpawned,0];
			};
			blck_sm_Aircraft pushBack _element;			
		};
	};
};