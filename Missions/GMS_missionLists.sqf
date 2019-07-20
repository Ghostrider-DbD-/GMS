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

private["_pathScouts","_missionListScouts","_pathHunters","_missionListHunters","_pathBlue","_missionListBlue","_pathRed","_missionListRed","_pathGreen","_missionListGreen","_pathOrange","_missionListOrange"];

_pathScouts = "Scouts";
_missionListScouts = ["Scouts"];

_pathHunters = "Hunters";
_missionListHunters = ["Hunters"];

_pathBlue = "Blue";
//_missionListBlue = ["default"];
_missionListBlue = ["default","hostage1","captive1","sniperBase","survivalSupplies"/*,"default2","medicalCamp","redCamp","resupplyCamp"*/];
//diag_log format["_missionLists: _missionListBlue = %1",_missionListBlue];
// Passed 

_pathRed = "Red";
//_missionListRed = ["carThieves"];
_missionListRed = [/*"default","default2","medicalCamp","hostage1","captive1",*/"fuelDepot","junkyardWilly","TraderBoss","carThieves"];
// Passed 
private ["_missionListGreen"];
_pathGreen = "Green";
if (blck_debugOn || blck_debugLevel > 0) then
{
	_missionListGreen = ["redCamp"/*,"colonelsBase","banditVillage"*/];
} else {
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage"];
};
// Passed 

_pathOrange = "Orange";
//_missionListOrange = ["redCamp"/*,"operationTakeover"*/];
_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp",*/"CommandersComplex","generalsCamp","colonel2","stronghold","operationShutdown","operationTakeover"/*,"temple"*/];
// Passed 

#ifdef blck_milServer
_missionListGreen = ["colonelsBase"];
//_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage"];
// Passed 

_missionListOrange = ["operationShutdown"/*,"pinkPoison","stronghold","operationShutdown","operationTakeover","generalsCamp","colonel2"*/];
//_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp",*/"CommandersComplex","generalsCamp","colonel2","pinkPoison","stronghold","operationShutdown","operationTakeover"/*,"temple"*/];
// Passed 
#endif

_pathHeliCrashes = "HeliCrashes";

if (toLower(worldName) isEqualTo "namalsk") then
{
	diag_log format["[blckeagls] GMS_missionLists.sqf:: -> running mission list variants for Namalsk"];
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ"/*,"weaponsResearch","munitionsResearch"*/];
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp",*/"CommandersComplex","generalsCamp"/*,"colonel2","temple"*/];
};