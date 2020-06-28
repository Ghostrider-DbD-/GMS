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

_pathBlue = "Blue";
if (blck_debugOn) then 
{
	_missionListBlue = [/*"default",*/"redCamp"/*,"medicalCamp"/*,sniperBase"];
} else {
	_missionListBlue = ["default","hostage1","captive1","sniperBase","survivalSupplies"/*,"default2","medicalCamp","redCamp","resupplyCamp"*/];
};
diag_log format["_missionLists: _missionListBlue = %1",_missionListBlue];
// Passed 

_pathRed = "Red";
if (blck_debugOn) then 
{
	_missionListRed = [/*"default",*/"redCamp"/*,"medicalCamp"/*,"o/*,"fuelDepot"*/];
} else {
	_missionListRed = [/*"default","default2","medicalCamp","hostage1","captive1",*/"fuelDepot","junkyardWilly","TraderBoss","carThieves"];
};
diag_log format["_missionLists: _missionListRed = %1",_missionListRed];
// Passed 

_pathGreen = "Green";
if (blck_debugOn) then
{
	_missionListGreen = [/*"default",*/"redCamp"/*,"medicalCamp"/*,""colonelsBase","","banditVillage"*/];
} else {
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage"];
};
diag_log format["_missionLists: _missionListGreen = %1",_missionListGreen];
// Passed 

_pathOrange = "Orange";
if (blck_debugOn) then 
{
	_missionListOrange = [/*"default",*/"redCamp"/*,"medicalCamp","officeComplex","operationTakeover"*/];
} else {
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp","officeComplex",*/"CommandersComplex","generalsCamp","colonel2","stronghold","operationShutdown","operationTakeover","dashq","tko_camp","bunkerMission"/*temple"*/];
};
diag_log format["_missionLists: _missionListOrange = %1",_missionListOrange];
// Passed 

#ifdef blck_milServer
if (blck_debugOn) then 
{
	_missionListGreen = ["FieldCamp"];
} else {
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase"/*,"banditVillage"*/];
};
// Passed 

if (blck_debugOn) then 
{
	_missionListOrange = ["bunkerMission"/*,"pinkPoison","stronghold","operationShutdown","operationTakeover","generalsCamp","colonel2"*/];
} else { 
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp",*/"CommandersComplex","generalsCamp","colonel2","pinkPoison","stronghold","operationShutdown","operationTakeover","dashq","tko_camp"/*,"temple"*/];
};
// Passed CommandersComplex  generalsCamp  colonel2  pinkPoison  stronghold  
// Failed 
#endif

_pathHeliCrashes = "HeliCrashes";

if (toLower(worldName) isEqualTo "namalsk") then
{
	diag_log format["[blckeagls] GMS_missionLists.sqf:: -> running mission list variants for Namalsk"];
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp",*/"FieldCamp","FieldHQ"/*,"weaponsResearch","munitionsResearch"*/];
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp",*/"CommandersComplex","generalsCamp"/*,"colonel2","temple"*/];
};