/*
	By Ghostrider [GRG]
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"

params["_coords",["_missionEmplacedWeapons",[]],["_useRelativePos",true],["_difficulty","red"],["_uniforms",[]], 
["_headGear",[]],["_vests",[]],["_backpacks",[]],["_weaponList",[]],["_sideArms",[]]];

if (_uniforms isEqualTo []) 		then {_uniforms = [_difficulty] call GMS_fnc_selectAIUniforms};
if (_headGear  isEqualTo [])		then {_headGear = [_difficulty] call GMS_fnc_selectAIHeadgear};
if (_vests isEqualTo []) 			then {_vests = [_difficulty] call GMS_fnc_selectAIVests};
if (_backpacks  isEqualTo []) 		then {_backpacks = [_difficulty] call GMS_fnc_selectAIBackpacks};
if (_weaponList  isEqualTo []) 		then {_weaponList = [_difficulty] call GMS_fnc_selectAILoadout};
if (_sideArms isEqualTo []) 		then {[_difficulty] call GMS_fnc_selectAISidearms};

private["_emplacedWeps","_emplacedAI","_wep","_units","_gunner","_abort","_pos","_mode"];
_emplacedWeps = [];
_emplacedAI = [];
_units = [];
_abort = false;
_pos = [];

private _emplacedWepData = +_missionEmplacedWeapons;  //  So we dont overwrite this for the next instance of the mission

{
	_x params [["_static",""],["_pos",[0,0,0]],["_dir",0]];
	//diag_log format["_spawnEmplacedWeaponArray: _emplacedWedData %11 = %2",_forEachIndex,_x];
	if (isClass(configFile >> "CfgVehicles" >> _static)) then {
		if (_useRelativePos) then 
		{
			_pos = _coords vectorAdd _pos;
		};
		private _difficultyIndex = [_difficulty] call GMS_fnc_getIndexFromDifficulty;
		private _damage = if (GMS_killEmptyStaticWeapons) then {1} else {0};
		private _releaseToPlayers = if (GMS_killEmptyStaticWeapons) then {false} else {true};
		#define deleteTimer 300 
		private _static = [_static, _pos, _releaseToPlayers, deleteTimer] call GMSCore_fnc_spawnStatic; 
		private _group = _static select 0;
		private _wep = _static select 1; 

		[_group, _difficulty, _weaponList, _sideArms, _headGear, _uniforms, _vests, _backpacks] call GMS_fnc_configureGroup;
		#define maxUnitReloads -1 // Infinite reloads 
		#define minDamageToHeal 0.4 
		#define maximumNumberHeals 1 // allow one heal only 
		#define smokeShellType "SmokeShellRed"
		#define chanceUnitsGarison 0
		#define unitHitCode [] 
		#define unitKilledCode [GMS_fnc_unitKilled]
	
		[
				_group, 
				GMS_baseSkill,
				GMS_AIAlertDistance select _difficultyIndex,
				GMS_AIIntelligence select _difficultyIndex,
				GMS_bodyCleanUpTimer,
				maxUnitReloads,
				GMS_launcherCleanup, 
				GMS_removeNVG, 
				minDamageToHeal,
				maximumNumberHeals,
				smokeShellType,
				unitHitCode,
				unitKilledCode,
				chanceUnitsGarison
		 ] call GMSCore_fnc_initializeGroup; 		
		_group setcombatmode "RED";
		_group setBehaviour "COMBAT";
		_group setVariable ["soldierType","emplaced"];

		_wep setVariable["GMS_vehType","emplaced"];	
		_emplacedAI append (units _group);
		_emplacedWeps pushBack _wep;
	} else {
		[format["GMS_fnc_spawnEmplacedWeaponArray:   Invalid classname %1 used in _missionEmplacedWeapons", _static],"warning"] call GMS_fnc_log;
	};
} forEach _emplacedWepData;
GMS_monitoredVehicles append _emplacedWeps;
//[format["GMS_fnc_spawnEmplacedWeaponArray:  count _emplacedAI = %1", count _emplacedAI]] call GMS_fnc_log;
[_emplacedWeps,_emplacedAI]

