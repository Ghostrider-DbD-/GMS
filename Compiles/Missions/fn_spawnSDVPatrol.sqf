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

params["_SDV","_pos","_difficulty","_numberAI","_patrolRadius","_respawnTime"];
#define SDVpatrolAreadDimensions [50,50]
//  params[["_pos",[0,0,0]], ["_numbertospawn",0], ["_skillLevel","red"], ["_configureWaypoints",true], ["_uniforms",[]], ["_headGear",[]],["_vests",[]],["_backpacks",[]],["_weaponList",[]],["_sideArms",[]], ["_scuba",false]];
private _backpacks = [];
private _sidearms = [];
private _group = [_pos,_numberAI,_difficulty,SDVpatrolAreadDimensions,blck_UMS_uniforms,blck_UMS_headgear,blck_UMS_vests, _backpacks,blck_UMS_weapons,_sidearms,true] call blck_fnc_spawnGroup;
private _vehicle = [[_pos select 0, _pos select 1,0],[_pos select 0, _pos select 1,0],_vehType,_patrolRadius - 2,_patrolRadius,_group] call blck_fnc_spawnVehiclePatrol;
private _diveDepth = 0.5 * ([_pos] call blck_fnc_findWaterDepth);
(driver _vehicle) swiminDepth (_diveDepth select 2);

_group
