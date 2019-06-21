/*
  setupLocations
  based on code by Face from A3EAI for the same purpose.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
waitUntil {Zed_locationsInitialized};

diag_log "[DBD Exile MS] Setting up triggers for Zombie and Demon spawns";
private ["_cfgWorldName","_startTime","_allPlaces","_telePositions","_allLocations","_noGroups"];

_spawnchance = 0.99;
_houses = 

{
	//diag_log format["setting up trigger for %1",_x];
	_trg = createTrigger ["EmptyDetector", _x select 1];
	diag_log format["Trigger for city name %1 type name %2",_x select 0, _x select 2];
	_spawners = 1;

	switch (_x select 2) do
	{
		case "NameCityCapital": {
			_spawners = 4;
		};
		case "NameCity": {
			_spawners = 3;		
		};
		case "NameVillage": {
			_spawners = 1;	
		};
		case "NameLocal": {
			if (_x select 2 in ["military"]) then
			{
				_spawners = 2;				
			}
			else
			{
				_spawners = 1;
			};
		};
	
	};
	
	//diag_log format["parameters for trigger are _maxAI %1 and _unitLevel %1", _maxAI, _unitLevel];

	[_trg,(_x select 1),(_x select 0),_spawnchance,_spawners] call Zed_initializeTrigger;
	
	Zed_townTriggers pushBack _trg;
	
}forEach Zed_HoardLocations;

{
	//diag_log format["setting up trigger for %1",_x];
	_trg = createTrigger ["EmptyDetector", _x select 1];
	["static",_trg,[],_patrolRadius,"red",(_x select 1),(_x select 0),_maxAI,_spawnchance,_paraSpawnChance,_noGroups] call Zed_initializeTrigger;
	Zed_townTriggers pushBack _trg;	
}forEach Zed_customPatrolLocations;

Zed_triggersInitialized = true;
	
