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
#define configureWaypoints true
#define isScubaGroup true
#define UMS_backpacks [] 
#define UMS_sidearms [] 
#define scubaPatrolAreaDimensions [25,25]
params["_group","_pos",["_skillLevel","red"],["_numUnits",6],["_patrolRadius",15]];
// private _group = [_pos,_numberAI,_difficulty,configureWaypoints,blck_UMS_uniforms,blck_UMS_headgear,blck_UMS_vests,[],blck_UMS_weapons,_sideArms,true] call blck_fnc_spawnGroup;

private _group = [_pos,_numUnits,_skillLevel, scubaPatrolAreaDimensions, blck_UMS_uniforms, blck_UMS_headgear, blck_UMS_vests, [], blck_UMS_weapons, [], isScubaGroup] call blck_fnc_spawnGroup;



