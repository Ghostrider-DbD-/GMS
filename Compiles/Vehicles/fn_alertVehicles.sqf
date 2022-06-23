/*

	Parameters:
		_unit: the object that was attacked or killed 
		_instigator: the object that pulled the trigger 

*/
params["_unit","_instigator"];
private _lastAlert = (group _unit) getVariable["blck_lastAlert",0];
if (diag_tickTime < (_lastAlert + 5)) exitWith {};  //  so this function is not totally spammed
(group _unit) setVariable["blck_lastAlert",diag_tickTime];
private _difficulty = (group _unit) getVariable["blck_difficulty","Red"];
private _index = [_difficulty] call blck_fnc_getIndexFromDifficulty;
private _nearAir = blck_aircraftPatrols select {_x distance _unit < 1500};
private _nearLand = blck_landVehiclePatrols select {_x distance _unit < 800};
private _intelligence = blck_AIIntelligence select ([_difficulty] call blck_fnc_getIndexFromDifficulty);
{
	private _grp = group(driver _x);
	private _knowsAbout = _grp knowsAbout _instigator;
	_grp reveal[_instigator,_intelligence];
} forEach (_nearAir + _nearLand);