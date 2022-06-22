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


#define useAPEX 

////////////////////////////
//  Do not touch anything below this line
///////////////////////////

// defines for mission initialization and monitoring 
#define missionNotspawned 0 // Mission marker spawned but nothing else is 
#define missionInitialized 1  // All mission material is spawned and mission is active 
#define missionLandscapeSpawned 1 
#define missionSmokeSpawned 1 
#define missionLootCratesSpawned 1 
#define missionEmplacedSpawned 1 
#define missionVehiclePatrolsSpawned 1 
#define missionInfantrySpawned 1 
#define missionAircraftPatrolsSpawned 1 
#define missionActive 0 
#define missionComplete 1 


//#define blck_debugMode
#define GRGserver
//#define blck_addCarParts
#define blck_triggerLoopCompleteTime 40*60
#define max_distance_crate_moved_uncompleted_mission 120
#define onFoot 1
#define inVehicle 2

// Defines for difficulty
#define blck_blue 1
#define blck_red 2 
#define blck_green 3 
#define blck_orange 4 

// Defines for mission characteristics 
#define playerNear 0 
#define allUnitsKilled 1 
#define allKilledOrPlayerNear 2 
#define assetSecured 3 
#define atMissionSpawnGround 0 
#define atMissionSpawnAir 1 
#define atMissionEndGround 2 
#define atMissionEndAir 3 

//  defines for static group spawners
#define staticPatrolTriggerRange 2000
#define groupParameters 0
#define patrolGroup 1
#define groupSpawned 2
#define timesSpawned 3
#define respawnAt 4
#define blck_playerDetectionRangeAir 800
#define blck_playerDetectionRangeGroundVehicle 400
#define blck_vehiclePlayerDetectionOdds 0.6
#define blck_playerDetectionRangeSubs 100
#define blck_playerDetectionRangeSurfaceVehicle 150
#define blck_simulationEnabledDistance 2500
#define blck_simulationManagementOff 0
#define blck_useBlckeaglsSimulationManager 1
#define blck_useDynamicSimulationManagement 2
#define blck_simulationManagementOff 0
#define blck_useBlckeaglsSimulationManagement 1
#define blck_useDynamicSimulationManagement 2

#define blck_maxPatrolRadiusHelisBlue 300
#define blck_maxPatrolRadiusHelisRed 400
#define blck_maxPatrolRadiusHelisGreen 500
#define blck_maxPatrolRadiusHelisOrange 650

#define blck_turnBackRadiusInfantry 800
#define blck_turnBackRadiusVehicles 1000
#define blck_turnBackRadiusHelis 1000
#define blck_turnBackRadiusJets 1500
