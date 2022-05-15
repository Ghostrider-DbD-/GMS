

if !(local (_this select 0)) exitWith {};
params ["_vehicle", "_source", "_damage", "_instigator"];
//[format["blck_fnc_vehicletHit: _vehicle = %1 | typeOf _vehicle %2 | _instigator %32",_vehicle,typeOf _vehicle, _instigator]] call GMS_fnc_log;
//if !(isPlayer _instigator) exitWith {};
[_unit,_instigator] call blck_fnc_alertVehicles;