/*
    GMS_fnc_validateClassnames

    Purpose: selfexplanatory
    Params: None
    Returns: None
*/

    [format["_validateClassnames called at %1", diag_tickTime]] call GMS_fnc_log;
    
	// Flag any class names with issues (invald classname or classname without pricing)
	{
		private _var = missionNameSpace getVariable[_x,[]];
		//[format["validating classnames and pricing for %1 | count = %2 | _x = %3",_x,count _var, _var]] call GMS_fnc_log;
		_var = [_var,true] call GMSCore_fnc_checkClassnamesArray;
		_var = [_var,true] call GMSCore_fnc_checkClassNamePrices;
		//[format["GMS_init_server: Updated %1 | count = %2 | _x = %3",_x,count _var, _var]] call GMS_fnc_log;

		//  NOTE: The lists below may need updating depending on what you have in your config files
	} forEach [
		"GMS_patrolHelisBlue",
		"GMS_patrolHelisRed",
		"GMS_patrolHelisGreen",
		"GMS_patrolHelisOrange",
		"GMS_AIPatrolVehiclesBlue",
		"GMS_AIPatrolVehiclesRed",
		"GMS_AIPatrolVehiclesGreen",
		"GMS_AIPatrolVehiclesOrange",
		"GMS_tools",
		"GMS_buildingMaterials",
		"GMS_NVG",
		"GMS_specialItems",
		"GMS_ConsumableItems",
		"GMS_vests_blue",
		"GMS_vests_red",
		"GMS_vests_green",
		"GMS_vests_orange",
		"GMS_SkinList_blue",
		"GMS_SkinList_red",
		"GMS_SkinList_green",
		"GMS_SkinList_orange",
		"GMS_headgear_blue",
		"GMS_headgear_red",
		"GMS_headgear_green",
		"GMS_headgear_orange",
		"GMS_backpacks_blue",
		"GMS_backpacks_red",
		"GMS_backpacks_green",
		"GMS_WeaponList_Blue",
		"GMS_WeaponList_Red",
		"GMS_WeaponList_Green",
		"GMS_WeaponList_Orange"
	];