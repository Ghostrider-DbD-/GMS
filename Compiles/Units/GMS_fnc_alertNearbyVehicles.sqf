/*
	_fnc_alertNearbyVehicles
	by Ghostrider
	 
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params[["_target",objNull]];

if (isnull _target) exitWith {};
private _nearestVehicles = (nearestObjects [getPos _target,["Car","Truck","Tank","Ship"],300]);
if (_nearestVehicles isEqualTo []) exitWith {};
private _nearestVehicle = _nearestVehicles select 0;
[(crew _nearestVehicle) select 0,_target] call blck_fnc_alertGroupUnits;




