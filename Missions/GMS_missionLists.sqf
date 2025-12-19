/*

	By Ghostrider [GRG]
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

private["_pathBlue","_missionListBlue","_pathRed","_missionListRed","_pathGreen","_missionListGreen","_pathOrange","_missionListOrange","_pathStatics","_missionListStatics"];
private _missionDirectory = "Missions";
[format["Loading _missionLists.sqf at %1", diag_tickTime]] call GMS_fnc_log;
private _pathScouts = "Scouts";
private _missionListScouts = ["Scouts"];

private _pathHunters = "Hunters";
private _missionListHunters = ["Hunters"];

private _pathBlue = "Blue";
private _missionListBlue = [
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

private _pathRed = "Red";
private _missionListRed = [
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

private _pathGreen = "Green";
private _missionListGreen = [
		"munitionsResearch",
		"fortification",
		"wodger",
		"farp",
		//"twins",
		"valley",
		"fanatics",
		"beach",
		"gaga",
		"docksuckers",
		"mercware",
		"solarmercs",
		//"nesolar",
		//"tankyou",
		"pepper",
		"weapons",
		"frini",
		"kavala",
		"shipping",
		"athira",
		"southmil",
		"milly",
		"jungle",
		"thetip",
		"lighthouse",
		"dump",
		"outpostconstruction",
		"pyrsos",
		"holy"
	];

private _pathOrange = "Orange";
private _missionListOrange = [
		"CommandersComplex",
		"generalsCamp",
		"operationShutdown",
		"operationTakeover",
		"dashq",  
		"tko_camp",
		"albatross",
		"architect",
		"mountain",
		"smuggler",
		"fork",
		"boobs",
		"sheep",
		"parrot1",
		"power",
		"python",
		"anthrax",
		"jabberwocky",
		"mrdeath"
		//"fawlty"
	];

private _pathStatics = "Statics";
private _missionListStatics = [
		//"docksuckers"
		"small_bay_mission"
];
[format["missionLists: _missionListStics %1", _missionListStatics]] call GMS_fnc_log;
private _pathUMS = "UMS\dynamicMissions";
private _missionListUMS = ["default"];

private _pathHeliCrashes = "HeliCrashes";