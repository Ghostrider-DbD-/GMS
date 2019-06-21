/*
    _loadVehicleCrew
*/

params["_veh","_group",["_crewCount",4]];
if !(isNull _group) then 
{
	{
			//_x addEventHandler["GetOutMan",{_this remoteExec["blck_EH_vehcleManGetOut",2]}]; 
			_x setVariable["GRG_vehicle",_veh];
			//diag_log format["_fnc_spawnVehiclePatrol: _x getVariable 'GRG_vehicle' = %1 | typeOf (_x getVariable 'GRG_vehicle' = %1)  = %2",_x getVariable 'GRG_vehicle',typeOf (_x getVariable 'GRG_vehicle')];
			switch (_forEachIndex) do
			{
				case 0: {_x moveingunner _veh;};
				case 1: {_x moveindriver _veh;};
				case {_forEachIndex >= _seats - 1}: {
					//diag_log format["_fnc_spawnVeiclePatrol: deleteing excess crew: _veh = %1 | _forEachIndex = %2 | _seats = %3",_veh,_forEachIndex,_seats];
					deleteVehicle _x;
					};  // delete any excess AI
				default {_x moveInCargo _veh;};
			};
			// _this remoteExec ["blck_fnc_processAIKill",2];
	}forEach (units _group);  // 
};