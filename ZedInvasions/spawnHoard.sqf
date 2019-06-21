/*
  Determine whether AI will spawn and if so if they drop in from heli, spawn on ground or drive in using vehicle.
  Modified by Ghostrider
  Last updated 7/31/15  
*/
private["_trigger","_max","_min","_num","_units","_spawnPoints","_pos","_skillLevel","_aiGroup","_useLauncher","_weaponList","_i","_launcherType","_buildingPos","_uniforms","_headGear"];

_pos = _this select 0;
_spawner = "Ryanzombieslogicspawnmixed" createVehicle getPos _trigger;
_spawner setSide "LOGIC";
_spawner;


