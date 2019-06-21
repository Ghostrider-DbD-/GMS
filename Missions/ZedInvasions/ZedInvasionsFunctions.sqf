/*
  Red Mission timer
  Code by blckeagls
  Modified by Ghostrider
   Last modified 7/18/15 
  See Major\majorTimer.sqf for comments
*/
//diag_log "[DBD Exile MS]Initializing Zed Invasion Functions";

Zed_initializeTrigger = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\ZedInvasions\initializeTrigger.sqf";
Zed_triggerActivated = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\ZedInvasions\triggerActivated.sqf";
Zed_triggerDeactivated = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\ZedInvasions\triggerDeactivated.sqf";
Zed_spawnHoard = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\ZedInvasions\spawnHoard.sqf";







	

