/*

	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

private["_pathBlue","_missionListBlue","_pathRed","_missionListRed","_pathGreen","_missionListGreen","_pathOrange","_missionListOrange"];

private _pathScouts = "Scouts";
private _missionListScouts = ["Scouts"];
if(blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListScouts = %1",_missionListScouts];
};

private _pathHunters = "Hunters";
private _missionListHunters = ["Hunters"];
if (blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListHunters = %1",_missionListHunters];
};

private _pathBlue = "Blue";
private _missionListBlue = [];
if (blck_debugOn) then 
{
	_missionListBlue = ["default"/*"default","hostage1","captive1","sniperBase","survivalSupplies"/*,"default2","medicalCamp","redCamp","resupplyCamp"*/];
	diag_log format["_missionLists: _missionListBlue = %1",_missionListBlue];	
} else {
	_missionListBlue = ["default","hostage1","captive1","sniperBase","survivalSupplies"/*,"default2","medicalCamp","redCamp","resupplyCamp"*/];
};


_pathRed = "Red";
if (blck_debugOn) then 
{
	_missionListRed = ["fuelDepot"];
	diag_log format["_missionLists: _missionListRed = %1",_missionListRed];	
} else {
	_missionListRed = [/*"default","default2","medicalCamp","hostage1","captive1",*/"fuelDepot","junkyardWilly","TraderBoss","carThieves"];
};

_pathGreen = "Green";
if (blck_debugOn) then
{
	_missionListGreen = ["fortification"];  // charlston and factory run fine
	// fortification throws error for loot counts
	diag_log format["_missionLists: _missionListGreen = %1",_missionListGreen];	
} else {
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ","weaponsResearch",
	"munitionsResearch","colonelsBase","banditVillage","charlston","factory","fortification"];
};

_pathOrange = "Orange";
if (blck_debugOn) then 
{
	_missionListOrange = ["dashq"/*"dashq","tko_camp","bunkerMission",*temple"*/]; // bunker, dashq, tko_camp all run fine.
	diag_log format["_missionLists: _missionListOrange = %1",_missionListOrange];
} else {
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp","officeComplex",*/
	"CommandersComplex","generalsCamp","colonel2","stronghold","operationShutdown","operationTakeover","dashq","tko_camp","bunker"/*,"temple"*/];
};

_pathUMS = "UMS\dynamicMissions";
_missionListUMS = ["default"];
if (blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListUMS = %1",_missionListUMS];
};

#ifdef blck_milServer
if (blck_debugOn) then 
{
	_missionListBlue = ["survivalSupplies"/*"default","hostage1","captive1","sniperBase","survivalSupplies"/*,"default2","medicalCamp","redCamp","resupplyCamp"*/];
	diag_log format["_missionLists: _missionListBlue = %1",_missionListBlue];	
} else {
	_missionListBlue = ["default","sniperBase","survivalSupplies"/*,"hostage1","captive1","default2","medicalCamp","redCamp","resupplyCamp"*/];
};

if (blck_debugOn) then 
{
	_missionListGreen = ["FieldCamp"];
} else {
	_missionListGreen = ["FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage","charlston","factory","fortification"/*,"banditVillage"*/];
};
// Passed 

if (blck_debugOn) then 
{
	_missionListOrange = ["dashq"];
} else { 
	_missionListOrange = ["CommandersComplex","generalsCamp","colonel2","pinkPoison","stronghold","banditVillage","operationShutdown","operationTakeover","dashq","tko_camp","bunker"/*,"temple"*/];
};
// Passed CommandersComplex  generalsCamp  colonel2  pinkPoison  stronghold  
// Failed 
#endif

_pathHeliCrashes = "HeliCrashes";

if (toLower(worldName) isEqualTo "namalsk") then
{
	diag_log format["[blckeagls] GMS_missionLists.sqf:: -> running mission list variants for Namalsk"];
	_missionListGreen = ["FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage","charlston","factory","fortification"];
	_missionListOrange = ["CommandersComplex","generalsCamp","colonel2","pinkPoison","stronghold","banditVillage","operationShutdown","operationTakeover","dashq","tko_camp","bunker"];
};