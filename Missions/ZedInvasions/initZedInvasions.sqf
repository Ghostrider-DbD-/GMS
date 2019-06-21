/*
  Red Mission timer
  Code by blckeagls
  Modified by Ghostrider
   Last modified 7/18/15 
  See Major\majorTimer.sqf for comments
*/
//diag_log "[DBD Exile MS] Initializing Zed Invasion Scripts";

Zed_customPatrolLocations = [];
Zed_HoardLocations = [];
Zed_landLocations = [];
Zed_townTriggers = [];

Zed_locationsInitialized = false;
Zed_triggersInitialized = false;
execVM "\q\addons\custom_server\AIMission\ZedInvasions\ZedInvasionsFunctions.sqf";
execVM "\q\addons\custom_server\AIMission\ZedInvasions\setupLocations.sqf";
execVM "\q\addons\custom_server\AIMission\ZedInvasions\setupTriggers.sqf";






	

