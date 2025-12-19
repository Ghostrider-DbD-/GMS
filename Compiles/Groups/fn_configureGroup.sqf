/*
    GMS_fnc_configureGroup 

*/

#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"

params[
["_group", grpNull], 
["_difficulty", -1],
"_weaponList",
"_sidArms",
"_headgear",
"_uniforms",
"_vests",
"_backpacks"];

_group setVariable["GMS_difficulty",_difficulty];

// TODO - use a select function based on the numeric value for _difficulty rather than this kludgy fix
private _skills = missionNamespace getVariable[format["GMS_Skills%1",_difficulty],GMS_SkillsRed];
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
// TODO - use a select function based on the numeric value for _difficulty rather than this kludgy fix
private _money = (missionNamespace getVariable[format["GMS_rewards%1",_difficulty],GMS_rewardsOrange]) select 0;
//diag_log format["GMS_fnc_spawnGroup: _money = %1 | _group = %2",_money,_group];
[_group,_difficulty,_money] call GMSCore_fnc_setupGroupMoney;        