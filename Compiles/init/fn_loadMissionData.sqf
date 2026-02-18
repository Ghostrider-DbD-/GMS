
/*
    GMS_fnc_initializeMissions 
    Params: _missionDirectory - the directory in which lists of missions and the missions themselves can be found
    Returns: None
*/

params["_missionDirectory"];
[format["_loadMissionData: _missionDirectory %1", _missionDirectory]] call GMS_fnc_log;

call compileFinal preprocessFileLineNumbers format["\x\addons\GMS\%1\GMS_missionLists.sqf", _missionDirectory];

/*
	#ifdef isEpoch 
	#include "\x\addons\GMS\Missions_Epoch\GMS_missionLists.sqf";
	[format["_initialize: loaded missions list for Epoch"]] call GMS_fnc_log;
	#endif 

	#ifdef isExile 
	#include "\x\addons\GMS\Missions_Exile\GMS_missionLists.sqf";
	[format["_initialize: loaded missions list for Epoch"]] call GMS_fnc_log;
	#endif 

	#ifdef isDefault 
	[format["_initialize: Loading Default Missions"]] call GMS_fnc_log;
	#include "\x\addons\GMS\Missions_Default\GMS_missionLists.sqf"
	[format["_initialize: loaded missions list for Default"]] call GMS_fnc_log;
	#endif 

	// set up the lists of available missions for each mission category
	//#include "\x\addons\GMS\Missions\GMS_missionLists.sqf";
	//#include "\x\addons\GMS\Missions_GRG\GMS_missionLists.sqf";
	//#include "\x\addons\GMS\Missions_Epoch\GMS_missionLists.sqf";
*/

	if (GMS_debugLevel > 0) then {["DEBUG ON: Mission Lists Loaded Successfully"] call GMS_fnc_log};
	[format["_loadMissionData: _missionDirectory %1 | _pathBlue %2", _missionDirectory, GMS_pathBlue]] call GMS_fnc_log;
	// TODO: merge in underwater / sea missions at some point 


	if (GMS_enableOrangeMissions > 0) then
	{
		[GMS_missionListOrange,_missionDirectory,GMS_pathOrange,"OrangeMarker","orange",GMS_TMin_Orange,GMS_TMax_Orange,GMS_enableOrangeMissions] call GMS_fnc_addMissionToQue;
	};
    GMS_missionListOrange = nil;
    GMS_pathOrange = nil; 

	if (GMS_enableGreenMissions > 0) then
	{
		[GMS_missionListGreen,_missionDirectory,GMS_pathGreen,"GreenMarker","green",GMS_TMin_Green,GMS_TMax_Green,GMS_enableGreenMissions] call GMS_fnc_addMissionToQue;
	};
	if (GMS_enableRedMissions > 0) then
	{
		[GMS_missionListRed,_missionDirectory,GMS_pathRed,"RedMarker","red",GMS_TMin_Red,GMS_TMax_Red,GMS_enableRedMissions] call GMS_fnc_addMissionToQue;
	};

	if (GMS_enableBlueMissions > 0) then
	{
		[GMS_missionListBlue,_missionDirectory,GMS_pathBlue,"BlueMarker","blue",GMS_TMin_Blue,GMS_TMax_Blue,GMS_enableBlueMissions] call GMS_fnc_addMissionToQue;
	};

	/*
	if (GMS_numberUnderwaterDynamicMissions > 0) then 
	{
		if !(GMS_maxSeaSearchDistance == 0) then {
			[_missionListUMS,_missionDirectory,_pathUMS,"UMSMarker","Red",GMS_TMin_UMS,GMS_TMax_UMS,GMS_numberUnderwaterDynamicMissions] call GMS_fnc_addMissionToQue;
		};
	};
	*/
	if (GMS_enableScoutsMissions > 0) then
	{
		[_missionListScouts,_missionDirectory,GMS_pathScouts,"ScoutsMarker","red",GMS_TMin_Scouts,GMS_TMax_Scouts,GMS_enableScoutsMissions] call GMS_fnc_addMissionToQue;
	};

	if (GMS_enableHunterMissions > 0) then
	{
		[_missionListHunters,_missionDirectory,GMS_pathHunters,"HunterMarker","green",GMS_TMin_Hunter,GMS_TMax_Hunter,GMS_enableHunterMissions] call GMS_fnc_addMissionToQue;
	};

	/*
	if (GMS_enableStaticMissions > 0 && !(GMS_missionListStatics isEqualTo [])) then // GMS_enableStaticMissions should be an integer between 1 and N
	{
		[_missionListStatics, _missionDirectory, _pathStatics,"StaticsMarker","red", GMS_TMin_Statics, GMS_TMax_Statics, GMS_enableStaticMissions] call GMS_fnc_addMissionToQue;
	};
	*/
    