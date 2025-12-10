/*
	GMS_fnc_spawnGroup
	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"
	
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
	["_scuba",false],
	["_timeOut",300],
	["_waypointclass","Soldier"]
];
/*
{
	diag_log format["_fn_spawnGroup: _this %1 = %2",_forEachIndex, _this select _forEachIndex];
} forEach _this;
*/
if (_weaponList isEqualTo []) then {_weaponList = [_skillLevel] call GMS_fnc_selectAILoadout};
if (_sideArms isEqualTo [])  then {_sideArms = [_skillLevel] call GMS_fnc_selectAISidearms};
if (_uniforms isEqualTo [])  then {_uniforms = [_skillLevel] call GMS_fnc_selectAIUniforms};
if (_headGear isEqualTo [])  then {_headGear = [_skillLevel] call GMS_fnc_selectAIHeadgear};
if (_vests isEqualTo [])     then {_vests = [_skillLevel] call GMS_fnc_selectAIVests};
if (_backpacks isEqualTo []) then {_backpacks = [_skillLevel] call GMS_fnc_selectAIBackpacks};

private _difficultyIndex = [_skillLevel] call GMS_fnc_getIndexFromDifficulty;

/*
params[
		["_pos",[0,0,0]],  // center of the area in which to spawn units
		["_patrolAreaMarker",GMSCore_mapMarker],
		["_markerDelete",false],	
		["_units",0],  // Number of units to spawn
		["_side",GMSCore_Side],
		["_baseSkill",0.7],
		["_alertDistance",500], 	 // How far GMS will search from the group leader for enemies to alert to the kiillers location
		["_intelligence",0.5],  	// how much to bump knowsAbout after something happens
		["_bodycleanuptimer",600],  // How long to wait before deleting corpses for that group
		["_maxReloads",-1], 			// How many times the units in the group can reload. If set to -1, infinite reloads are available.
		["_removeLaunchers",true],
		["_removeNVG",true],
		["_minDamageToHeal",0.4],
		["_maxHeals",1],
		["_smokeShell",""],
		["_aiHitCode",[]],
		["_aiKilledCode",[]],
		["_chanceGarison",0]
];
*/
private _patrolAreaMarker = createMarkerLocal ["GMSPatrol%1",random(10000), _pos];
_patrolAreaMarker setMarkerShapeLocal "ELLIPSE";
_patrolAreaMarker setMarkerSizeLocal [100,100];
private _group = [
	_pos,
	_patrolAreaMarker,
	true, // Delete this marker when all units in group dead
	_numbertospawn,  // Add units later 
	GMSCore_side,
	GMS_baseSkill,
	(GMS_AIAlertDistance select _difficultyIndex),
	(GMS_AIIntelligence select _difficultyIndex),
	GMS_bodyCleanUpTimer,
	-1, // max reloads 
	GMS_launcherCleanup,
	GMS_removeNVG,
	0.4, // min damage to heal,
	1, // max heals 
	"SmokeShellRed",
	[GMS_fnc_unitHit],  // AI Hit Code 
	[GMS_fnc_unitKilled],
	0.33 // chance garrison 
] call GMSCore_fnc_spawnInfantryGroup;
//[format["GMS_fnc_spawnGroup: _pos = %2 | _group = %1",_group,_pos]] call GMS_fnc_log;
_group setVariable["GMS_difficulty",_skillLevel];

[_group] call GMSCore_fnc_setupGroupBehavior;
private _skills = missionNamespace getVariable[format["GMS_Skills%1",_skillLevel],GMS_SkillsRed];
[_group,_skills] call GMSCore_fnc_setupGroupSkills;

private _gear = [
	[
		_weaponList,
		GMS_chancePrimary,
		GMS_chanceOpticsPrimary,
		GMS_chanceMuzzlePrimary,
		GMS_chancePointerPrimary,
		GMS_blacklistedPrimaryWeapons
	], // Just adding together all the subclasses of primary weaponss
	[
		_sideArms, 
		GMS_chanceSecondary, 
		GMS_chanceOpticsSecondary, 
		GMS_chanceMuzzleSecondary, 
		GMS_chancePointerSecondary,
		GMS_blacklistedSecondaryWeapons
	],
	[GMS_explosives, GMS_chanceThowable],
	[_headGear, GMS_chanceHeadgear],
	[_uniforms, GMS_chanceUniform],
	[_vests, GMS_chanceVest],
	[_backpacks, GMS_chanceBackpack],
	[GMS_launcherTypes, 1.0],  // this is determined elsewhere for GMSAI
	[GMS_NVG, 1.0],  // this is determined elsewhere for GMSAI
	[GMS_binocs,GMS_chanceBinoc],
	[GMS_ConsumableItems, 1.0],
	[GMS_medicalItems, 1.0],
	[GMS_loot, 1.0]
];
[_group,_gear,GMS_launchersPerGroup,GMS_useNVG] call GMSCore_fnc_setupGroupGear;
private _money = (missionNamespace getVariable[format["GMS_rewards%1",_skillLevel],GMS_rewardsOrange]) select 0;
//diag_log format["GMS_fnc_spawnGroup: _money = %1 | _group = %2",_money,_group];
[_group,_difficulty,_money] call GMSCore_fnc_setupGroupMoney;

_group selectLeader ((units _group) select 0);
//[format["GMS_fnc_spawnGroup: _group = %1",_group]] call GMS_fnc_log;
_group

