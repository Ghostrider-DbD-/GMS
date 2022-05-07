
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

params["_SDV","_pos","_difficulty","_numAI","_patrolRadius","_respawnTime"];
#define surfacePatrolAreaDimensions [150,150]
private _group = [_pos,_numAI,_difficulty,surfacePatrolAreaDimensions] call blck_fnc_spawnGroup;
private _vehicle = [_pos,_pos,_vehType,_minDis,_maxDis,_group] call blck_fnc_spawnVehiclePatrol;

_vehicle

