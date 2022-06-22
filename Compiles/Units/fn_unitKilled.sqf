/*
	Handle AI Deaths
	By Ghostrider [GRG]

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/

// assumptions: this is always and only run on the server regardless if th event is triggered on an HC or other client.
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_unit","_killer","_instigator"];
if (isNull _killer || {isNull _instigator}) exitWith {};
//[format["blck_fnc_unitKilled: _unit = %1 | _killer = %2 | vehicle killer = %3", _unit, _killer, typeOf (vehicle _killer)]] call blck_fnc_log;
private _role = assignedVehicleRole _instigator;
//[format["blck_fnc_unitKilled: _role killer = %1", _role]] call blck_fnc_log;
private _cf = 1;
private _wep = currentWeapon _instigator;
private _creditKill = true;
private _isRunover = false;
if !(_role isEqualTo []) then // _instigator was in a vehicle of some sort
{
	//[format["blck_fnc_unitKilled: vehRole killer = %1", _role select 0]] call blck_fnc_log;
	switch (_role select 0) do 
	{
		case "driver": 
		{
			/*
				blck_runoverProtection = true;
				blck_runoverRespectPenalty = 25;
				blck_runoverMoneyPenalty = 0;
			*/
			if (blck_runoverProtection) then 
			{
				_cf = 0;
				_creditKill = false;			
				_isRunover = true;
				[_unit] call GMS_fnc_unitRemoveAllGear;	
				{
					deleteVehicle _x;
				} forEach nearestObject[_unit,["WeaponHolderSimulated","groundWeaponHolder"],2];
			};
			//[["blck_fnc_unitKilled: unit %1 run over by %2 with %3",_unit,_instigator,vehicle _instigator]] call blck_fnc_log;
		};
		case "turret":
		{
			_cf = 0.3;
			_wep = (vehicle _instigator) currentWeaponTurret (_role select 1);
			if (_wep in blck_forbidenWeapons) then 
			{
				_cf = 0;
				_creditKill = false;
				[_unit] call GMS_fnc_unitRemoveAllGear;	
				{
					deleteVehicle _x;
				} forEach nearestObject[_unit,["WeaponHolderSimulated","groundWeaponHolder"],2];
			};
			//[format["blck_fnc_unitKilled: _unit %1 | killed from vehicle %2 | by %3 | using %4",_unit, vehicle _instigator,name _instigator,_wep]] call blck_fnc_log;
		};
		case "cargo": {};
	};
};
[format["blck_fnc_unitKilled: _unit %1 | _killer %2 | _instigator %3 | vehicle _killer %4",_unit,_killer,_instigator,vehicle _killer]] call blck_fnc_log;
//diag_log format["blck_fnc_unitKilled: _unit %1 | _killer %2 | | weapon = %3 | doing all that stuff now", _unit,_killer, currentWeapon _killer];
private _difficulty = (group _unit) getVariable["blck_difficulty","Red"];
private _index = [_difficulty] call blck_fnc_getIndexFromDifficulty;
private _rewards = blck_rewards select _index;
private _distance = _unit distance _killer;
_baseReward = round([_rewards select 0] call GMS_fnc_getNumberFromRange);
_baseExperience = round([_rewards select 0] call GMS_fnc_getNumberFromRange);
private _reward = 0;
private _experience = 0;
private _killstreak = 0;
[_unit,_instigator] call blck_fnc_alertVehicles;
if !(vehicle _unit isEqualTo _unit) then 
{
	if (blck_killEmptyStaticWeapons) then 
	{
		private _isEmplaced = (group _unit) getVariable ["soldierType",""];
		if (isEmplaced || {(vehicle _unit isKindOf "StaticWeapon")}) then 
		{
			(vehicle _unit) setDamage 2.0;
		};
	};
};
if (_isRunover) then 
{
	_reward = blck_runoverMoneyPenalty; 
	_experience = blck_runoverRespectPenalty;
} else {
	private _distanceBonus = round(_distance / 100) max 5;
	_killstreak = _instigator getVariable["blck_killStreak",0];
	_lastUpdated = _instigator getVariable["blck_lastKill",-30000];
	if (diag_tickTime < _lastUpdated + 300) then 
	{
		_killStreak = _killStreak + 1;
	} else {
		_killStreak = 1;
	};
	_instigator setvariable["blck_killStreak",_killStreak];
	_instigator setVariable["blck_lastKill",diag_tickTime];	
	private _killsBonus = _killstreak max 10;		
	_reward = round((_baseReward + _killsBonus) * _cf);  //  Crypto in Epoch, Tabs in Exile
	_experience = round((_baseExperience + _distanceBonus) * _cf); // Karma in Epoch, Respect in Exile
};

switch (GMS_modType) do {
	case "Epoch": {
		[_instigator, _reward] call GMS_fnc_giveTakeCrypto;
		[_instigator,_experience,false] call GMS_fnc_setKarma;
	};
	case "Exile": {
		[_instigator, _reward] call GMS_fnc_giveTakeTabs;
		[_instigator, _experience] call GMS_fnc_giveTakeRespect;
	};
};
//diag_log format["blck_fnc_unitKilled: _mod %3 | _reward %1 | _experience %2",_reward,_experience,GMS_modType];

if (_creditKill) then 
{
	
	[_instigator,1] call GMS_fnc_updatePlayerKills;
	private _msg = format[
		"%1 killed %2 with %3 at %4 meters %5X KILLSTREAK",
		name _instigator, 
		name _unit, 
		getText(configFile >> "CfgWeapons" >> currentWeapon _instigator >> "displayName"), 
		_unit distance _instigator,
		_killstreak
	];
	[_msg] remoteExec["systemChat",-2];
	[unit, _instigator, _reward, _experience, _killstreak] remoteExec ["GMS_fnc_killedMessages",_instigator];
};

