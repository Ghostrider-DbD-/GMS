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
_this call GMS_fnc_unitKilled;

if ([_unit,_killer] call blck_fnc_processIlleagalAIKills) then {
	[_unit,_killer] call blck_fnc_handlePlayerUpdates;
};
