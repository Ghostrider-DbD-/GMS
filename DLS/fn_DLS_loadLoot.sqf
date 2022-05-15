/*
Dynamic Loot Crate Spawn System for for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
6-7-17

Spawn a crate on land or in the air
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
// loadouts: 0 random, 1 food/medical, 2 tools/contruction/household, 3, weapons/explosives, 4, clothing/headgear

_fn_reportCrateContents = {
	params["_crate",["_context","not specified"]];
	diag_log format["DLS: _fn_reportCrateContents: %2, crate items are %1",(getItemCargo _crate),_context];
	diag_log format["DLS: _fn_reportCrateContents: %2, crate magazines are %1",(magazinesAmmoCargo _crate),_context];
	diag_log format["DLS: _fn_reportCrateContents: %2, crate weapons are %1",(weaponsItemsCargo _crate),_context];
};

params["_loadoutype","_crate"];
#ifdef blck_debugMode
diag_log format["DLS: fn_loadLoot: -- >> _this = %1 | _loadoutype %2 | _crate %3",_this,_loadoutype, _crate];
#endif
[_crate] call GMS_fnc_emptyObjectInventory;

while {_loadoutype == 0} do {_loadoutype = round(random(3));};

#ifdef blck_debugMode
//_loadoutype = 3;
diag_log format["DLS loadLoot:: _loadoutype = %1",_loadoutype];
#endif

if (_loadoutype isEqualTo 1) then 
{
	#ifdef blck_addCarParts
	private _loot = [[blck_ConsumableItems,25],[blck_medicalItems,8],[blck_tools,10],[blck_backpacks, 3],[blck_carParts,10]];
	#else
	private _loot = [[blck_ConsumableItems,25],[blck_medicalItems,8],[blck_tools,10],[blck_backpacks, 3]];
	#endif
	#ifdef blck_debugMode
	diag_log format["DLS loadLoot::  _loot %1",_loot];
	#endif
	[_loot,_crate] call blck_fnc_loadLootItemsFromArray;
};

if (_loadoutype isEqualTo 2) then 
{
	private _loot = [[blck_buildingMaterials,40],[blck_tools,10],[blck_backpacks, 3]];
	#ifdef blck_debugMode
	diag_log format["DLS loadLoot::  _loot %1",_loot];
	#endif
	[_loot,_crate] call blck_fnc_loadLootItemsFromArray;		
};

if (_loadoutype isEqualTo 3) then 
{
	_wep = blck_RifleAsault + blck_apexWeapons + blck_RifleOther;
	_loot = [[_wep,15],[blck_backpacks, 3],[blck_explosives,5]];
	if (DLS_loadLaunchers) then
	{
		_loot_launchers = [["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_F","launch_Titan_short_F"],4];
		_loot pushback _loot_launchers;
	};
	#ifdef blck_debugMode
	diag_log format["DLS loadLoot::  _loot %1",_loot];
	#endif
	[_loot,_crate,6] call blck_fnc_loadLootItemsFromArray;	
};

#ifdef blck_debugMode
[_crate,"after loading crate"] call _fn_reportCrateContents;
#endif
true