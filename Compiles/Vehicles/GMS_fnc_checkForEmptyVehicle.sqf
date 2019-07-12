/*
	By Ghostrider [GRG]
	Copyright 2016
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
params["_veh"];
//diag_log format["_fnc_checkForEmptyVehicle: _veh = %1 | count (crew _veh) = %2",_veh, count(crew _veh)];
if (crew(_veh) isEqualTo []) then 
{
	[_veh] call blck_fnc_handleEmptyVehicle;
} else {
	if ({alive _x} count (crew _veh) isEqualTo 0) then 
	{
		[_veh] call blck_fnc_handleEmptyVehicle;
	};
};