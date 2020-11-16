/*
	by Ghostrider [GRG]

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_aiDifficultyLevel"];
private["_vests"];
_vests = missionNamespace getVariable [format["blck_vests_%1",_aiDifficultyLevel],[]];
/*
switch (toLower (_aiDifficultyLevel)) do
{
	case "blue": 	{_vests = blck_vests_blue};
	case "red": 	{_vests = blck_vests_red};
	case "green": 	{_vests = blck_vests_green};
	case "orange": 	{_vests = blck_vests_orange};
	default 		{_vests = blck_vests};
};
*/
_vests