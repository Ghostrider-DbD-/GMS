// Sets up waypoints for a specified group.
private["_pos","_minDis","_maxDis","_dist","_dir","_arc","_xpos","_ypos","_newpos","_wpradius","_wpnum","_pos1","_group","_trigger","_center"];

_minDis = 0; // minimum distance from the center of a patrol area for waypoints
_maxDis = 200; // maximum distance from the center of a patrol area for waypoints
_group = _this select 0;
_trigger = _this select 1;

// Add a waypoint near the center of town
_wpradius = 20;
_wp = _group addWaypoint [getPos _trigger, _wpradius];
_wp setWaypointType "MOVE";

_wpnum = 12;
_center = _trigger getVariable ["locationPos",[0,0]];
_pos1 = _center;
_newpos = _pos1;
//diag_log format ["setWaypoints.sqf _group is %1 and _trigger location is %2",_group,_trigger getVariable ["locationPos",[0,0]]];
//diag_log format["setWaypoints.sqf  _pos1 = %1  and _newpos = %2",_pos1,_newpos];

_dir = random 360;
_arc = 360/_wpnum;
//Set up waypoints for our AI
for [{ _x=1 },{ _x < _wpnum },{ _x = _x + 1; }] do {
	_dir = round(random(_x)) * _arc;
	
	while{_pos1 distance _newpos < 30}do{ 
		_dist = (_minDis+(random (_maxDis - _minDis)));
		_xpos = (_center select 0) + sin (_dir) * _dist;
		_ypos = (_center select 1) + cos (_dir) * _dist;
		_newpos = [_xpos,_ypos,0];
	};	
			
	_safePos = [_newpos,0,30,1,0,20,0] call BIS_fnc_findSafePos;
	//diag_log format["setWaypoints.sqf  _safePos = %3;  _pos1 = %1;   and _newpos = %2",_pos1, _newpos, _safePos];
	_pos1 = _newpos;	
	_wp = _group addWaypoint [_safePos, _wpradius];
	_wp setWaypointType "MOVE";
};
_wp = _group addWaypoint [_center, _wpradius];
_wp setWaypointType "CYCLE";