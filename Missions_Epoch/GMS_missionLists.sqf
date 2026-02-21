/*

	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

//private["_pathBlue","_missionListBlue","_pathRed","_missionListRed","_pathGreen","_missionListGreen","_pathOrange","_missionListOrange","_pathStatics","_missionListStatics"];

private _missionDirectory = "Missions_Epoch";
[format["Loading _missionLists.sqf from %2 at %1", diag_tickTime, _missionDirectory]] call GMS_fnc_log;
GMS_pathScouts = "Scouts";
GMS_missionListScouts = ["Scouts"];

GMS_pathHunters = "Hunters";
GMS_missionListHunters = ["Hunters"];

GMS_pathBlue = "Blue";
GMS_missionListBlue = [
		"campwhiskey",
		"campvodka",
		"campbourbon",
		"camptequila", 
		"campgin",
		"campbrandy",
		"market",
		"quad",
		"smallhq",
		"strip",
		"storage",
		"survivalcamp",
		"insurgent",
		"campsite",
		"comms",
		"radiotower",
		"storageyard",
		"hqtents",
		"smallfort",
		"cargotower",
		"cargopost",
		"rb1",
		"rb2",
		"rb3",
		"mercscouts",
		"rb4",
		"gas1",
		"gas2",
		"gas3",
		"gas4"
	];

GMS_pathRed = "Red";
GMS_missionListRed = [
		"sleepy",
		"overwatch",
		"station", 
		"duck",
		"cleese",
		"chapman",
		"loveshack",
		"banjo",
		"powcamp", 
		"radar",
		"icbm",
		"construction",
		"supplydrop",
		"flightschool",
		"merclz",
		"forthq",
		"fieldbarracks",
		"fieldradar",
		"bunkered",
		"villa",
		"armsdeal"
	];

GMS_pathGreen = "Green";
GMS_missionListGreen = [
		//"munitionsResearch",
		//"fortification",
		//"wodger",
		//"farp",
		////"twins",
		//"valley",
		//"fanatics",
		//"beach",
		//"gaga",
		//"docksuckers",
		//"mercware",
		//"solarmercs",
		////"nesolar",
		////"tankyou",
		//"pepper",
		//"weapons",
		//"frini",
		//"kavala",
		//"shipping",
		//"athira",
		//"southmil",
		//"milly",
		//"jungle",
		//"thetip",
		//"lighthouse",
		//"dump",
		//"outpostconstruction",
		//"pyrsos",
		"holy"
	];

GMS_pathOrange = "Orange";
GMS_missionListOrange = [
		"CommandersComplex",
		"generalsCamp",
		"operationShutdown",
		"operationTakeover",
		"dashq",  
		"tko_camp",
		//"albatross",  //  Has Errors
		//"architect",  // No Errors 
		"mountain",  // No Errors
		"smuggler",  // No Errors
		"fork",
		"boobs",
		"sheep",  // No Errors
		"parrot1",  // No Errors
		"power",  //  No Errors
		"python",  // No Errors
		"anthrax",    //  No errors
		"jabberwocky",
		"mrdeath"  // No Errors
		//"fawlty"
	];

GMS_pathStatics = "Statics";
GMS_missionListStatics = [
		//"docksuckers"
		"small_bay_mission"
];
[format["missionLists: _missionListStics %1", GMS_missionListStatics]] call GMS_fnc_log;
GMS_pathUMS = "UMS\dynamicMissions";
GMS_missionListUMS = ["default"];

GMS_pathHeliCrashes = "HeliCrashes";