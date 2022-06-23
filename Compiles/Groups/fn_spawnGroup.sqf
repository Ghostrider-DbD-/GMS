/*
	blck_fnc_spawnGroup
	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
	
params[
	["_pos",[-1,-1,1]], 
	["_numbertospawn",0], 
	["_skillLevel","red"], 
	["_areaDimensions",[]], 
	["_uniforms",[]], 
	["_headGear",[]],
	["_vests",[]],
	["_backpacks",[]],
	["_weaponList",[]],
	["_sideArms",[]], 
	["_scuba",false]
];
/*
{
	diag_log format["_fn_spawnGroup: _this %1 = %2",_forEachIndex, _this select _forEachIndex];
} forEach _this;
*/
if (_weaponList isEqualTo []) then {_weaponList = [_skillLevel] call blck_fnc_selectAILoadout};
if (_sideArms isEqualTo [])  then {_sideArms = [_skillLevel] call blck_fnc_selectAISidearms};
if (_uniforms isEqualTo [])  then {_uniforms = [_skillLevel] call blck_fnc_selectAIUniforms};
if (_headGear isEqualTo [])  then {_headGear = [_skillLevel] call blck_fnc_selectAIHeadgear};
if (_vests isEqualTo [])     then {_vests = [_skillLevel] call blck_fnc_selectAIVests};
if (_backpacks isEqualTo []) then {_backpacks = [_skillLevel] call blck_fnc_selectAIBackpacks};

private _difficultyIndex = [_skillLevel] call blck_fnc_getIndexFromDifficulty;
private _group = [
	_pos,
	_numberToSpawn,
	GMSCore_side,
	blck_baseSkill,
	(blck_AIAlertDistance select _difficultyIndex),
	(blck_AIIntelligence select _difficultyIndex),
	blck_bodyCleanUpTimer,
	-1, // max reloads 
	blck_launcherCleanup,
	blck_removeNVG,
	0.4, // min damage to heal,
	1, // max heals 
	"SmokeShellRed",
	[blck_fnc_unitHit],  // AI Hit Code 
	[blck_fnc_unitKilled],
	0.33, // chance garrison 
	false // isDrone Crew
] call GMSCore_fnc_spawnInfantryGroup;
_group setVariable["blck_difficulty",_skillLevel];
//[format["blck_fnc_spawnGroup: _group = %1",_group]] call blck_fnc_log;
[_group] call GMSCore_fnc_setupGroupBehavior;
private _skills = missionNamespace getVariable[format["blck_Skills%1",_skillLevel],blck_SkillsRed];
[_group,_skills] call GMSCore_fnc_setupGroupSkills;
// TODO: Add Money if any should be added 
private _gear = [
	[
		_weaponList,
		blck_chancePrimary,
		blck_chanceOpticsPrimary,
		blck_chanceMuzzlePrimary,
		blck_chancePointerPrimary,
		blck_blacklistedPrimaryWeapons
	], // Just adding together all the subclasses of primary weaponss
	[
		_sideArms, 
		blck_chanceSecondary, 
		blck_chanceOpticsSecondary, 
		blck_chanceMuzzleSecondary, 
		blck_chancePointerSecondary,
		blck_blacklistedSecondaryWeapons
	],
	[blck_explosives, blck_chanceThowable],
	[_headGear, blck_chanceHeadgear],
	[_uniforms, blck_chanceUniform],
	[_vests, blck_chanceVest],
	[_backpacks, blck_chanceBackpack],
	[blck_launcherTypes, 1.0],  // this is determined elsewhere for GMSAI
	[blck_NVG, 1.0],  // this is determined elsewhere for GMSAI
	[blck_binocs,blck_chanceBinoc],
	[blck_ConsumableItems, 1.0],
	[blck_medicalItems, 1.0],
	[blck_loot, 1.0]
];
[_group,_gear,blck_launchersPerGroup,blck_useNVG] call GMSCore_fnc_setupGroupGear;
if !(_areaDimensions isEqualTo []) then 
{
	[_group,[],[_pos,_areaDimensions],300,0.33] call GMSCore_fnc_initializeWaypointsAreaPatrol;
};

_group selectLeader ((units _group) select 0);
//[format["blck_fnc_spawnGroup: _group = %1",_group]] call blck_fnc_log;
_group

