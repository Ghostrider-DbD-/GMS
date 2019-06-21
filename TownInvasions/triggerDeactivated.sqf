/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/

_trigger = _this select 0;
_trigger setTriggerArea [600, 600, 0, false];
_groupArray = _trigger getVariable "GroupArray";
_townName = _trigger getVariable "locationname";
_trigger setVariable ["isCleaning",true];
diag_log format["Trigger for town name %1 deactivated",_townName ];

uiSleep 120; // depsawn AI after 2 min

[_trigger] call blck_despawnPatrol;

uiSleep 300;  // wait 10 min before re-activating the trigger
_trigger setVariable ["isCleaning",false];
diag_log format["Trigger for town name %1 Re-activated",_townName ];





