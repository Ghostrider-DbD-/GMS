/*
Dynamic Loot Crate Spaw System for Exile Mod for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
4-6-16
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

private["_trigger","_spawnMode","_loadout","_loc","_crate","_initPos"];
params["_trigger"];
//_trigger = _this select 0;

////////////////////////////
// Pull Configurations
_spawnMode = _trigger getVariable ["spawnMode", 0];
_loadout = _trigger getVariable ["loadout",0];
_loc = _trigger getVariable ["position",[0,0,0]];

//diag_log format["DLS:: Trigger Deactivated mode = %1, loadout = %2 and location = %3",_spawnMode,_loadout,_loc];
_trigger setVariable ["isCleaning",true];
if (blck_debugLevel > 2) then {diag_log format["DLS:: Trigger for %1 De-activated",_loc ];};
uiSleep DLS_triggerTimout;
_trigger setVariable ["isCleaning",false];
_trigger setTriggerArea [DLS_Trigger_Radius,DLS_Trigger_Radius,0, false];
_crate = _trigger getVariable ["crate",objNull];
if !(_crate isEqualTo objNull) then {_crate setVariable ["triggerInactive",true];};
_initPos = _crate getVariable ["initPos",[0,0,0]];
if (getPos _crate distance _initPos < 5 || _initPos isEqualTo [0,0,0]) then {deleteVehicle _crate;diag_log format["DLS:: deleting expired stationary crate at %1",_initPos]};
if (blck_debugLevel > 2) then {diag_log format["DLS:: Trigger for %1 Re-activated",_loc ];};



	

