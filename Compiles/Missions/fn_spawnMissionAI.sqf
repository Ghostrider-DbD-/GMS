/*
	blck_fnc_spawnMissionAI
	by Ghostrider [GRG]

	returns an array of the units spawned
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
#define configureWaypoints true

params["_coords",["_minNoAI",3],["_maxNoAI",6],["_noAIGroups",0],["_missionGroups",[]],["_aiDifficultyLevel","red"],["_uniforms",[]],["_headGear",blck_BanditHeadgear],["_vests",[]],["_backpacks",[]],["_weapons",[]],["_sideArms",[]],["_isScubaGroup",false]];
[format["blck_fnc_spawnMissionVehiclePatrols: _this = %1",_this]] call blck_fnc_log;
private _unitsToSpawn = 0;
private _unitsPerGroup = 0;
private _ResidualUnits = 0;
private _adjusttedGroupSize = 0;

if (_noAIGroups > 0) then
{
	// Can add optional debug code here if needed.
	_unitsToSpawn = [[_minNoAI,_maxNoAI]] call blck_fnc_getNumberFromRange;  //round(_minNoAI + round(random(_maxNoAI - _minNoAI)));
	_unitsPerGroup = floor(_unitsToSpawn/_noAIGroups);
	_ResidualUnits = _unitsToSpawn - (_unitsPerGroup * _noAIGroups);
};
private _allSpawnedAI = [];
private _abort = false;

private _newGroup = grpNull;
#define patrolAreadDimensions [60,60]
if !(_missionGroups isEqualTo []) then
{ 	
	{
		_x params["_position","_minAI","_maxAI","_skillLevel"];
		private _groupSpawnPos = _coords vectorAdd _position;
		_unitsToSpawn = [[_minNoAI,_maxNoAI]] call blck_fnc_getNumberFromRange;			
		_newGroup = [_groupSpawnPos,_unitsToSpawn,_aiDifficultyLevel,patrolAreadDimensions,_uniforms,_headGear,_vests,_backpacks,_weapons,_sideArms,_isScubaGroup] call blck_fnc_spawnGroup;
		blck_monitoredMissionAIGroups pushback _newGroup;
		_allSpawnedAI append (units _newGroup);		
	}forEach _missionGroups;
} else {
	if (_noAIGroups > 0) then
	{
		private _area = [_coords,[200,200]];
		//private _groupPos = [_area,_noAIGroups] call GMS_fnc_findRandomPosWithinArea;
		private _groupPos = [_coords,_noAIGroups,70,100] call blck_fnc_findPositionsAlongARadius;
		{
			_newGroup = [_x,_unitsToSpawn,_aiDifficultyLevel,patrolAreadDimensions,_uniforms,_headGear,_vests,_backpacks,_weapons,_sideArms,_isScubaGroup] call blck_fnc_spawnGroup;
			blck_monitoredMissionAIGroups pushback _newGroup;
			_allSpawnedAI append (units _newGroup);			
		} forEach _groupPos;
	};
};
_allSpawnedAI

