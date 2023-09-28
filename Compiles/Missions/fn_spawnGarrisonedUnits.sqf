

params[
    ["_coords",[]],
    ["_garrisonedUnits",[]],
    ["_difficulty","Red"],
    ["_uniforms",[]],
    ["_headGear",[]],
    ["_vests",[]],
    ["_backpacks",[]],
    ["_weaponList",[]],
    ["_sideArms",[]]
];

if (_weaponList isEqualTo []) then {_weaponList = [_aiDifficultyLevel] call GMS_fnc_selectAILoadout};
if (_sideArms  isEqualTo [])  then {_sideArms = [_aiDifficultyLevel] call GMS_fnc_selectAISidearms};
if (_uniforms  isEqualTo [])  then {_uniforms = [_aiDifficultyLevel] call GMS_fnc_selectAIUniforms};
if (_headGear  isEqualTo [])  then {_headGear = [_aiDifficultyLevel] call GMS_fnc_selectAIHeadgear};
if (_vests  isEqualTo [])     then {_vests = [_aiDifficultyLevel] call GMS_fnc_selectAIVests};
if (_backpacks  isEqualTo []) then {_backpacks = [_aiDifficultyLevel] call GMS_fnc_selectAIBackpacks};    
#define unitsToSpawn 1
{
    private _group = [[0,0,0],count _garrisonedUnits,_difficulty,[],_uniforms,_headgear,_vests,_backpacks,_weaponList,_sidearms,false] call GMS_fnc_spawnGroup;
    private _unit = (units _group) select 0;
    _unit setPosATL (_unitRelPos vectorAdd (getPosATL _coords));
    _unit setDir _unitDir;
    _unit disableAI "PATH";
} forEach _garrisonedUnits;

  