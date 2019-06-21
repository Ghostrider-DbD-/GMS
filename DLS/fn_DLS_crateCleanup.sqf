/*
Dynamic Loot Crate Spaw System for Exile Mod for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
4-6-16

Spawn a crate on land or in the air
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

while {true} do
{
	_list = DLS_Crates;
	uiSleep 60;
	{
		_spawnedTime = _x getVariable ["spawned",0];
		_initPos = _x getVariable ["initPos"];
		_triggerInactive = _x getVariable ["triggerInactive",true];
		if (getPos _x distance _initPos > 5) then {
			DLS_Crates = DLS_Crates - [_x];
		} 
		else
		{
			if (diag_tickTime - _spawnedTime) > 300 && _triggerInactive) then {
			{
				DLS_Crates = DLS_Crates - [_x]; 
				deleteVehicle _x}; 
			};
		};
	} forEach _list;
};