/*
  setupLocations
  based on code by Face from A3EAI for the same purpose.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
diag_log "[DBD Exile MS] Getting Locations";
private ["_cfgWorldName","_startTime","_allPlaces","_telePositions","_allLocations"];

_startTime = diag_tickTime;
_allPlaces = [];
_telePositions = [];
_allLocations = [];
_cfgWorldName = configFile >> "CfgWorlds" >> worldName >> "Names";

blck_customPatrolLocations = [];


for "_i" from 0 to ((count _cfgWorldName) -1) do {
	_allPlaces set [(count _allPlaces),configName (_cfgWorldName select _i)];
	//diag_log format ["DEBUG :: Added location %1 to allPlaces array.",configName (_cfgWorldName select _i)];
};
//diag_log format ["DEBUG :: allPlaces array contains %1 entries", count _allPlaces];

{
	_placeType = getText (_cfgWorldName >> _x >> "type");

	if (_placeType in ["NameCityCapital","NameCity","NameVillage","NameLocal"]) then {
		_placeName = getText (_cfgWorldName >> _x >> "name");
		_placePos = [] + getArray (_cfgWorldName >> _x >> "position");

		//diag_log format["[DBD Exile MS] _placename=%1;  _placePos=%2;  _placeType = %3",_placeName,_placePos,_placeType];		
		//  **********************
		_isAllowedPos = true;  // add checks for spawns and traders here.
		//  **********************
		
		if (_isAllowedPos) then {
			if (_placeType in ["NameCityCapital","NameCity"]) then {
				
				blck_PatrolLocations pushBack [_placeName,_placePos,_placeType];
				//diag_log format["addiing trigger for CITY%1",_placeName];
			};
			if (_placeType in ["NameLocal"] && _placename in ["military"]) then
			{
				blck_PatrolLocations pushBack [_placeName,_placePos,_placeType];
				//diag_log format["addiing trigger for military location %1",_placePos];				
			};
			if (_placeType in["NameVillage","NameLocal"]) then {
				if !(_placeName in ["military"]) then
				{
					//_placeName = format["Military Complex at %1", mapGridPosition _placePos];
					//diag_log format["#- setupLocations -# adding trigger for military installation at %1, map grid location %2, with message of %3",_placePos,mapGridPosition _placePos,_placeName];
					blck_landLocations pushBack [_placeName,_placePos,_placeType];
					//diag_log format["location added with name of %1",_placeName];
				};

			};
			_allLocations pushBack [_placeName,_placePos,_placeType];

		};
	};
} forEach _allPlaces;

{
	//diag_log format["[DEBUG :: setupLocations.sqf:: blck_PatrolLocations includes _x =%1]",_x];
}forEach blck_PatrolLocations;

blck_locationsInitialized = true;