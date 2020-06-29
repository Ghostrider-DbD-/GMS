/*
	by Ghostrider [GRG] 
	Copyright 2016
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
params["_marker","_rootText","_missionAI"];
if (isNil "diag_count") then {diag_count = 0};
if (diag_count == 100) then 
{
	diag_log format["_fnc_updateMarkerAliveCount: _marker = %1 | _rootText = %2 | count _missionAI = %3 | markerText = %4",_marker, _rootText, count _missionAI, markerText _marker];
	diag_log format["_fnc_updateMarkerAliveCount:  allMarkers = %1",allMapMarkers];
	diag_count = 0;
} else {
	diag_count = diag_count + 1;
};
private _txtPrior = markerText _marker;
_marker setMarkerText format["%1 / %2 AI Alive",_rootText,{alive _x} count _missionAI];
