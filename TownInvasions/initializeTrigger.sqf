/*
  setupTrigger
  based on code by Face from A3EAI for the same purpose.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
private["_trigger","_mode"];
// _this parameters
// 0 = mode which is always static 
// 1 = the trigger to be initialized
// 2 = [units spawned ]
// 3 = patrol dist, which is based on dimensions of the city
// 4 = unit level, blue, red, green or orange
// 5 = location, which could be array of spawn points or the location of the city center
// 6 = location name
// 7 = max units to spawn
// 8 = spawnChance
// 9 = para Chance or chance that the units will be paradropped
// 10 = number of groups to spawn

//diag_log format["Initializing Trigger for %1",_this select 6];

_trigger = _this select 1;
_trigger setTriggerArea [600, 600, 0, false];
_trigger setTriggerActivation ["ANY", "PRESENT", true];
_trigger setTriggerTimeout [10, 10, 10, true];
_trigger setTriggerText "";
_trigger setTriggerStatements ["{if (isPlayer _x) exitWith {1}} count thisList != 0;","_nul = [thisTrigger] call blck_triggerActivated;","0 = [thisTrigger] spawn blck_triggerDeactivated;"];

_trigger setVariable ["spawnType",_this select 0];
_trigger setVariable ["GroupArray",(_this select 2)];
_trigger setVariable ["patrolDist",(_this select 3)];
_trigger setVariable ["unitLevel",(_this select 4)];
_trigger setVariable ["locationPos",(_this select 5)];
_trigger setVariable ["locationName",(_this select 6)];
_trigger setVariable ["maxUnits",(_this select 7)];
_trigger setVariable ["spawnChance",(_this select 8)];
_trigger setVariable ["paraSpawnChance",(_this select 9)];
_trigger setVariable ["noGroups",(_this select 10)];
_trigger setVariable ["triggerStatements",+(triggerStatements _trigger)];
_trigger setVariable ["initialized",true];

_triggerPos = getPosATL _trigger;
_locationArray = [];

//If no markers specified in position array, then generate spawn points using building positions (search for buildings within 250m. generate a maximum of 150 positions).
private["_nearbldgs","_ignoredObj"];
_nearbldgs = _triggerPos nearObjects ["HouseBase",150];
//_ignoredObj = missionNamespace getVariable ["A3EAI_ignoredObjects",[]];
{
	scopeName "bldgloop";
	_pos = getPosATL _x;
	if (!(surfaceIsWater _pos) && {(sizeOf (typeOf _x)) > 15}) then {
		_locationArray pushBack _pos;
		if ((count _locationArray) > 149) then {
			breakOut "bldgloop";
		};
	};
} count _nearbldgs;

_trigger setVariable ["spawnPoints",_locationArray];

true
