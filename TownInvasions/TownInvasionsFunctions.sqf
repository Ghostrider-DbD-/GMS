/*
  Red Mission timer
  Code by blckeagls
  Modified by Ghostrider
   Last modified 7/18/15 
  See Major\majorTimer.sqf for comments
*/
diag_log "[DBD Exile MS]Initializing Town Invasion Functions";

blck_initializeTrigger = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\initializeTrigger.sqf";

blck_triggerActivated = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\triggerActivated.sqf";
blck_triggerDeactivated = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\triggerDeactivated.sqf";
blck_spawnPatrol = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\spawnPatrol.sqf";
blck_addPatrolWaypoints = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\setWaypoints.sqf";
blck_despawnPatrol = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\despawnPatrol.sqf";
//blck_setGroundPatrolWaypoints = compile preprocessFileLineNumbers "\q\addons\custom_server\AIMission\TownInvasions\setGroundPatrolWaypoints.sqf";






	

