/*
  setupLocations
  based on code by Face from A3EAI for the same purpose.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
waitUntil {blck_locationsInitialized};

//diag_log "[DBD Exile MS] Settingup triggers";
private ["_cfgWorldName","_startTime","_allPlaces","_telePositions","_allLocations","_noGroups"];

_spawnchance = 0.40;
_paraSpawnChance = 0.01;

_patrolRadius = 200;
 
blck_townTriggers = [];
blck_customPatrolLocations = [];
{
	////diag_log format["setting up trigger for %1",_x];
	_trg = createTrigger ["EmptyDetector", _x select 1];
	////diag_log format["Trigger for city name %1 type name %2",_x select 0, _x select 2];
	_maxAI = 1;
	_unitLevel = "orange";

	switch (_x select 2) do
	{
		case "NameCityCapital": {
			_maxAI = 4;
			_unitLevel = "red";
			_noGroups = 3;
		};
		case "NameCity": {
			_maxAI = 3;
			_unitLevel = "blue";
			_noGroups = 2;			
		};
		case "NameVillage": {
			_maxAI = 2;
			_unitLevel = "blue";
			_noGroups = 1;			
		};
		case "NameLocal": {
			if (_x select 2 in ["military"]) then
			{
				_maxAI = 3;
				_unitLevel = "red";
				_noGroups = 2;				
			}
			else
			{
				_maxAI = 2;
				_unitLevel = "blue";
				_noGroups = 1;
			};
		};
	
	};
	
	////diag_log format["parameters for trigger are _maxAI %1 and _unitLevel %1", _maxAI, _unitLevel];

	["static",_trg,[],_patrolRadius,_unitLevel,(_x select 1),(_x select 0),_maxAI,_spawnchance,_paraSpawnChance,_noGroups] call blck_initializeTrigger;
	
	blck_townTriggers pushBack _trg;
	
}forEach blck_PatrolLocations;

{
	////diag_log format["setting up trigger for %1",_x];
	_trg = createTrigger ["EmptyDetector", _x select 1];
	["static",_trg,[],_patrolRadius,"red",(_x select 1),(_x select 0),_maxAI,_spawnchance,_paraSpawnChance,_noGroups] call blck_initializeTrigger;
	blck_townTriggers pushBack _trg;	
}forEach blck_customPatrolLocations;

blck_triggersInitialized = true;
	
