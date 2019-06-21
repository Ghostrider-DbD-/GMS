/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/

_trigger = _this select 0;
if (_trigger getVariable["isCleaning",false]) exitWith {/* The trigger is in reset mode*/};


_players = list _trigger;
_level = _trigger getVariable ["unitLevel","red"];
_townCenter = getPos _trigger;
_spawnPoints = _trigger getVariable ["spawnPoints",[]];
_maxUnits = _trigger getVariable ["maxUnits",6];
_spawnChance = _trigger getVariable ["spawnChance",0.33];
_paraSpawnChance = _trigger getVariable ["paraSpawnChance",0.11];
_trigger setTriggerArea [750, 750, 0, false];
_townName = _trigger getVariable "locationName";
//diag_log format["[DBD Exile MS] trigger activated for town %1 located at %2",_townName,_townCenter];
_chance = (random(100)/100);

//diag_log format["#- triggerActivated.sqf -#  Example of Miliary message would be: Mafia Soldiers were Spotted in the Military Complex at %1", (mapGridPosition _townCenter)];

if (_townName isEqualTo "military") then
{
	_townName = format["the Military Complex at %1", (mapGridPosition _townCenter)];
	diag_log format["#- triggerActivated.sqf -#  _townName = %1:",_townName];
}
else
{
	diag_log format["#- triggerActivated.sqf -#  _townName = %1:",_townName];
	_townName = format["%1 at %2",_townName,(mapGridPosition _townCenter)];
	
};

//diag_log format["#- triggerActivated.sqf -# _startMsg is %1",_startMsg];
diag_log format["#- triggerActivated.sqf -# _townCenter is %1 and grid coords are %2", _townCenter,mapGridPosition _townCenter];
//diag_log format["chance for trigger is %1",_chance];
_spawners = [];
if (_chance < _spawnChance) then 
{
	_numSpawns = _trigger getVariable ["noSpawns",1];
	for "_i" from 1 to _noSpawns do
	{
		if (_1 isEqualTo 1) then
		{
			_pos = [_townCenter, 30,100,5,0,20,0] call BIS_fnc_findSafePos;
			_spawners pushback [_pos] call Zed_spawnHoard;
		}
		else
		{
			//[_centerForSearch,_minDistFromCenter,_maxDistanceFromCenter,_minDistanceFromNearestObj,_waterMode,_maxTerainGradient,_shoreMode] call BIS_fnc_findSafePos
			_findNew = true;
			while {_findNew} do
			{
				_pos = [_townCenter, 30,100,5,0,20,0] call BIS_fnc_findSafePos;
				_findNew = false;
				{
					if (_pos distance _x < 30) then {_findNew = true;};
				}forEach _spawners;
			};
			_spawners pushback [_pos] call Zed_spawnHoard;
		};
	};
	["start",format["A Zombie Hoard was spotted in %1",_townName],"Alert !"] call blck_MessagePlayers;
}
else
{
	diag_log format["Chance too high to spawn Zeds at %1",_townName];
};




