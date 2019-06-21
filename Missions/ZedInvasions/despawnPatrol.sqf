/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/

_trigger = _this select 0;
_units = _trigger getVariable ["GroupArray",[]];
////diag_log format["despawning %1 units",count _units];
if (count _units > 0) then
{
	_group = group (_units select 0);
	{
		deleteVehicle _x;
	}forEach _units;
	deleteGroup _group;
};

_trigger setVariable ["GroupArray",[]];


