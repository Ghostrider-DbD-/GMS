/*
	Spawn a vehicle and protect it against cleanup by Epoch
	Returns the object (vehicle) created.
	By Ghostrider [GRG]

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_vehType","_pos",["_special","NONE"],["_radius",30]];
//diag_log format["_spawnVehicle: _vehType = %1 | _special = %2 | _radiu = %3",_vehType,_special,_radius];
private _veh = createVehicle[_vehType, _pos, [], _radius, _special];
_veh setVectorUp surfaceNormal position _veh;
_veh allowDamage true;
_veh enableRopeAttach true;
_veh setVariable["blck_vehicle",true];
[_veh] call blck_fnc_protectVehicle;
[_veh] call blck_fnc_emptyObject;

_veh
	
