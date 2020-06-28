

params["_message",["_code",""]];
switch (toLower _code) do 
{
	case "error": {_message = format["[blckeagls]  <ERROR>  %1",_message]};
	case "warning": {_message = format["[blckeagls] <WARNING>  %1",_message]};
	default {_msessage = format["[blckeagls] %1",_message]};
};
diag_log _message;