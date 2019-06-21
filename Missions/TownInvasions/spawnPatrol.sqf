/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
private["_trigger","_max","_min","_num","_units","_spawnPoints","_pos","_skillLevel","_aiGroup","_useLauncher","_weaponList","_i","_launcherType","_buildingPos","_uniforms","_headGear"];
_uniforms = ["U_C_Scientist","U_OrestesBody","U_NikosAgedBody","U_NikosBody"];
_headGear = ["H_StrawHat_dark","H_StrawHat","H_Hat_brown","H_Hat_grey"];

////diag_log "[DBD Exile MS] group spawner for town invasion called";
_trigger = _this select 0;

_max = _trigger getVariable["maxUnits",6];
_min = floor(_max/2);
_num = (_min + round(random(_max - _min)));
_units = [];
_spawnPoints = _trigger getVariable["spawnPoints",[]];
_pos = getPosATL _trigger;
_skillLevel = _trigger getVariable ["unitLevel","red"];
_noGroups = _trigger getVariable ["noGroups",1];
////diag_log format["<<--->> Spawning %1 groups to patrol trigger zone",_noGroups];
for "_i" from 1 to _noGroups do
{ 
	_aiGroup = createGroup BLUFOR;  // RESISTANCE;  Group changed for Exile for which player is RESISTANCE.	
	_aiGroup setcombatmode "YELLOW";
	_aiGroup allowfleeing 0;
	_aiGroup setspeedmode "NORMAL";
	_aiGroup setFormation blck_groupFormation; 

	////diag_log format["Group Created %1",_aiGroup];
	// Determines whether or not the group has launchers
	_useLauncher = blck_useLaunchers;

	// define weapons list for the group
	switch (_skillLevel) do {
		case "blue": {_weaponList = blck_WeaponList_Blue;};
		case "red": {_weaponList = blck_WeaponList_Red;};
		case "green": {_weaponList = blck_WeaponList_Green;};
		case "orange": {_weaponList = blck_WeaponList_Orange;};
		default {_weaponList = blck_WeaponList_Blue;};
	};

	////diag_log format["Spawning _num %1 units at %2",_num,_trigger getVariable "locationName"];
	_num = (_min + round(random(_max - _min)));
	_i = 0;
	while {_i < _num} do {
		_i = _i + 1;
		if (blck_useLaunchers && _i <= blck_launchersPerGroup) then
		{
			_launcherType = selectRandom blck_launcherTypes;
		} else {
			_launcherType = "none";
		};

		_buildingPos = selectRandom _spawnPoints;
		_safePos = [_buildingPos,0,20,1,0,20,0] call BIS_fnc_findSafePos;
		////diag_log format["spawnPatrol.sqf:: _safePos = %1",_safePos];

		_ai =[_safepos,_weaponList,_aiGroup,_skillLevel,_launcherType,_uniforms,_headGear] call blck_spawnAI;
		_units pushback _ai;
		////diag_log format["AI Created %1 at position %2",_ai,_safePos];
		////diag_log format["--- >>> _units count = %1", count _units];
		////diag_log format["---<<< _units = %1",_units];
	};

	_aiGroup selectLeader (units _aiGroup select 0);
	[_aiGroup,_trigger] call blck_addPatrolWaypoints;
};
_trigger setVariable ["GroupArray",units _aiGroup];
_units;


