/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

	#include "\q\addons\custom_server\Configs\blck_defines.hpp"

	/*
		changing any of these variables may break the mission system
	*/
	blck_locationBlackList = [];  // Do not touch ...
	blck_debugON = true;  //  should be set to false;  ... 
	blck_debugLevel = 4;  //  should be set to 0 ... 

	[format["Loading configurations for Non-militarized servers"]] call blck_fnc_log;
	/*
		**************************************
		Configurations begin here
		**************************************
	*/
	/***************************************************************
		BLCKEAGLS SUPPLEMENTAL MODULES
	****************************************************************	
		Configuration for Addons that support the overall Mission system.
		These are:
		1) a module to spawn map  addons generated with the Eden Editor
		2) And a moduel to spawn static loot crates at specific location
		3) A time acceleration module.
	*/

	blck_simulationManager = blck_useBlckeaglsSimulationManager; 
	blck_hideRocksAndPlants = true; //  When true, any rocks, trees or bushes under enterable buildings will be 'hidden'

	/*
		blck_simulationManagementOff  - no simulation management occurs
		blck_useBlckeaglsSimulationManager - simulation is enabled/disabled by periodic checks for nearby players; a 'wake' function is included when a units simulation is turned on
		blck_useDynamicSimulationManagement 2 - arma dynamic simulation is used
	*/
	
	/**************************************************************
	
	BLACKLIST LOCATIONS
	
	**************************************************************/
	// if true then missions will not spawn within 1000 m of spawn points for Altis, Bornholm, Cherno, Esseker or stratis. 
	blck_blacklistTraderCities = true;  // Set this = true if you would like the mission system to automatically search for the locations of the Epoch/Exile trader cities. Note that these are added to the list of blacklisted locations for Epoch for the most common maps.
	
	/***********************************************************
	
	GENERAL MISSION SYSTEM CONFIGURATION
	
	***********************************************************/
	
	///////////////////////////////
	//  Kill message configurations
	// These determine whether and when messages are sent to players regarding AI Kills or illegal kills that might damage a vehicle.
	blck_useKillMessages = true;  // when true a message will be broadcast to all players each time an AI is killed; may impact server performance.
	blck_useKillScoreMessage = true; // when true a tile is displayed to the killer with the kill score information
	blck_useIEDMessages = true;  // Displayes a message when a player vehicle detonates and IED (such as would happen if a player killed AI with a forbidden weapon).

blck_rewards = [[0,0],[0,0],[0,0],[0,0]];
private _modType = [] call GMS_fnc_getModType;
switch (_modType) do 
{
	case "Epoch": {
		// expressed as crypto min, crypto max
		blck_rewardsNotifications = ["dynamicText"];
		
		// expressed as [][tabs min, tabs max],[respect min,respect max]]
		blck_rewardsBlue = [[5,10],[8,12]];
		blck_rewardsRed = [[8,14],12,15];
		blck_rewardsGreen = [[10,18],[15,20]];
		blck_rewardsOrange = [[12,20],20,25];
		blck_rewards = [blck_rewardsBlue,blck_rewardsRed,blck_rewardsGreen,blck_rewardsOrange];
		blck_distanceBonus = 3; // per 100 M, max = 5 * this value;
		blck_killsBonus = 3; // from 2X up, max 6* this value
		blck_killstreakTimeout = 300; // 5 min
		blck_distantIncrementForCalculatingBonus = 100;
	};
	case "Exile": {
		// expressed as [][tabs min, tabs max],[respect min,respect max]]
		blck_rewardsBlue = [[5,10],[8,12]];
		blck_rewardsRed = [[8,14],[12,15]];
		blck_rewardsGreen = [[10,18],[15,20]];
		blck_rewardsOrange = [[12,20],[20,25]];
		blck_rewards = [blck_rewardsBlue,blck_rewardsRed,blck_rewardsGreen,blck_rewardsOrange];
		blck_rewardsNotifications = ["dynamicText"];

		blck_respectBonusForKillstreaks = 3; 
		blck_moneyGainedForKillstreaks = 3; // per kill of the current killstreak 

		blck_killstreakTimeout = 300; // 5 min
		blck_distantIncrementForCalculatingBonus = 100;
	};
	case "default": {
		blck_rewardsNotifications = ["dynamicText"];
		blck_killstreakTimeout = 300; // 5 min
	};
};
	///////////////////////////////
	// MISSION MARKER CONFIGURATION
	// blck_labelMapMarkers: Determines if when the mission composition provides text labels, map markers with have a text label indicating the mission type
	//When set to true,"arrow", text will be to the right of an arrow below the mission marker. 
	// When set to true,"dot", ext will be to the right of a black dot at the center the mission marker. 
	blck_labelMapMarkers = [true,"center"];  
	blck_preciseMapMarkers = true;  // Map markers are/are not centered at the loot crate
	blck_showCountAliveAI = true;

	//Minimum distance between missions
	blck_MinDistanceFromMission = 1200;
	blck_minDistanceToBases = 250;
	blck_minDistanceToPlayer = 300;
	blck_minDistanceFromTowns = 200;
	blck_minDistanceFromDMS = 800;  // minimum distance for a GMS mission from any nearby DMS missions. set to -1 to disable this check.	
	
	///////////////////////////////
	// Mission Smoke and Signals
	///////////////////////////////
	
	// global loot crate options
	// Options to spawn a smoking wreck near the crate.  When the first parameter is true, a wreck or junk pile will be spawned. 
	// It's position can be either "center" or "random".  smoking wreck will be spawned at a random location between 15 and 50 m from the mission.
	blck_SmokeAtMissions = [true,"random"];  // set to [false,"anything here"] to disable this function altogether. 
	blck_useSignalEnd = true; // When true a smoke grenade/chemlight will appear at the loot crate for 2 min after mission completion.
	blck_missionEndCondition = allKilledOrPlayerNear; //allKilledOrPlayerNear;  // Options are allUnitsKilled, playerNear, allKilledOrPlayerNear

	///////////////////////////////
	// General Mission Completion and Loot Settings
	///////////////////////////////	
	blck_killPercentage = 0.999999;  // The mission will complete if this fraction of the total AI spawned has been killed.
								// This facilitates mission completion when one or two AI are spawned into objects.	
	blck_spawnCratesTiming = "atMissionSpawnGround"; // Choices: "atMissionSpawnGround","atMissionSpawnAir","atMissionEndGround","atMissionEndAir".
							 // Crates spawned in the air will be spawned at mission center or the position(s) defined in the mission file and dropped under a parachute.
							 //  This sets the default value but can be overridden by defining  _spawnCrateTiming in the file defining a particular mission.
	blck_loadCratesTiming = "atMissionCompletion"; //""atMissionSpawn"; // valid choices are "atMissionCompletion" and "atMissionSpawn"; 
							// Pertains only to crates spawned at mission spawn.
							// This sets the default but can be overridden for specific missions by defining _loadCratesTiming
							
							// Examples:
							// To spawn crates at mission start loaded with gear set blck_spawnCratesTiming = "atMissionSpawnGround" && blck_loadCratesTiming = "atMissionSpawn"
							// To spawn crates at mission start but load gear only after the mission is completed set blck_spawnCratesTiming = "atMissionSpawnGround" && blck_loadCratesTiming = "atMissionCompletion"
							// To spawn crates on the ground at mission completion set blck_spawnCratesTiming = "atMissionEndGround" // Note that a loaded crate will be spawned.
							// To spawn crates in the air and drop them by chutes set blck_spawnCratesTiming = "atMissionEndAir" // Note that a loaded crate will be spawned.
	blck_allowClaimVehicle = true; // Set this to true if you wish to allow players to claim vehicles using one of the claim vehicle scripts floating around.

	///////////////////////////////
	// PLAYER PENALTIES
	///////////////////////////////	

	blck_RunGear = true;	// When set to true, AI that have been run over will ve stripped of gear, and the vehicle will be given blck_RunGearDamage of damage.
	blck_RunGearDamage = 0.2; // Damage applied to player vehicle for each AI run over
	blck_VK_Gear = true; // When set to true, AI that have been killed by a player in a vehicle in the list of forbidden vehicles or using a forbiden gun will be stripped of gear and the vehicle will be given blck_RunGearDamage of damage
	blck_VK_RunoverDamage = true; // when the AI was run over blck_RunGearDamage of damage will be applied to the killer's vehicle.
	blck_VK_GunnerDamage = false; // when the AI was killed by a gunner on a vehicle that is is in the list of forbidden vehicles, blck_RunGearDamage of damage will be applied to the killer's vehicle each time an AI is killed with a vehicle's gun.

	/* these are weapons, magazines, sensors to be disabled when a vehicle is spawned */
	GMS_forbidenWeapons = [
		/*
		Examples:
		"HMG_127","HMG_127_APC","HMG_M2","HMG_NSVT","GMG_40mm","autocannon_40mm_CTWS","autocannon_30mm_CTWS","autocannon_35mm","LMG_coax","autocannon_30mm","HMG_127_LSV_01"
		*/
	];
	GMS_forbidenMagazines = [
		/*
		Examples
		"24Rnd_missiles","200Rnd_40mm_G_belt"
		*/
	];
	GMS_disableInfrared = false; 
	GMS_disabledSensors = [
		/*
		Current Arma Sensor (Arma 2.06)
		"IRSensorComponent",
		NVSensorComponent",
		"LaserSensorComponent",
		"ActiveRadarSensorComponent",
		"VisualSensorComponent",
		"ManSensorComponnet",
		"DataLinkSensorComponent"
		*/
	];	

	///////////////////////////////
	// MISC MISSION PARAMETERS
	///////////////////////////////
	blck_useKilledAIName = true; // When false, the name of the killer (player), weapon and distance are displayed; otherwise the name of the player, distance and name of AI unit killed are shown.
	blck_useMines = false;   // when true mines are spawned around the mission area. these are cleaned up when a player reaches the crate. Turn this off if you have vehicle patrols.
	blck_cleanupCompositionTimer = 60*30;  // Mission objects will be deleted after the mission is completed after a deley set by this timer.
	blck_cleanUpLootChests = false; // when true, loot crates will be deleted together with other mission objects.
	blck_MissionTimeout = 60*60;  // 60 min - missions will timeout and respawn in another location. This prevents missions in impossible locations from persisting.

	///////////////////////////////
	// Paratroop Settings
	// AI paratrooper reinforcement paramters
	// The behavior of these can be linked to some degree to the spawning of patrolling helis.
	// For example, if you always want a helicopter to spawn paratroops set the value 1.
	// Recommended that you disable paratroops if using muliple aircraft/vehicle patrols
	blck_chanceParaBlue = 0; // [0 - 1] set to 0 to deactivate and 1 to always have paratroops spawn over the center of the mission. This value can be a range as well [0.1,0.3]
	blck_noParaBlue = 3; //  [1-N]
	
	blck_chanceParaRed = 0;
	blck_noParaRed = 3;
	
	blck_chanceParaGreen = 0;
	blck_noParaGreen = 4;
	
	blck_chanceParaOrange = 0;
	blck_noParaOrange = 4;
	
	// Supplemental Loot Parameters.
	
	///////////////////////////////
	//  Heli Patrol Heli Types	
	// Armed Helis
	//////////////////////////////

	_blck_littleBirds = ["B_Heli_Light_01_armed_F"];  //  AH-9 Pawnee  (WEST)
	_blck_armed_hellcats = ["I_Heli_light_03_F"];
	_blck_armed_orcas = ["O_Heli_Light_02_F","O_Heli_Light_02_v2_F"];
	_blck_armed_ghosthawks = ["B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F"];
	_blck_armed_hurons = ["B_Heli_Transport_03_F","B_Heli_Transport_03_black_F"];
	_blck_armed_attackHelis = ["B_Heli_Attack_01_F"];
	_blck_armed_heavyAttackHelis = ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F"];
	_blck_fighters = [
		"O_Plane_CAS_02_F",  // /ti-199 Neophron (CAS)
		"I_Plane_Fighter_03_AA_F",  //  A-143 Buzzard (AA)
		"I_Plane_Fighter_04_F",  //   	A-149 Gryphon
		"B_Plane_CAS_01_F",  // 	A-164 Wipeout (CAS)
		"B_Plane_Fighter_01_F"  //	F/A-181 Black Wasp II
		];
	
	blck_blacklisted_heli_ammo = ["24Rnd_missiles","24Rnd_PG_missiles","12Rnd_PG_missiles","2Rnd_LG_scalpel","6Rnd_LG_scalpel","8Rnd_LG_scalpel","M_Scalpel_AT ","14Rnd_80mm_rockets","38Rnd_80mm_rockets"];
	blck_blacklisted_heli_weapons = ["missiles_SCALPEL","missiles_titan","rockets_Skyfire","missiles_DAGR","missiles_DAR"];
	//_cup_helis = ["uh1h_armed_EPOCH","uh1h_armed_plus_EPOCH"];
	_cup_Helis_missiles = ["CUP_B_412_dynamicLoadout_HIL","CUP_B_AW159_RN_Blackcat","CUP_B_AW159_RN_Blackcat"];
	_cup_attack_helis = [];
	///////////////////////////////
	//  Heli Patrol Settings
	///////////////////////////////

	blck_chanceHeliPatrolBlue = 0.5;  //[0 - 1]  Set to 0 to deactivate and 1 to always have a heli spawn over the mission center and patrol the mission area. 
									//  The chance of paratroops dropping from the heli is defined by blck_chancePara(Blue|Red|Green|Orange) above.
									// Recommend setting the change = 1 if you wish to spawn multiple helis at a mission.
	blck_patrolHelisBlue = _blck_littleBirds;
	blck_noPatrolHelisBlue = 1;
	
	blck_chanceHeliPatrolRed = 0.75; // 0.4;
	blck_patrolHelisRed = _blck_littleBirds;
	blck_noPatrolHelisRed = 1;
	
	blck_chanceHeliPatrolGreen = 0.85;
	blck_patrolHelisGreen = _blck_armed_hellcats + _cup_Helis_missiles;  // _blck_armed_orcas + _blck_armed_ghosthawks;  //_blck_littleBirds;
	blck_noPatrolHelisGreen = 1;
	
	blck_chanceHeliPatrolOrange = 0.95;
	blck_patrolHelisOrange = _blck_armed_heavyAttackHelis + _blck_armed_attackHelis;  //_blck_littleBirds;
	blck_noPatrolHelisOrange = 1;

	////////////////////
	// Enable / Disable Missions
	////////////////////
	
	// Maximum number of missions shown on the map at any one time.
	blck_maxSpawnedMissions = 15;
		
	//Set to -1 to disable. Values of 2 or more force the mission spawner to spawn copies of that mission - this feature is not recommended because you may run out of available groups.
	blck_enableOrangeMissions = 1;  
	blck_enableGreenMissions = 2;
	blck_enableRedMissions = 2;
	blck_enableBlueMissions = 1;
	blck_numberUnderwaterDynamicMissions = 0;  // Values from -1 (no UMS) to N (N Underwater missions will be spawned; static UMS units and subs will be spawned.	

	#ifdef GRGserver
	blck_enableHunterMissions = 1;
	blck_enableScoutsMissions =2;
	blck_maxcrashsites = 2;
	#endif

	////////////////////
	// MISSION TIMERS
	////////////////////
	
	// Reduce to 1 sec for immediate spawns, or longer if you wish to space the missions out	
	blck_TMin_Orange = 480;
	blck_TMin_Green = 420;
	blck_TMin_Blue = 300;
	blck_TMin_Red = 360;
	blck_TMin_UMS = 300;	
	
	#ifdef GRGserver
	blck_TMin_Hunter = 340;
	blck_TMin_Scouts = 300;
	blck_TMin_Crashes = 300;
	#endif
	
	//Maximum Spawn time between missions in seconds
	blck_TMax_Orange = 560;
	blck_TMax_Green = 500;
	blck_TMax_Blue = 360;
	blck_TMax_Red = 420;
	blck_TMax_UMS = 400;

	#ifdef GRGserver
	blck_TMax_Hunter = 400;
	blck_TMax_Scouts = 360;
	blck_TMax_Crashes = 360;
	#endif
	
	///////////////////////////////
	// AI VEHICLE PATROL PARAMETERS
	///////////////////////////////	

	blck_useVehiclePatrols = true; // When true vehicles will be spawned at missions and will patrol the mission area.
	blck_killEmptyAIVehicles = false; // when true, the AI vehicle will be extensively damaged once all AI have gotten outor been killed.
    blck_vehicleDeleteTimer = 120*60;
	////////////////////
	// Mission Vehicle Settings
	////////////////////	
	//Defines how many AI Vehicles to spawn. Set this to -1 to disable spawning of static weapons or vehicles. To discourage players runniing with with vehicles, spawn more B_GMG_01_high
	blck_SpawnVeh_Orange = [1,2]; // Number of static weapons at Orange Missions
	blck_SpawnVeh_Green = [1,2]; // Number of static weapons at Green Missions
	blck_SpawnVeh_Blue = 1;  // Number of static weapons at Blue Missions
	blck_SpawnVeh_Red = 1;  // Number of static weapons at Red Missions

	blck_vehCrew_blue = 3;
	blck_vehCrew_red = 3;
	blck_vehCrew_green = 3;
	blck_vehCrew_orange = 3;

	///////////////////////////////
	// AI STATIC WEAPON PARAMETERS	
	///////////////////////////////
	
	blck_useStatic = true;  // When true, AI will man static weapons spawned 20-30 meters from the mission center. These are very effective against most vehicles
	blck_killEmptyStaticWeapons = true;  // When true, static weapons will have damage set to 1 when the AI manning them is killed.
	blck_staticWeapons = ["B_HMG_01_high_F","B_GMG_01_high_F"/*,"O_static_AT_F"*/];  // [0.50 cal, grenade launcher, AT Launcher]

	////////////////////
	// Mission Static Weapon Settings
	////////////////////
	
	// Defines how many static weapons to spawn. Set this to -1 to disable spawning 
	blck_SpawnEmplaced_Orange = [3]; // Number of static weapons at Orange Missions
	blck_SpawnEmplaced_Green = [2]; // Number of static weapons at Green Missions
	blck_SpawnEmplaced_Blue = 1;  // Number of static weapons at Blue Missions
	blck_SpawnEmplaced_Red = 1;  // Number of static weapons at Red Missions	



	/****************************************************************
	
	GENERAL AI SETTINGS
	
	****************************************************************/
	// When true, AI loadouts will be set from the class names in CfgPricing rather than the settings in the mod-specific configuration files
	blck_useConfigsGeneratedLoadouts = false;
	blck_logBlacklistedItems = true;
	//blck_maximumitempriceinai_loadouts = 1000;
	// lists of black-listed items to be excluded from dynamic loadouts

	/* 
		A list of dlcs will be dumped during server start up.
		You can comment out those you dont want to exclude 
		or identify and add others from the list generated when the dynamicConfigs script is run 
	*/

	blck_blackListedMods = [
		// Uncomment to exclude items/weapons/uniforms/vest/headgear from being included.
		// Add DLC names you wish to exluded as appropriate
		// DLC names will be added to your server.RPT
		//"Kart",
		//"TANK",
		//"ORANGE",
		//"Heli",
		//"Contact",
		//"Enoch",
		//"Orange",
		//"Jets",
		//"Mark",
		//"Expansion"
	];
		blck_blacklistedVests = [
			//"V_Press_F"
		];

		blck_blacklistedUniforms = [
			"U_I_Protagonist_VR",
			"U_C_Protagonist_VR",			
			"U_O_Protagonist_VR",
			"U_B_Protagonist_VR",
			"Exile_Uniform_BambiOverall",
			"Exile_Uniform_ExileCustoms"
		];

		blck_blacklistedBackpacks = [
			//"B_ViperLightHarness_blk_F"
			"I_UAV_01_backpack_F",
			"C_IDAP_UAV_06_backpack_F",
			"C_IDAP_UAV_06_antimine_backpack_F",
			"B_UAV_06_medical_backpack_F",
			"TK_RPG_Backpack_Epoch"
		];

		blck_blacklistedHeadgear = [
			"H_HelmotO_ViperSP_ghex_F",
			"H_HelmetO_VierSP_hex"
		];

		blck_blacklistedPrimaryWeapons = [
			//"srifle_LRR_tna_F"
			"nl_auto_xbow",
			"pvcrifle_01_F",
			"ChainSaw",
			"Hatchet",
			"MultiGun",
			"MeleeSledge",
			"MeleeSword",
			"Power_Sword",
			"MeleeRod",
			"CrudeHatchet",
			"MeleeMaul",
			"WoodClub",
			"Plunger",
			"sr25_epoch"		
		];

		blck_blacklistedSecondaryWeapons = [
			"hgun_Pistol_heav_02_F",
			"hgun_Pistol_tranq_01",
			"nl_auto_xbow",
			"pvcrifle_01_F",
			"ChainSaw",
			"Hatchet",
			"MultiGun",
			"MeleeSledge",
			"MeleeSword",
			"Power_Sword",
			"MeleeRod",
			"CrudeHatchet",
			"MeleeMaul",
			"WoodClub",
			"Plunger"
		];

		blck_blacklistedLaunchersAndSwingWeapons = [

		];

		blck_blacklistedOptics = [
			//"optic_tws"
		];

		blck_blacklistedAttachments = [

		];

		blck_blacklistedItems = [

		];	
	/////////////////////////////////////////////
	
	blck_groupBehavior = "SAFE";  // https://community.bistudio.com/wiki/ArmA:_AI_Combat_Modes
	blck_combatMode = "RED"; // Change this to "YELLOW" if the AI wander too far from missions for your tastes.
	blck_groupFormation = "WEDGE"; // Possibilities include "WEDGE","VEE","FILE","DIAMOND"

	blck_useSmokeWhenHealing = true;  // when true, injured AI will toss a smoke when they attempt to heal.
	blck_addAIMoney = false;

	blck_useNVG = true; // When true, AI will be spawned with NVG if is dark
						// No longer used.
	blck_removeNVG = false; // When true, NVG will be removed from AI when they are killed.
	blck_useLaunchers = true;  // When true, some AI will be spawned with RPGs; they do not however fire on vehicles for some reason so I recommend this be set to false for now
	//blck_launcherTypes = ["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_F","launch_I_Titan_F","launch_O_Titan_F","launch_B_Titan_short_F","launch_I_Titan_short_F","launch_O_Titan_short_F"];
	blck_launcherTypes = ["launch_RPG32_F"];  //["CUP_launch_RPG7V"];  //
	blck_launchersPerGroup = 1;  // Defines the number of AI per group spawned with a launcher
	blck_launcherCleanup = false;// When true, launchers and launcher ammo are removed from dead AI.
	blck_minimumPatrolRadius = 22;  // AI will patrol within a circle with radius of approximately min-max meters. note that because of the way waypoints are completed they may more more or less than this distance.
	blck_maximumPatrolRadius = 45;
	
	//This defines how long after an AI dies that it's body disappears.
	blck_bodyCleanUpTimer = 60*45; // time in seconds after which dead AI bodies are deleted
	// Each time an AI is killed, the location of the killer will be revealed to all AI within this range of the killed AI, set to -1 to disable
	// values are ordered as follows [blue, red, green, orange];
	blck_AliveAICleanUpTimer = 60*15;  // Time after mission completion at which any remaining live AI are deleted.

	// How precisely player locations will be revealed to AI after an AI kill
	// values are ordered as follows [blue, red, green, orange];	
	blck_AIAlertDistance = [250,450,700,900];  //  Radius within which AI will be notified of enemy activity. Depricated as a group-sed system is used now. The group is informed of the enemy location when a group member is hit or killed.
	// How precisely player locations will be revealed to AI after an AI kill
	// values are ordered as follows [blue, red, green, orange];
	blck_AIIntelligence = [0.3, 0.5, 0.7, 0.9];  
	
	blck_baseSkill = 1.0;  // The overal skill of the AI - range 0.1 to 1.0.
	
	/***************************************************************
	
	MISSION TYPE SPECIFIC AI SETTINGS
	
	**************************************************************/
	//This defines the skill, minimum/Maximum number of AI and how many AI groups are spawned for each mission type
	// Orange Missions
	blck_MinAI_Orange = 20;
	blck_MaxAI_Orange = 25;
	blck_AIGrps_Orange = 5;
	blck_SkillsOrange = [
		[0.20],  // aiming accuracy
		[0.65,0.75],  //  aiming speed 
		[0.25],  //  aiming shake 
		1.0,  //  spot distance 
		0.7,  //  spot time 
		1.00,  // courage 
		1.00,  //  reload speed 
		1.00,  //  commanding 
		1.00  //  general 
	];
	
	// Green Missions
	blck_MinAI_Green = 16;
	blck_MaxAI_Green = 21;
	blck_AIGrps_Green = 4;
	blck_SkillsGreen = [
		[0.18],  //  aiming accuracy 
		[0.55,0.7],  //  aiming speed 
		[0.18], //  aiming shake
		0.9,  //  spot distance 
		0.65,  // spot time 
		0.9,  //  courage 
		0.9,  //  reload speed 
		0.9,  //  comanding 
		0.75  //  general
	];
	
	// Red Missions
	blck_MinAI_Red = 12;
	blck_MaxAI_Red = 15;
	blck_AIGrps_Red = 3;
	blck_SkillsRed = [
		[0.14],  //  aiming accuracy 
		0.6,  //  aiming speed 
		[0.14],  //  aiming shake 
		0.7,  //  spot distance 
		0.6,  // spot time 
		0.80,  // courage 
		0.70,  // reoload speed 
		0.8,  // comanding 
		0.70  //  general 
	];
	
	// Blue Missions
	blck_MinAI_Blue = 8;	
	blck_MaxAI_Blue = 12;
	blck_AIGrps_Blue = 2;
	blck_SkillsBlue = [
		[0.08],  // aiming accuracy 
		0.5,  		// aiming speed 
		[0.08],  // aiming shake 
		0.6,  // spot distance 
		0.6,  // spot time 
		0.60,  // courage 
		0.60,  // reoload speed 
		0.7,  // comanding 
		0.60  // general
	];
		
	// Add some money to AI; 
	blck_maxMoneyOrange = 25;
	blck_maxMoneyGreen = 20;
	blck_maxMoneyRed = 15;
	blck_maxMoneyBlue = 10;	

	// Define the chance of attachments and gear
	blck_chancePrimary = 1.0;
	blck_chanceOpticsPrimary = 0.4;
	blck_chanceMuzzlePrimary = 0.3;
	blck_chancePointerPrimary = 0.25;
	blck_chanceUnderbarrelPrimary = 0.25;
	blck_chanceSecondary = 0.5;
	blck_chanceOpticsSecondary = 0.4;
	blck_chancePointerSecondary = 0.4;
	blck_chanceMuzzleSecondary = 0.4; 
	blck_chanceThowable = 0.5;
	blck_chanceHeadgear = 0.75;
	blck_chanceUniform = 1.0;
	blck_chanceBackpack = 0.2;  // Chance AI will be spawned with a backpack
	blck_chanceVest = 0.1;
	blck_chanceBinoc = 0.75;

	private _configToLoad = format["\q\addons\custom_server\Configs\blck_configs_%1.sqf",tolower(GMS_modType)];
	diag_log format["[GMS] _configToLoad = %1",_configToLoad];
	[] call compileFinal preprocessFileLineNumbers _configToLoad;

	if (blck_useConfigsGeneratedLoadouts) then 
	{
		["Dynamic Configs Enabled"] call blck_fnc_log;
		execVM "\q\addons\custom_server\Configs\blck_dynamicConfigs.sqf";
	};
	blck_configsLoaded = true;
	//diag_log format["<--- blck_configs loaded at %1 --->",diag_tickTime];
