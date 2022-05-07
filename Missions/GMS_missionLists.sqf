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

private _pathHunters = "Hunters";
private _missionListHunters = ["Hunters"];  // OK Build 224

private _pathBlue = "Blue";
private _missionListBlue = [
		//"hostage1",  // OK
		//"captive1",  // OK


		"sniperBase",  // Spawns OK Debug = 4 Build 246
		"survivalSupplies",  // Spawns OK Debug = 4 Build 246
		//"derbunker", // OK, an interesting mission, better as a red / green though
		//"forgotten_HQ",  //  ok BUT TOO TOUGH FOR BLUE OR RED
		//"garrison",  //  OK but do not use.
		//"IDAP",  //  OK but too difficult for a blue mission

		// omitted for Cherno at Azock's request		
		//"Service_point",  // OK build 224
		//"Toxin",  //  OK but too difficult for a blue mission
		"default"  //  Spawns OK Debug = 4 Build 246
	];

private _pathRed = "Red";
private _missionListRed = [
	//"default",  //  OK Build 224
	//"medicalCamp",
	//"hostage1",
	//"captive1",
	"fuelDepot",  // Spawns OK Debug = 4 Build 246
	"junkyardWilly",  // Spawns OK Debug = 4 Build 246
	//"TraderBoss",  // OK build 224
	"carThieves",   // Spawns OK Debug = 4 Build 246
	"Ammunition_depot",  //  Spawns OK Debug = 4 Build 246
	//"Camp_Moreell",
	//"charlston",
	//"dashq",
	//"derbunker",  // OK, better suited for green or orange mission
	//"factory",  //  Good Green / Orange; center position is off though.
	//"forgotten_HQ",
	//"garrison",
	"IDAP",  // Spawns OK Debug = 4 Build 246
	//"lager",
	//"Operations_Command",
	"Outpost",  //  Spawns OK Debug = 4 Build 246
	"Service_Point", //Spawns OK Debug = 4 Build 246
	//"tko_camp",  
	"Toxin" //  Spawns OK Debug = 4 Build 246
	];

private _pathGreen = "Green";
private _missionListGreen = [/*"default","default2",/*"medicalCamp","redCamp","resupplyCamp","banditVillage",*/
		"FieldCamp",  //  Spawns OK Build 246 Debug == 4
		"FieldHQ",  // Spawns OK Build 246 Debug == 4
		//"weaponsResearch",  // OK build 224
		"munitionsResearch",  // Spawns OK Build 246 Debug == 4
		//"colonelsBase",  //  OK Build 224
		"factory",  //  Spawns OK Build 246 Debug == 4
		"fortification",  //  Spawns OK Debug = 4 Build 246
		//"banditVillage",  //  OK but do not use.
		"Camp_Moreell",  // Spawns OK Build 246 Debug == 4
		//"charlston",  //  Spawns OK but crate glitched under a building
		//"derbunker",  //  OK
		//"forgotten_HQ",  // OK, but can't complete
		"lager"  //  Spawns OK but crate glitched under a building
		//"Operations_Command",  //  OK  bEST SUITED FOR GREEN/ORANGE // Nees R3F or crate spawned by parachute at mission start
		//"Outpost",  // OK
		//"tko_camp"  // OK
	];

private _pathOrange = "Orange";
private _missionListOrange = [/*"default","default2","medicalCamp","redCamp","resupplyCamp","officeComplex",*/
	"CommandersComplex",  //   Spawns OK Debug = 4 Build 246
	"generalsCamp",  // Spawns OK Debug = 4 Build 246
	//"colonel2",  // Spawns OK Debug = 4 Build 246
	"stronghold",  //   Spawns OK Debug = 4 Build 246
	"operationShutdown",  //  Spawns OK Debug = 4 Build 246
	"operationTakeover",  //  Spawns OK Debug = 4 Build 246
	"dashq",  //  Spawns OK Debug = 4 Build 246
	"derbunker", // Spawns OK Debug = 4 Build 246
	//"Ammunition_depot",  // OK Build 224; vics may need predefined spawns more suited for green mission
	//"Camp_Moreell",  // OK except that the crate spawns at ground level under a building; try dropping from chute for now
	//"Operations_Command",  //OK  bEST SUITED FOR GREEN/ORANGE // Nees R3F or crate spawned by parachute at mission start
	//"Outpost",  // dOES NOT COMPLETE, ODD LOOT CHEST PLACEMENT
	"tko_camp"  // // OK Build 224
	/*,"temple"*/
	];

private _pathUMS = "UMS\dynamicMissions";
private _missionListUMS = ["default"];

private _pathHeliCrashes = "HeliCrashes";
