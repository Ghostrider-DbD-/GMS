/*
	By Ghostrider [GRG]
	Copyright 2016
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_aiDifficulty"];
private _choices = missionNameSpace getVariable (format["%1%2","blck_AIPatrolVehicles",_aiDifficulty]);
private _vehicle = selectRandom _choices;
diag_log format["blck_fnc_selectPatrolVehicle returning $1",_vehicle];
_vehicle



