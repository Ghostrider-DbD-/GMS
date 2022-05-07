private _uniformsHC = ["U_C_Scientist","U_OrestesBody","U_NikosAgedBody","U_NikosBody"];
if ((toLower blck_modType) isEqualTo "epoch") then
{
	_uniformsHC = _uniformsHC + blck_femaleUniformsEpoch;	
};
private _headGearHC = ["H_StrawHat_dark","H_StrawHat","H_Hat_brown","H_Hat_grey"];

private _crashSiteMissions = [
	["Plane_Fighter_03_wreck_F","Fighter Crash", "A %1 lord crashed his jet fighter","Survivors secured a jet crash site",5,7,"Red","ammo",3],
	["Land_UWreck_MV22_F","Osprey Crash", "A %1 lord crashed his MV22","Survivors secured an MV22 crash site",5,7,"Red","ammo",3],
	["Land_Wreck_Plane_Transport_01_F","C-192 Crash", "A %1 pilot crashed a C-192","Survivors secured a C-192 crash site",5,7,"Red","supplies",3],
	["Land_Wreck_Heli_Attack_02_F","MI-48 Crash", "A %1 pilot crashed an MI-48","Survivors secured an Mi-48 crash site",5,7,"Red","ammo",3],
	["Land_Wreck_Heli_Attack_01_F","Blackfoot Crash","A %1 pilot crashed a Blackfoot","Survivors secured a Blackfoot crash site",5,7,"Red","ammo",3],
	["Land_Scrap_MRAP_01_F","MRAP Crash","An MRAP was crashed in a %1 convoy","Survivors have secured the crashe site",4,5,"Blue","ammo",2],
	["Land_Wreck_Offroad2_F","Offroad Crash","A pickup in a %1 convoy has crashed","Survivors have secured the crash site",4,5,"Red","ammo",3],
	["Land_Wreck_Offroad_F","Offroad Crash","A pickup in a %1 convoy has crashed","Survivors have secured the crash site",4,5,"Blue","ammo",2],
	["Land_Wreck_Hunter_F","Hunter Crashed","A Hunter in a %1 convoy has crashed","Survivors have secured the crash site",5,7,"Red","ammo",3],
	["Land_Wreck_HMMWV_F","HMMV Crash","A HMMVV in a %1 convoy has crashed","Survivors have secured the crash site",5,7,"Red","ammo",3],
	["Land_Wreck_Ural_F","Ural Crash","A Ural in a %1 convoy has crashed","Survivors have secured the crash site",4,5,"Blue","supplies",2]
];

fn_selectCrateType = {
	private["_item"];
	_item = "";
	switch (toLower(blck_modType)) do
	{
		case "epoch": {_item = "GroundWeaponHolder"};
		case "exile": {_item = "Box_NATO_Wps_F"};
		default {_item = "Box_NATO_Wps_F"};
		//default {_item = "GroundWeaponHolder"};
		//default {_item = "weaponHolderSimulated"};
	};
	#ifdef blck_debugMod
	if (blck_debugLevel > 0) then {
		diag_log format["---- <<_fn_selectCrateType>>  returning _item = %1",_item];
	};
	#endif
	_item
};

fn_spawnLootContainers = {
	params["_pos","_type","_level"];
	_type = call fn_selectCrateType;
	
	private["_obj","_crate","_lootPos"];
	_obj = [];
	for "_j" from 1 to (1 + floor(random(_level))) do
	{
		_lootPos = [ (_pos select 0) + (((random 5) + 5) * (selectRandom[1,-1])),(_pos select 1) + (((random 5) + 5) * (selectRandom[1,-1])), 0.05 ];
		_crate0 = createVehicle [_type,_lootPos, [], 5, "CAN_COLLIDE"];
		_crate0 setVariable["LAST_CHECK", 100000];
		_obj pushback _crate0;
	};
	_obj
};

fn_fillContainer = {
	params["_cntr","_diff","_lType","_level"];
	if (toLower(blck_modType) isEqualTo "epoch") then
	{
		switch (_diff) do
		{
			case "Blue": {
				if (_lType isEqualto "ammo") then
				{
					//blck_lootCountsBlue = [4,12,3,6,6,1];   // Blue
					//_lootCountsBlueAmmo = [2,4,2,2,2,0];
					_lootCountsBlueAmmo = [floor(random(4)),floor(random(0)),floor(random(3)),floor(random(3)),0,1];
					//  params["_crate","_boxLoot","_itemCnts"];
					[_cntr,blck_BoxLoot_Blue,_lootCountsBlueAmmo] call blck_fnc_fillBoxes;
				};
				if (_lType isEqualTo "supplies") then
				{
					//_lootCountsBlueSupplies = [1,4,5,5,1];
					_lootCountsBlueSupplies = [floor(random(2)),floor(random(0)),floor(random(6)),floor(random(6)),floor(random(6)),0];
					[_cntr,blck_BoxLoot_Blue,_lootCountsBlueSupplies] call blck_fnc_fillBoxes;
				};
				
			};
			case "Red": {
				if (_lType isEqualto "ammo") then
				{
					//_lootCountsRedAmmo = [3,6,3,3,3,0];
					_lootCountsRedAmmo = [floor(random(5)),floor(random(0)),floor(random(4)),floor(random(4)),0,1];
					//  params["_crate","_boxLoot","_itemCnts"];
					[_cntr,blck_BoxLoot_Red,_lootCountsRedAmmo] call blck_fnc_fillBoxes;
				};
				if (_lType isEqualTo "supplies") then
				{
					//_lootCountsRedSupplies = [2,7,7,7,2];
					_lootCountsRedSupplies = [floor(random(2)),floor(random(5)),floor(random(7)),floor(random(7)),floor(random(7)),floor(random(7))];
					[_cntr,blck_BoxLoot_Red,_lootCountsRedSupplies] call blck_fnc_fillBoxes;
				};
			};
		};
	};	
};


blck_activeCrashSites = 0;
_fn_spawnWreckMission = {
	params["_index","_posOfCrash"];
	blck_activeCrashSites  = blck_activeCrashSites + 1;
	blck_ActiveMissionCoords pushBack _posOfCrash;	

	private _mission = selectRandom _crashSiteMissions;
	_mission params ["_wreckName","_markerLabel","_startMsg","_endMsg","_minAI","_maxAI","_difficulty","_lootType","_level"];
	private _crashName = format["CrashSite%1",_index];
	
	if ((blck_debugLevel > 0)) then {diag_log format["<<--->> Crash site %1 spawned at %2",_crashName,_posOfCrash];};
	
	private _markers = [_crashName,_posOfCrash,_markerLabel,"ColorGreen","mil_triangle",[],""] call blck_fnc_createMissionMarkers;
	if (blck_modType isEqualTo "Epoch") then
	{
		_startMsg = format[_startMsg,"Bandit"];
	};
	if (blck_modType isEqualTo "Exile") then
	{
		_startMsg = format[_startMsg,"Mafia"];
	};

	[["start",_startMsg,format["%1",_markerLabel]]] call blck_fnc_messageplayers;
	private _crashedVehicle = _wreckName createVehicle [0,0,0];
	_crashedVehicle setpos [(_posOfCrash) select 0,(_posOfCrash) select 1,0];
	private _missionLandscape = ["Land_WoodPile_F","Land_TentA_F","Land_TentA_F","Land_BagFence_Short_F","Land_Sacks_heap_F","Land_Sacks_heap_F","Land_Grave_rocks_F","Land_Grave_rocks_F"];
	private _obj = [_posOfCrash,_missionLandscape] call blck_fnc_spawnRandomLandscape;
	_obj pushback _crashedVehicle;
	private _containers = [_posOfCrash,call fn_selectCrateType /*_containerType*/,_level] call fn_spawnLootContainers;
	{
		[_x,_difficulty,_lootType,_level] call fn_fillContainer;
		private _cutter0 = "Land_ClutterCutter_medium_F" createVehicle (getpos _x);	
		_cutter0 setVariable ["LAST_CHECK", 100000];
		_obj pushback _cutter0;
		_obj pushback _x;
	}forEach _containers;
	#define waypointDimensions [30,30]
	private _numberAI = [_minAI,_maxAI] call GMS_fnc_getIntegerFromRange;

	private _group = [_posOfCrash,_numberAI,_difficulty,waypointDimensions,_uniformsHC,_headGearHC] call blck_fnc_spawnGroup;
	blck_monitoredMissionAIGroups pushBack _group;
	
	if (blck_showCountAliveAI) then
	{
		[_markers select 1,_markerLabel,units _group] call blck_fnc_updateMarkerAliveCount;
		blck_missionLabelMarkers pushBack [_markers select 1,_markerLabel,units _group];
	};		
	if !(isNull _group) then
	{
		waitUntil{uiSleep 3; {(isPlayer _x) && (_x distance2d _posOfCrash) < 25 /*&& (vehicle _x == _x)*/} count allPlayers > 0};	
	};
	[_posOfCrash] spawn blck_fnc_missionCompleteMarker;
	diag_log format["crashes2 (145) _crashName = %1",_crashName];
	[_markers select 1] call blck_fnc_deleteMarker;
	[["end",_endMsg,_markerLabel]] call blck_fnc_messageplayers;
	if ((blck_debugLevel > 0)) then {diag_log format["<<--->> crash site %1 at %1 cleared",_CrashName,_posOfCrash];};
	blck_oldMissionObjects pushback [_posOfCrash,_obj, blck_cleanupCompositionTimer];	
	blck_liveMissionAI pushback [_posOfCrash,units _group, (diag_tickTime + blck_AliveAICleanUpTimer)];
	blck_recentMissionCoords pushback[_posOfCrash,diag_tickTime];
	blck_ActiveMissionCoords = blck_ActiveMissionCoords - _posOfCrash;
	blck_activeCrashSites = blck_activeCrashSites - 1;
};

diag_log "[blckeagls] <<--->> starting crash site monitor";

private _index = 0;
private _lootNum = 5;

while {true} do
{
	if (blck_activeCrashSites < blck_maxCrashSites)  then // Spawn another site
	{
		uiSleep ((blck_TMin_Crashes + random(blck_TMax_Crashes)) - blck_TMin_Crashes);
		if (diag_FPS > blck_minFPS) then 
		{
			_index = _index + 1;
			private _posOfCrash = [] call blck_fnc_findSafePosn;
			if !(_posOfCrash isEqualTo []) then 
			{
				[_index,_posOfCrash] spawn _fn_spawnWreckMission;
			};
		};
	};
	uiSleep 20;
};
