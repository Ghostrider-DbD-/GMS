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
private _missionListScouts = ["Scouts"];  // OK Build 224
if(blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListScouts = %1",_missionListScouts];
};

private _pathHunters = "Hunters";
private _missionListHunters = ["Hunters"];  // OK Build 224
if (blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListHunters = %1",_missionListHunters];
};

private _pathBlue = "Blue";
private _missionListBlue = [];
if (blck_debugOn) then 
{
	//_missionListBlue = ["sniperBase"];
	_missionListBlue = [
		//"hostage1",  OK
		//"captive1",
		//** */"sniperBase",
		//** */"survivalSupplies",
		//"derbunker", // OK, an interesting mission, better as a red / green though
		//"forgotten_HQ",  //  ok BUT TOO TOUGH FOR BLUE OR RED
		//"garrison",  //  OK but do not use.
		//"IDAP",  //  OK but too difficult for a blue mission
		//** */"Service_point",  //  OK
		//"Toxin",  //  OK but too difficult for a blue mission
		//"default"  // OK Build 224
		"default"
	];	
	diag_log format["_missionLists: _missionListBlue = %1",_missionListBlue];	
	// Passed: "Toxin", 
} else {
	_missionListBlue = [
		//"hostage1",  // OK
		//"captive1",  // OK
		"sniperBase",  // OK Build 224
		"survivalSupplies",  // OK Build 224
		//"derbunker", // OK, an interesting mission, better as a red / green though
		//"forgotten_HQ",  //  ok BUT TOO TOUGH FOR BLUE OR RED
		//"garrison",  //  OK but do not use.
		//"IDAP",  //  OK but too difficult for a blue mission
		"Service_point",  // OK build 224
		//"Toxin",  //  OK but too difficult for a blue mission
		"default"  // OK Build 224
	];
};


_pathRed = "Red";
if (blck_debugOn) then 
{
	//_missionListRed = ["fuelDepot"];
	_missionListRed = [
	"fuelDepot"
	];	
	diag_log format["_missionLists: _missionListRed = %1",_missionListRed];	
} else {
	_missionListRed = [
	//"default",  //  OK Build 224
	//"medicalCamp",
	//"hostage1",
	//"captive1",
	"fuelDepot",  //  OK Build 224
	"junkyardWilly",  //  OK bulid 224
	"TraderBoss",  // OK build 224
	"carThieves",   // OK Build 224
	"Ammunition_depot",  // OK Bio;d 224
	//"Camp_Moreell",
	//"charlston",
	//"dashq",
	//"derbunker",  // OK, better suited for green or orange mission
	//"factory",  //  Good Green / Orange; center position is off though.
	//"forgotten_HQ",
	//"garrison",
	"IDAP",  // OK, Build 224
	//"lager",
	//"Operations_Command",
	"Outpost",  // OK, Build 224
	"Service_Point", // OK, Build 224
	//"tko_camp",  
	"Toxin" // ok
	];
};

_pathGreen = "Green";
if (blck_debugOn) then
{
	//_missionListGreen = ["fortification"];  // charlston and factory run fine
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp","banditVillage",*/
		"FieldHQ" 
	];	
	diag_log format["_missionLists: _missionListGreen = %1",_missionListGreen];	
	// Passed: "banditVillage",
} else {
	_missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp","banditVillage",*/
		"FieldCamp",  //  OK Build 224
		"FieldHQ",  // OK Build 224
		"weaponsResearch",  // OK build 224
		"munitionsResearch",  // OK Build 224
		"colonelsBase",  //  OK Build 224
		"factory",  //  OK Build 224
		"fortification",  // OK Build 224
		//"banditVillage",  //  OK but do not use.
		"Camp_Moreell",  // OK Build 224
		//"charlston",  //  Spawns OK but crate glitched under a building
		//"derbunker",  //  OK
		//"forgotten_HQ",  // OK, but can't complete
		"lager"  //  OK - perfect Green / Orange 
		//"Operations_Command",  //  OK  bEST SUITED FOR GREEN/ORANGE // Nees R3F or crate spawned by parachute at mission start
		//"Outpost",  // OK
		//"tko_camp"  // OK
	];
};

_pathOrange = "Orange";
if (blck_debugOn) then 
{
	//_missionListOrange = ["Outpost"]; // 
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp","officeComplex",*/
	"colonel2"  
	];	
	diag_log format["_missionLists: _missionListOrange = %1",_missionListOrange];
	// Passed: "banditVillage",
} else {
	_missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp","officeComplex",*/
	"CommandersComplex",  //  OK Build 224
	"generalsCamp",  //  OK Build 224
	"colonel2",  // OK build 224
	"stronghold",  //  OK Build 224
	"operationShutdown",  //  OK Build 224
	"operationTakeover",  //  OK Build 224
	"dashq",  //  OK Build 224
	"derbunker", // OK Build 224
	//"Ammunition_depot",  // OK Build 224; vics may need predefined spawns more suited for green mission
	//"Camp_Moreell",  // OK except that the crate spawns at ground level under a building; try dropping from chute for now
	//"Operations_Command",  //OK  bEST SUITED FOR GREEN/ORANGE // Nees R3F or crate spawned by parachute at mission start
	//"Outpost",  // dOES NOT COMPLETE, ODD LOOT CHEST PLACEMENT
	"tko_camp"  // // OK Build 224
	/*,"temple"*/
	];
};

_pathUMS = "UMS\dynamicMissions";
_missionListUMS = ["default"];
if (blck_debugOn) then 
{
	diag_log format["_missionLists: _missionListUMS = %1",_missionListUMS];
};

_pathHeliCrashes = "HeliCrashes";

if (toLower(worldName) isEqualTo "namalsk") then
{
	diag_log format["[blckeagls] GMS_missionLists.sqf:: -> running mission list variants for Namalsk"];
	_missionListGreen = ["FieldCamp","FieldHQ","weaponsResearch","munitionsResearch","colonelsBase","banditVillage","charlston","factory","fortification"];
	_missionListOrange = ["CommandersComplex","generalsCamp","colonel2","pinkPoison","stronghold","banditVillage","operationShutdown","operationTakeover","dashq","tko_camp","bunker"];
};