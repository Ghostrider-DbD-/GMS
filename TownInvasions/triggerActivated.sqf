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
	//diag_log format["#- triggerActivated.sqf -#  _townName = %1:",_townName];
}
else
{
	//diag_log format["#- triggerActivated.sqf -#  _townName = %1:",_townName];
	_townName = format["%1 at %2",_townName,(mapGridPosition _townCenter)];
	
};

//diag_log format["#- triggerActivated.sqf -# _startMsg is %1",_startMsg];
diag_log format["#- triggerActivated.sqf -# _townCenter is %1 and grid coords are %2", _townCenter,mapGridPosition _townCenter];
//diag_log format["chance for trigger is %1",_chance];
if (_chance < _spawnChance) then 
{
	if (_chance < _paraSpawnChance) then
	{
		//diag_log format["would be spawning paras to patrol %1",_townName];
	}
	else
	{
		//diag_log format["spawning ground AI at %1, coords %2",_townName,_townCenter];
		_units = [_trigger] spawn blck_spawnPatrol;
		_trigger setVariable ["GroupArray",_units];
	};
	
	["start",format["Mafia Solders were spotted in %1",_townName],"Alert !"] call blck_MessagePlayers;
}
else
{
	//diag_log format["Chance too high to spawn AI at %1",_townName];
};




