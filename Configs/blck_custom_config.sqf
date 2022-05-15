	
/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016
	Last Modified 3-14-17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

["[blckeagls]  Loading Custom Configurations 11/14//20"] call blck_fnc_log;

switch (toLower (worldName)) do
{
	case "altis":
	{
		/*
		blck_cleanupCompositionTimer = 30;
		blck_AliveAICleanUpTimer = 30;
		blck_vehicleDeleteTimer = 30;
		blck_maxSpawnedMissions = 15;

		blck_TMin_Blue = 7;
		blck_TMin_Red = 10;
		blck_TMin_Green = 13;	
		blck_TMin_Orange = 16;	
		blck_TMin_Hunter = 20;
		blck_TMin_Scouts = 20;
		blck_TMin_Crashes = 5;
		blck_TMin_UMS = 20;
		//Maximum Spawn time between missions in seconds
		blck_TMax_Blue = 12;
		blck_TMax_Red = 15;
		blck_TMax_Green = 17;
		blck_TMax_Orange = 21;
		blck_TMax_Hunter = 22;
		blck_TMax_Scouts = 22;
		blck_TMax_Crashes = 15;
		blck_TMax_UMS = 25;	
		*/	
	};
	case"tanoa": 
	{
		blck_maxCrashSites = 2;
	};
	case"namalsk": 
	{
		private ["_arr","_sunrise","_sunset","_time"];
		_arr = date call BIS_fnc_sunriseSunsetTime;
		_sunrise = _arr select 0;
		_sunset = _arr select 1;
		_daylight = _sunset - _sunrise;
		_nightTime = abs(24 - _daylight);
		_time = dayTime;
		_serverUpTime = 8;
		blck_enableOrangeMissions = 1;  
		blck_enableGreenMissions = 1;
		blck_enableRedMissions = 1;
		blck_enableBlueMissions = 1;
		blck_enableHunterMissions = 1;
		blck_enableScoutsMissions = 1;
		blck_maxCrashSites = -1;  // recommended settings: 3 for Altis, 2 for Tanoa, 1 for smaller maps. Set to -1 to disable
		
		blck_timeAcceleration = true; // When true, time acceleration will be periodically updated based on amount of daylight at that time according to the values below.
		blck_timeAccelerationDay = 1.5;  // Daytime time accelearation
		blck_timeAccelerationDusk = 6; // Dawn/dusk time accelearation
		blck_timeAccelerationNight = (12);  // Nighttim time acceleration	

		blck_MinDistanceFromMission = 500;
		blck_minDistanceToBases = 300;
		blck_minDistanceToPlayer = 300;
		blck_minDistanceFromTowns = 100;		
	};
	case "esseker": 
	{
		blck_numberUnderwaterDynamicMissions = -1;		
	};
	case "panthera3":
	{
		blck_maxCrashSites = 2;
	
	};
	case "malden":
	{

		blck_enableOrangeMissions = 1;  
		blck_enableGreenMissions = 1;
		blck_enableRedMissions = 1;
		blck_enableBlueMissions = 1;
		blck_numberUnderwaterDynamicMissions = 3;	
		blck_enableHunterMissions = 1;
		blck_enableScoutsMissions = 1;
		blck_maxCrashSites = 3; 		
	};	
	case "lythium": 
	{
		blck_enableOrangeMissions = 1;  
		blck_enableGreenMissions = 1;
		blck_enableRedMissions = 1;
		blck_enableBlueMissions = 1;
		blck_enableHunterMissions = 1;
		blck_enableScoutsMissions = 1;
		blck_maxCrashSites = 3;	
		blck_numberUnderwaterDynamicMissions = -1;	
	};
	case "enoch":
	{
		blck_timeAcceleration = true; // When true, time acceleration will be periodically updated based on amount of daylight at that time according to the values below.
		blck_timeAccelerationDay = 5.7;  // Daytime time accelearation
		blck_timeAccelerationDusk = 7; // Dawn/dusk time accelearation
		blck_timeAccelerationNight = 8;  // Nighttim time acceleration	
		blck_enableOrangeMissions = 1;  
		blck_enableGreenMissions = 1;
		blck_enableRedMissions = 1;
		blck_enableBlueMissions = 1;
		blck_enableHunterMissions = 1;
		blck_enableScoutsMissions = 1;
		blck_maxCrashSites = 3;	
		blck_numberUnderwaterDynamicMissions = 1;	
	};
};

["[blckeagls]  End of map-specific block of Custom Configurations 11/14/20"] call blck_fnc_log;

blck_customConfigsLoaded = 1;

uiSleep 5;

if (blck_debugOn) then {
	
	//blck_MinDistanceFromMission = 1000;
    //blck_minDistanceToBases = 100;
    //blck_minDistanceToPlayer = 1000;
    //blck_minDistanceFromTowns = 100;
	//blck_preciseMapMarkers = true;
	//blck_MissionTimeout = 300;
	blck_cleanupCompositionTimer = 30;
	blck_AliveAICleanUpTimer = 30;
	blck_bodyCleanUpTimer = 30;
	blck_vehicleDeleteTimer = 30;
	blck_maxSpawnedMissions = 15;
	blck_mainThreadUpdateInterval = 10;
	blck_launchersPerGroup = 1;

	blck_enableOrangeMissions = 1;  
	blck_enableGreenMissions = 1;
	blck_enableRedMissions = 1;
	blck_enableBlueMissions = 1;
	blck_numberUnderwaterDynamicMissions = 0;	
	blck_enableHunterMissions = 1;
	blck_enableScoutsMissions = 1;
	blck_maxCrashSites = 1; 

	blck_noPatrolHelisBlue = 1;
	blck_noPatrolHelisRed = 1;
	blck_noPatrolHelisGreen = 1;
	blck_noPatrolHelisOrange = 1;

	blck_SpawnVeh_Orange = 2; // Number of static weapons at Orange Missions
	blck_SpawnVeh_Green = 2; // Number of static weapons at Green Missions
	blck_SpawnVeh_Blue = 2;  // Number of static weapons at Blue Missions
	blck_SpawnVeh_Red = 2;  // Number of static weapons at Red Missions

	blck_SpawnEmplaced_Orange = 2; // Number of static weapons at Orange Missions
	blck_SpawnEmplaced_Green = 2; // Number of static weapons at Green Missions
	blck_SpawnEmplaced_Blue = 2;  // Number of static weapons at Blue Missions
	blck_SpawnEmplaced_Red = 2;  // Number of static weapons at Red Missions	

	blck_MinAI_Orange = 20;
	blck_MaxAI_Orange = 25;
	blck_AIGrps_Orange = 0;

	blck_MinAI_Green = 16;
	blck_MaxAI_Green = 21;
	blck_AIGrps_Green = 3;

	blck_MinAI_Red = 12;
	blck_MaxAI_Red = 15;
	blck_AIGrps_Red = 3;

	blck_MinAI_Blue = 8;	
	blck_MaxAI_Blue = 12;
	blck_AIGrps_Blue = 3;

	blck_TMin_Blue = 7;
	blck_TMin_Red = 10;
	blck_TMin_Green = 13;	
	blck_TMin_Orange = 16;	
	blck_TMin_Hunter = 20;
	blck_TMin_Scouts = 5;
	blck_TMin_Crashes = 5;
	blck_TMin_UMS = 20;
	//Maximum Spawn time between missions in seconds
	blck_TMax_Blue = 12;
	blck_TMax_Red = 15;
	blck_TMax_Green = 17;
	blck_TMax_Orange = 21;
	blck_TMax_Hunter = 22;
	blck_TMax_Scouts = 6;
	blck_TMax_Crashes = 15;
	blck_TMax_UMS = 25;

	["[blckeagls] Custom Configs <DEBUG ON> Custom mission timers loaded"] call blck_fnc_log;
};