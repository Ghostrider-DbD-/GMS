/*
	AI Mission for Epoch Mod for Arma 3
	By Ghostrider
	Functions used by the mission system.
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

private _functions = [
	// General functions
	["blck_fnc_FindSafePosn","\q\addons\custom_server\Compiles\Functions\GMS_fnc_findSafePosn_4.sqf"],

	// Player-related functions
	["blck_fnc_handlePlayerUpdates","\q\addons\custom_server\Compiles\Units\GMS_fnc_handlePlayerUpdates.sqf"],

	// Mission-related functions
	["blck_fnc_garrisonBuilding_RelPosSystem","\q\addons\custom_server\Compiles\Missions\GMS_fnc_garrisonBuilding_relPosSystem.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_ATL","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_ATL.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_relPos","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_relPos.sqf"],
	["blck_fnc_addDyanamicUMS_Mission","q\addons\custom_server\Compiles\Missions\GMS_fnc_addDynamicUMS_Mission.sqf"], 
	
	// Functions specific to vehicles, whether wheeled, aircraft or static
	//["blck_fnc_protectVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_protectVehicle.sqf"],
	["blck_fnc_configureMissionVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_configureMissionVehicle.sqf"],
	//["blck_fnc_spawnMissionReinforcements","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionReinforcements.sqf"],
	//["blck_fnc_releaseVehicleToPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_releaseVehicleToPlayers.sqf"],
	//["blck_fnc_reloadVehicleAmmo","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_reloadVehicleAmmo.sqf"],
	//["blck_fnc_scanForPlayersNearVehicles","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_scanForPlayersNearVehicles.sqf"],
	//["blck_fnc_revealNearbyPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_revealNearbyPlayers.sqf"],
	//["blck_fnc_unlockVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_unlockVehicle.sqf"],
	["blck_fnc_applyVehicleDamagePenalty","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_applyVehicleDamagePenalty.sqf"],		
	["blck_fnc_handleVehicleGetOut","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_handleVehicleGetOut.sqf"],	
	//["blck_fnc_loadVehicleCrew","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_loadVehicleCrew.sqf"],

	// functions to support Units
	["blck_fnc_alertGroupUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertGroupUnits.sqf"],
	["blck_fnc_alertNearbyGroups","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyGroups.sqf"],
	["blck_fnc_alertNearbyVehicles","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyVehicles.sqf"],
	["blck_fnc_spawnHostage","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnHostage.sqf"],
	["blck_fnc_spawnLeader","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnLeader.sqf"],
	["blck_fnc_spawnCharacter","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnCharacter.sqf"],
	["blck_fnc_placeCharacterInBuilding","\q\addons\custom_server\Compiles\Units\GMS_fnc_placeCharacterInBuilding.sqf"]	
];

{
	_x params ["_name","_path"];
	missionnamespace setvariable [_name,compileFinal  preprocessFileLineNumbers _path];
} foreach  _functions;




