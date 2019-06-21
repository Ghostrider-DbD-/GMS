/*
  Red Mission timer
  Code by blckeagls
  Modified by Ghostrider
   Last modified 7/18/15 
  See Major\majorTimer.sqf for comments
*/
diag_log "[DBD Exile MS]Initializing Town Invasions Scripts";

blck_PatrolLocations = [];
blck_landLocations = [];
blck_locationsInitialized = false;
blck_triggersInitialized = false;
execVM "\q\addons\custom_server\AIMission\TownInvasions\TownInvasionsFunctions.sqf";
execVM "\q\addons\custom_server\AIMission\TownInvasions\setupLocations.sqf";
execVM "\q\addons\custom_server\AIMission\TownInvasions\setupTriggers.sqf";






	

