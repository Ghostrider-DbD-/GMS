/*
	AI Mission for Epoch Mod for Arma 3
	By Ghostrider
	Functions and global variables used by the mission system.
	
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
	["blck_fnc_setAILocality","\q\addons\custom_server\Compiles\Functions\GMS_fnc_setAILocality.sqf"],
	["blck_fnc_ai_offloadToClients","\q\addons\custom_server\Compiles\Functions\GMS_fnc_ai_offloadToClients.sqf"],	


	// Player-related functions
	["blck_fnc_handlePlayerUpdates","\q\addons\custom_server\Compiles\Units\GMS_fnc_handlePlayerUpdates.sqf"],

	// Mission-related functions
	["blck_fnc_garrisonBuilding_RelPosSystem","\q\addons\custom_server\Compiles\Missions\GMS_fnc_garrisonBuilding_relPosSystem.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_ATL","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_ATL.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_relPos","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_relPos.sqf"],
	["blck_fnc_addDyanamicUMS_Mission","q\addons\custom_server\Compiles\Missions\GMS_fnc_addDynamicUMS_Mission.sqf"], 
	
	// Group-related functions
	
	// Functions specific to vehicles, whether wheeled, aircraft or static
	["blck_fnc_protectVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_protectVehicle.sqf"],
	["blck_fnc_configureMissionVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_configureMissionVehicle.sqf"],
	["blck_fnc_spawnMissionReinforcements","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionReinforcements.sqf"],
	["blck_fnc_releaseVehicleToPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_releaseVehicleToPlayers.sqf"],
	["blck_fnc_reloadVehicleAmmo","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_reloadVehicleAmmo.sqf"],
	["blck_fnc_scanForPlayersNearVehicles","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_scanForPlayersNearVehicles.sqf"],
	["blck_fnc_revealNearbyPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_revealNearbyPlayers.sqf"],
	["blck_fnc_unlockVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_unlockVehicle.sqf"],
	["blck_fnc_applyVehicleDamagePenalty","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_applyVehicleDamagePenalty.sqf"],		
	//["GMS_fnc_revealVehicleToUnits","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_revealVehicleToUnits.sqf"],	
	["blck_fnc_handleVehicleGetOut","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_handleVehicleGetOut.sqf"],	
	//["blck_fnc_checkForEmptyVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_checkForEmptyVehicle.sqf"],		
	["blck_fnc_handleEmptyVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_handleEmptyVehicle.sqf"],		
	["blck_fnc_loadVehicleCrew","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_loadVehicleCrew.sqf"],
	//["blck_fnc_selectVehicleCrewCount","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectVehicleCrewCount.sqf"],
	["blck_fnc_sm_spawnLootVehicles", "\q\addons\custom_server\Compiles\Missions\GMS_fnc_sm_spawnLootVehicles.sqf"],

	// functions to support Units
	["blck_fnc_removeGear","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeGear.sqf"],			// Strip an AI unit of all gear.
	["blck_fnc_spawnUnit","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnUnit.sqf"],				// spawn individual AI
	["blck_EH_AIKilled","\q\addons\custom_server\Compiles\Units\GMS_EH_AIKilled.sqf"], 					// Event handler to process AI deaths	
	["blck_EH_AIHit","\q\addons\custom_server\Compiles\Units\GMS_EH_AIHit.sqf"],
	["blck_EH_unitWeaponReloaded","\q\addons\custom_server\Compiles\Units\GMS_EH_unitWeaponReloaded.sqf"],
	["blck_EH_AIfiredNear","\q\addons\custom_server\Compiles\Units\GMS_EH_AIfiredNear.sqf"],
	//["blck_fnc_processAIKill","\q\addons\custom_server\Compiles\Units\GMS_fnc_processAIKill.sqf"],
	["blck_fnc_removeLaunchers","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeLaunchers.sqf"],
	["blck_fnc_removeNVG","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeNVG.sqf"],
	["blck_fnc_alertGroupUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertGroupUnits.sqf"],
	["blck_fnc_alertNearbyGroups","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyGroups.sqf"],
	["blck_fnc_alertNearbyVehicles","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyVehicles.sqf"],
	//["blck_fnc_processIlleagalAIKills","\q\addons\custom_server\Compiles\Units\GMS_fnc_processIlleagalAIKills.sqf"],
	//["blck_fnc_cleanupDeadAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupDeadAI.sqf"],		// handles deletion of AI bodies and gear when it is time.
	["blck_fnc_setSkill","\q\addons\custom_server\Compiles\Units\GMS_fnc_setSkill.sqf"],
	["blck_fnc_cleanupAliveAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupAliveAI.sqf"],
	["blck_fnc_deleteAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_deleteAI.sqf"],
	//["blck_fnc_processAIHit","\q\addons\custom_server\Compiles\Units\GMS_fnc_processAIHit.sqf"],
	["blck_fnc_spawnHostage","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnHostage.sqf"],
	["blck_fnc_spawnLeader","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnLeader.sqf"],
	["blck_fnc_spawnCharacter","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnCharacter.sqf"],
	//["blck_fnc_spawnParaUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnParaUnits.sqf"],
	["blck_fnc_placeCharacterInBuilding","\q\addons\custom_server\Compiles\Units\GMS_fnc_placeCharacterInBuilding.sqf"],	
	//["blck_fnc_removeAllAIgear","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeAllAIgear.sqf"],	

	// HC support functions
	["blck_fnc_HC_XferGroup","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_XferGroup.sqf"],
	["blck_fnc_HC_passToHCs","\q\addons\custom_server\Compiles\HC\GMS_fnc_passToHCs.sqf"],
	["blck_fnc_HC_leastBurdened","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_leastBurdened.sqf"],
	["blck_fnc_HC_countGroupsAssigned","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_countGroupsAssigned.sqf"]
];

{
	_x params ["_name","_path"];
	missionnamespace setvariable [_name,compileFinal  preprocessFileLineNumbers _path];
} foreach  _functions;

#ifdef GRGserver	
["blck_functions loaded using GRGserver settings ---- >>>> "] call blck_fnc_log;
#endif



