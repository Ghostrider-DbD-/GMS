/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/

_trigger = _this select 0;
//_spawner = _trigger getVariable {"Spawner",objNull};
//deleteVehicle _spawner;
_trigger setTriggerArea [600, 600, 0, false];
uiSleep 300;  // wait 10 min before re-activating the trigger
//diag_log format["Trigger for town name %1 Re-activated",_townName ];





