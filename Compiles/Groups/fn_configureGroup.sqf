/*

*/

#include "\x\addons\GMS\Compiles\Init\GMS_defines.hpp"

params[["_group", grpNull], ["_difficulty", -1]];

		private _skills = missionNamespace getVariable[format["GMS_Skills%1",_skillLevel],GMS_SkillsRed];
		[_group,_skills] call GMSCore_fnc_setupGroupSkills;