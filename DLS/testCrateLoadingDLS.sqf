
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
// loadouts: 0 random, 1 food/medical, 2 tools/contruction/household, 3, weapons/explosives, 4, clothing/headgear

//if (_loadoutype isEqualTo 1) then 
for "_i" from 1 to 100 do 
{
	diag_log format["DLS loadLoot:: _loadout [food,medical] | _loot %1",_loot];
	private _loot = [[blck_ConsumableItems,25],[blck_medicalItems,8],[blck_tools,10],[blck_backpacks, 3]];	
	private _crate = createVehicle [_box, [0,0,0], [], 0, "CAN_COLLIDE"];	
	[_crate] call blck_fnc_emptyObject;
	[_loot,_crate] call blck_fnc_loadLootItemsFromArray;
	diag_log format["testCrateLoading: pass %2 | crate inventory = %1",getItemCargo _crate,_i];
	deleteVehicle _crate;
};
deleteVehicle _crate;
//if (_loadoutype isEqualTo 2) then 
for "_i" from 1 to 100 do 
{
	diag_log format["DLS loadLoot:: _loadout [tools/contruction/household] | pass %1",_i];
	private _loot = [[blck_buildingMaterials,40],[blck_tools,10],[blck_backpacks, 3]];
	private _crate = createVehicle [_box, [0,0,0], [], 0, "CAN_COLLIDE"];	
	[_crate] call blck_fnc_emptyObject;
	[_loot,_crate] call blck_fnc_loadLootItemsFromArray;
	diag_log format["testCrateLoading: pass %2 | crate inventory = %1",getItemCargo _crate,_i];		
	deleteVehicle _crate;
};
deleteVehicle _crate;
//if (_loadoutype isEqualTo 3) then 
for "_i" from 1 to 100 do 
{
	diag_log format["DLS loadLoot:: _loadout [weapons/explosives] | pass %1",_i];
	private _wep = blck_RifleAsault + blck_apexWeapons + blck_RifleOther;
	private _loot = [[_wep,15],[blck_backpacks, 3],[blck_explosives,5]];
	if (DLS_loadLaunchers) then
	{
		_loot_launchers = [["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_F","launch_Titan_short_F"],4];
		_loot pushback _loot_launchers;
	};
	#ifdef blck_debugMode
	diag_log format["DLS loadLoot::  _loot %1",_loot];
	#endif
	[_loot,_crate,6] call blck_fnc_loadLootItemsFromArray;	
	diag_log format["testCrateLoading: pass %2 | crate inventory = %1",getItemCargo _crate,_i];
	deleteVehicle _crate;	
};
deleteVehicle _crate;
