/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
if (toLower(blck_modType) isEqualTo "default") exitWith {};

params["_obj","_difficulty",["_money",-1]];

if (_money == -1) then 
{
	private _money = missionNamespace getVariable format["blck_crateMoney%1",_difficulty];
	_money = floor(random([_money] call blck_fnc_getNumberFromRange));
};
switch(toLower(blck_modName)) do 
{
	case "exile": {_obj setVariable["ExileMoney",_money,true]};
	case "epoch": {_obj setVariable["Crypto", _money,true]};
};
