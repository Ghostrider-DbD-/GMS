/*
	By Ghostrider-GRG-

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/

	params["_unit","_vk"];
	private _unitPos = getPosATL _unit;
	{
			_x reveal [_vk, 4];
			_x dowatch _vk; 
			_x doTarget _vk; 
	} forEach (allPlayers select {(_unitPos distance _x) < 500});  // get all players within 500 m