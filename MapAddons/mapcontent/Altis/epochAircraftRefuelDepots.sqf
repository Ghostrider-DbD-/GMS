


/*
  RAGE_MAP_ADDON - \RAGE_ADDON\
	by Redbeard Actual
	
	Credits: 
		Made with E3DEN Addon. http://steamcommunity.com/sharedfiles/filedetails/?id=630702051

	This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
	http://creativecommons.org/licenses/by-nc-nd/4.0/
*/

{
	private ["_object","_marker","_markerName"];
	_object = createVehicle [_x select 0,[0,0,0],[],0,'CAN_COLLIDE'];
	if (surfaceIsWater (_x select 1)) then [{_object setPosASL (_x select 1)},{_object setPosATL (_x select 1)}];
	_object setVectorDirAndUp (_x select 2);
	_object allowDamage false;
	//_marker = createLocation ["ViewPoint",(_x select 1),20,20];
	//_marker setText "Airfield Refueling";
	_markerName = format["Refuel%1",_forEachIndex];
	_marker = createMarker [_markerName,_x select 1];
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerType "mil_box";
	_marker setMarkerText "Refuel";
	//if (blck_debugON) then {diag_log format["Rage Aircraft Refuel marker = %1 and item = %2",_marker,_x]};
} forEach [
	["ContainmentArea_01_forest_F",[26810,24613.8,0.462492],[[-0.767256,0.641341,0],[0,0,1]]],
	["ContainmentArea_01_forest_F",[14194.4,16131.6,0.243956],[[-0.971999,0.234938,-0.00476843],[-0.0026529,0.00931989,0.999953]]],
	["ContainmentArea_01_forest_F",[11427.8,11476,0.723501],[[0.621673,0.783277,0],[0,0,1]]],
	["ContainmentArea_01_forest_F",[9176.63,21594.6,0.599359],[[-0.620095,0.784526,0],[0,0,1]]],
	["ContainmentArea_01_forest_F",[20947.8,7212.46,0.488594],[[0.530373,0.847764,0],[0,0,1]]],
	["ContainmentArea_01_forest_F",[23194.7,18887.6,0.91849],[[-0.996504,-0.0835417,0],[0,0,1]]]
];

{
	private _object = createVehicle [_x select 0,[0,0,0],[],0,'CAN_COLLIDE'];
	if (surfaceIsWater (_x select 1)) then [
		{_object setPosASL (_x select 1)},
		{_object setPosATL (_x select 1)}
	];
	_object setVectorDirAndUp (_x select 2);
	_object allowDamage false;
	if (_object in ["Land_fs_feed_F"]) then {_object enableSimulationGlobal true} else {_object enableSimulationGlobal false};
	//diag_log format["RAGE MAP ADDONS for Altis: spawning object %1",_x];
} forEach [
	["Land_CncBarrier_stripes_F",[26809,24621.3,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26807.3,24619.3,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26805.6,24617.3,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26804,24615.3,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26802.3,24613.4,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26817.7,24614.1,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26816.1,24612.1,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26814.4,24610.1,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26812.7,24608.2,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26811,24606.2,0],[[0.759988,-0.649938,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26802.6,24610.8,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26804.5,24609.1,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26806.5,24607.4,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26808.5,24605.8,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26811.6,24621.7,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26813.5,24620,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26815.5,24618.4,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[26817.5,24616.7,0],[[0.644305,0.764769,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14190.1,16137.9,1.90735e-006],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14189.5,16135.4,1.90735e-006],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14188.9,16132.9,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14188.2,16130.3,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14187.6,16127.8,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14201.1,16135.3,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14200.5,16132.8,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14199.9,16130.3,1.90735e-006],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14199.2,16127.8,0.00166321],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14198.6,16125.3,0],[[0.969295,-0.245899,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14189,16125.6,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14191.5,16125,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14194,16124.4,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14196.5,16123.8,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14192.2,16139.4,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14194.8,16138.8,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14197.3,16138.2,0],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[14199.8,16137.6,0.00109673],[[0.23873,0.971086,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11435.7,11474.7,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11434.1,11472.7,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11432.5,11470.6,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11430.9,11468.6,0.128868],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11435.2,11477.2,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11433.2,11478.8,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11431.2,11480.5,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11429.2,11482.1,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11427.2,11483.7,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11428.3,11468.3,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11426.3,11469.9,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11424.3,11471.6,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11422.2,11473.2,0.129768],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11420.2,11474.8,0.128107],[[-0.630451,-0.776229,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11424.6,11483.4,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11423,11481.4,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11421.4,11479.4,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[11419.7,11477.3,0.128107],[[0.780867,-0.624698,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9179.76,21602,0.00399017],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9181.36,21600,0.00399017],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9182.95,21598,-0.00535774],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9184.57,21595.9,0.00373745],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9177.17,21602.1,0.00197601],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9175.13,21600.6,-0.00597572],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9173.08,21599,-0.0060215],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9171.03,21597.4,-1.14441e-005],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9168.98,21595.8,-0.0030241],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9184.25,21593.3,-0.00262165],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9182.2,21591.8,0.00597],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9180.15,21590.2,0.00607777],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9178.11,21588.6,0.00541401],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9176.06,21587,0.000704765],[[0.611225,-0.791457,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9168.71,21593.2,-0.00297642],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9170.31,21591.2,0.00602341],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9171.91,21589.1,0.00602341],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[9173.52,21587.1,-0.00270271],[[0.786919,0.617056,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20955.9,7212.02,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20954.5,7209.83,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20953.1,7207.64,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20951.7,7205.44,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20955.1,7214.49,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20952.9,7215.88,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20950.7,7217.28,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20948.5,7218.67,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20946.4,7220.07,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20949.2,7204.87,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20947,7206.26,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20944.8,7207.66,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20942.6,7209.05,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20940.4,7210.45,0],[[-0.539883,-0.84174,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20943.8,7219.45,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20942.4,7217.26,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20941.1,7215.07,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[20939.7,7212.87,0],[[0.845707,-0.533648,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23190.3,18894.3,0.318488],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23192.8,18894.5,0.318488],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23195.4,18894.7,0.318488],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23198,18894.9,0.319585],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23188.8,18892.2,0.31849],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23188.9,18889.6,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23189.1,18887,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23189.3,18884.4,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23189.5,18881.9,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23200,18893.2,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23200.2,18890.6,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23200.4,18888.1,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23200.6,18885.5,0.320151],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23200.8,18882.9,0.318488],[[0.997382,0.0723186,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23191.5,18880.2,0.318488],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23194.1,18880.4,0.31849],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23196.7,18880.6,0.31849],[[-0.0796863,0.99682,0],[0,0,1]]],
	["Land_CncBarrier_stripes_F",[23199.3,18880.8,0.31849],[[-0.0796863,0.99682,0],[0,0,1]]],
	["StorageBladder_01_fuel_forest_F",[26808.1,24611.4,0.387022],[[-0.641341,-0.767256,0],[0,0,1]]],
	["StorageBladder_01_fuel_forest_F",[14193.7,16128.7,0.27021],[[-0.234972,-0.971966,0.00843565],[-0.0026529,0.00931989,0.999953]]],
	["StorageBladder_01_fuel_forest_F",[11425.4,11477.9,0.771963],[[-0.783277,0.621673,0],[0,0,1]]],
	["StorageBladder_01_fuel_forest_F",[9174.26,21592.7,0.549922],[[-0.784526,-0.620095,0],[0,0,1]]],
	["StorageBladder_01_fuel_forest_F",[20945.2,7214.06,0.37566],[[-0.847765,0.530373,0],[0,0,1]]],
	["StorageBladder_01_fuel_forest_F",[23195,18884.5,0.936083],[[0.0835418,-0.996504,0],[0,0,1]]],
	["StorageBladder_01_fuel_sand_F",[26812,24616.2,0.227615],[[-0.641135,-0.767251,0.016479],[-0.0253251,0.042614,0.998771]]],
	["StorageBladder_01_fuel_sand_F",[14195.1,16134.7,0.240185],[[-0.234972,-0.971966,0.00844419],[-0.00265204,0.00932847,0.999953]]],
	["StorageBladder_01_fuel_sand_F",[11430.2,11474.1,0.391218],[[-0.783159,0.62109,0.0301426],[0.0173316,-0.0266531,0.999494]]],
	["StorageBladder_01_fuel_sand_F",[9179.07,21596.6,0.366206],[[-0.784526,-0.620095,0],[0,0,1]]],
	["StorageBladder_01_fuel_sand_F",[20950.5,7210.83,0.522596],[[-0.847765,0.530373,0],[0,0,1]]],
	["StorageBladder_01_fuel_sand_F",[23194.4,18890.7,0.614158],[[0.0835418,-0.996504,0],[0,0,1]]],
	["Land_fs_feed_F",[26806,24617,0.226955],[[0.77073,-0.637161,0],[0,0,1]]],
	["Land_fs_feed_F",[26814.1,24610.2,0],[[0.77073,-0.637161,0],[0,0,1]]],
	["Land_fs_feed_F",[14189.3,16132.7,0],[[0.973265,-0.229686,0],[0,0,1]]],
	["Land_fs_feed_F",[14199.6,16130.2,-7.62939e-006],[[0.973265,-0.229686,0],[0,0,1]]],
	["Land_fs_feed_F",[11424.3,11471.9,0.128107],[[-0.617406,-0.786645,0],[0,0,1]]],
	["Land_fs_feed_F",[11430.9,11480.1,0.407833],[[-0.617406,-0.786645,0],[0,0,1]]],
	["Land_fs_feed_F",[9179.88,21590.3,0.00596046],[[0.62435,-0.781144,0],[0,0,1]]],
	["Land_fs_feed_F",[9173.35,21598.6,0.424032],[[0.62435,-0.781144,0],[0,0,1]]],
	["Land_fs_feed_F",[20944.9,7207.97,0],[[-0.525757,-0.850635,0],[0,0,1]]],
	["Land_fs_feed_F",[20950.5,7216.9,0.0165939],[[-0.525757,-0.850635,0],[0,0,1]]],
	["Land_fs_feed_F",[23200.1,18887.9,0.31848],[[0.996036,0.0889567,0],[0,0,1]]],
	["Land_fs_feed_F",[23189.6,18887.1,0.581033],[[0.996036,0.0889567,0],[0,0,1]]],
	["Land_HBarrier_3_F",[14216,16171.3,0.00827217],[[-0.238107,-0.971031,0.0200772],[-0.00267442,0.0213272,0.999769]]],
	["Land_HBarrier_3_F",[14288.2,16221.2,0.00857353],[[-0.238102,-0.971233,0.00358558],[-0.00666818,0.00532638,0.999964]]],
	["Land_HBarrier_3_F",[14282.8,16218.6,-0.00603867],[[-0.2381,-0.971163,0.0122623],[0.0080009,0.0106637,0.999911]]],
	["Land_HBarrier_3_F",[14282.3,16213.2,-0.00737],[[-0.2381,-0.971215,0.00707835],[0.0080009,0.00532633,0.999954]]],
	["Land_HBarrier_Big_F",[14221.7,16141.2,0.000802994],[[0.850211,0.526268,-0.0135007],[0.0026744,0.0213272,0.999769]]],
	["Land_HBarrier_Big_F",[14219.5,16117.9,-0.000125885],[[0.969288,-0.245909,0.00322189],[-0.00399675,-0.00265197,0.999988]]],
	["Land_HBarrier_Big_F",[14221.2,16126.1,-0.000225067],[[0.969264,-0.245937,0.00644533],[-0.0080009,-0.00532638,0.999954]]],
	["Land_HBarrier_Big_F",[14223,16134.3,-0.000547409],[[0.969288,-0.245875,0.005183],[-0.00399679,0.00532319,0.999978]]],
	["Land_HBarrier_Big_F",[14215.4,16112.1,-0.00107193],[[0.511298,-0.859367,0.00791323],[0.0293202,0.0266456,0.999215]]],
	["Land_HBarrier_Big_F",[14217.1,16148.2,0.000497818],[[0.850214,0.526327,-0.0107926],[-0.00133721,0.0226602,0.999742]]],
	["Land_HBarrier_Big_F",[14214.9,16155.3,0.00113297],[[-0.998177,0.0603391,-0.00128716],[0,0.0213272,0.999773]]],
	["Land_HBarrier_Big_F",[14208.3,16107.6,0.00187683],[[0.511416,-0.859314,-0.00581176],[-0.0199977,-0.0186622,0.999626]]],
	["Land_HBarrier_Big_F",[14201.2,16103.2,-0.000127792],[[0.511429,-0.859259,0.0106954],[-0.0186628,0.00133698,0.999825]]],
	["Land_HBarrier_Big_F",[14169.1,16145.9,-0.000711441],[[0.969294,-0.24586,0.00457429],[-0.00133721,0.0133316,0.99991]]],
	["Land_HBarrier_Big_F",[14167.3,16137.7,-0.000368118],[[0.969294,-0.245889,0.00260592],[-0.00133721,0.0053265,0.999985]]],
	["Land_HBarrier_Big_F",[14165.5,16129.5,0.00109863],[[0.969292,-0.245903,-0.00224174],[0.00265199,0.00133721,0.999996]]],
	["Land_HBarrier_Big_F",[14174.5,16170.4,0.000711441],[[0.969294,-0.245872,0.00391837],[-0.00133721,0.0106641,0.999942]]],
	["Land_HBarrier_Big_F",[14172.7,16162.2,0.000371933],[[0.969294,-0.245872,0.00391837],[-0.00133721,0.0106641,0.999942]]],
	["Land_HBarrier_Big_F",[14170.9,16154,-0.000801086],[[0.969292,-0.245843,0.00584863],[-0.00265204,0.0133316,0.999908]]],
	["Land_HBarrier_Big_F",[14163.7,16121.4,5.34058e-005],[[0.969292,-0.245905,-0.00191842],[0.00265199,0.00265203,0.999993]]],
	["Land_HBarrier_Big_F",[14162,16113.2,-8.96454e-005],[[0.969294,-0.245899,0.0012522],[-0.00129187,0,0.999999]]],
	["Land_HBarrier_Big_F",[14160.2,16105,0.000146866],[[0.969295,-0.245899,-0.000652123],[0,-0.00265199,0.999996]]],
	["Land_HBarrier_Big_F",[14215.2,16180.2,-0.000324249],[[0.969288,-0.245929,-0.000595354],[0.00399666,0.0133316,0.999903]]],
	["Land_HBarrier_Big_F",[14213.4,16172,-0.00107002],[[0.969292,-0.245788,0.00783607],[-0.00267442,0.0213272,0.999769]]],
	["Land_HBarrier_Big_F",[14211.6,16163.8,-0.000621796],[[0.969294,-0.245889,0.00263816],[0.00133688,0.0159977,0.999871]]],
	["Land_HBarrier_Big_F",[14190.2,16092.9,0.000484467],[[0.969294,-0.245885,-0.00293542],[0.00133688,-0.00666786,0.999977]]],
	["Land_HBarrier_Big_F",[14188.4,16084.8,0.00120163],[[0.969292,-0.245911,0.000930932],[-0.00265204,-0.00666784,0.999974]]],
	["Land_HBarrier_Big_F",[14186.6,16076.6,0.00256538],[[0.969288,-0.245929,0.000595518],[-0.00399675,-0.0133312,0.999903]]],
	["Land_HBarrier_Big_F",[14194.2,16098.7,9.15527e-005],[[0.511516,-0.859274,0.000207826],[-0.00265204,-0.00133687,0.999996]]],
	["Land_HBarrier_Big_F",[14158.4,16096.8,0.000545502],[[0.969282,-0.245885,-0.0058151],[0.00532655,-0.00265195,0.999982]]],
	["Land_HBarrier_Big_F",[14156.6,16088.7,0.00141525],[[0.969274,-0.24584,-0.00843027],[0.00666787,-0.00800041,0.999946]]],
	["Land_HBarrier_Big_F",[14154.9,16080.5,0.00543785],[[0.969264,-0.246012,0.00217392],[-0.00799344,-0.0226593,0.999711]]],
	["Land_HBarrier_Big_F",[14183,16207.1,-0.0011158],[[0.969209,-0.245827,0.0142319],[-0.0133317,0.00532603,0.999897]]],
	["Land_HBarrier_Big_F",[14181.2,16198.9,-0.000606537],[[0.969294,-0.245872,0.00391837],[-0.00133721,0.0106641,0.999942]]],
	["Land_HBarrier_Big_F",[14223.2,16204.2,0.000249863],[[0.930691,-0.365733,-0.00726452],[0.0119949,0.0106633,0.999871]]],
	["Land_HBarrier_Big_F",[14220.4,16196.3,0.0066433],[[0.930757,-0.365613,-0.00416956],[0.00133688,-0.00800058,0.999967]]],
	["Land_HBarrier_Big_F",[14217.6,16188.4,0.000185013],[[0.930718,-0.365693,-0.00575692],[0.00932853,0.00800055,0.999924]]],
	["Land_HBarrier_Big_F",[14216,16163.4,-0.000900269],[[0.969292,-0.245827,0.00650411],[-0.00265204,0.0159976,0.999869]]],
	["Land_HBarrier_Big_F",[14226,16212.1,0.000602722],[[0.930658,-0.365732,-0.0107255],[0.0146639,0.00799259,0.999861]]],
	["Land_HBarrier_Big_F",[14228.8,16219.9,-0.000482559],[[0.930738,-0.365626,0.00669539],[-0.00666818,0.00133718,0.999977]]],
	["Land_HBarrier_Big_F",[14234,16220.4,-2.28882e-005],[[-0.583317,-0.81224,0.00277945],[-0.00265204,0.00532648,0.999982]]],
	["Land_HelipadSquare_F",[26800.4,24622.4,0],[[0.64336,0.764945,-0.0307565],[-0.00133721,0.0412978,0.999146]]],
	["Land_HelipadSquare_F",[26818.9,24606.2,0],[[0.643215,0.765677,-0.00363027],[-0.0213272,0.0226551,0.999516]]],
	["Land_HelipadSquare_F",[14182,16135.1,1.90735e-006],[[0.237534,0.971372,-0.00388236],[0,0.00399675,0.999992]]],
	["Land_HelipadSquare_F",[14205.6,16128.8,0],[[0.237533,0.971343,-0.00840182],[0.00265199,0.00800087,0.999964]]],
	["Land_HelipadSquare_F",[11420.5,11467,0.129776],[[0.781635,-0.623623,-0.0118532],[0.00133721,-0.0173282,0.999849]]],
	["Land_HelipadSquare_F",[11436.2,11485.8,0.128107],[[0.781591,-0.623187,-0.0274498],[0.0106641,-0.0306496,0.999473]]],
	["Land_HelipadSquare_F",[9183.75,21585.4,4.29153e-005],[[0.785351,0.618982,0.00922544],[-0.0452881,0.0425853,0.998066]]],
	["Land_HelipadSquare_F",[9169.03,21605,-0.00334454],[[0.786155,0.618018,-0.00368042],[-0.00265204,0.00932847,0.999953]]],
	["Land_HelipadSquare_F",[20941.6,7202.68,0],[[0.846352,-0.532619,0.00237943],[-0.0053265,-0.00399669,0.999978]]],
	["Land_HelipadSquare_F",[20955.1,7223.13,0],[[0.846336,-0.532263,-0.0202565],[0.0080009,-0.025322,0.999647]]],
	["Land_HelipadSquare_F",[23206.3,18888.4,0.318488],[[-0.0809149,0.996721,0],[0,0,1]]],
	["Land_HelipadSquare_F",[23181.9,18887,0.318488],[[-0.0809149,0.996721,0],[0,0,1]]]
	];
