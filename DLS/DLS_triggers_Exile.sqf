/*
Dynamic Loot Crate Spawner for Exile Mod for Arma 3
by
Ghostrider [GRG]
for ghostridergaming
4-6-16
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";


_worldName = toLower format ["%1", worldName];
diag_log format["DLS Diagnostics:: Worldname is %1",_worldName];
DLS_Spawn_Locations = [];
#ifdef blck_milServer

#else
if (_worldName isEqualTo "altis") then
	{
	
	diag_log "Dynamic Loot Crate Spawn System: configurations loaded for Altis as of 6-19-16";
	DLS_Spawn_Locations = [		// For Altis Militarized Server
	/*
	[[4923,21900],2,0,true,2],  // Castle NW
	[[9261,8106],2,0,true,2],  // Sfaka
	[[8264,10859],2,0,true,2],  // Solar Plant
	[[7228,11063],2,0,true,2],  // Edessa
	[[3587,10250],2,0,true,2],  // Athanos
	[[4212,15047],2,0,true,2],  // Power Plant
	[[6238,16246],2,0,true,2]  // Factory
	*/
	];
};  
#endif

if (_worldName isEqualTo "napf") then
	{
	diag_log "Dynamic Loot Crate Spawn System: configurations loaded for NAPF as of 4-6-16";
	DLS_Spawn_Locations = [		// For NAPF Server
	[[2855,6269],2,0,true,1],  // homborg
	[[17216,3523],2,0,true,1],  // froborg
	[[16381,15348],2,0,true,2],  // meggan
	[[16796,13848],2,0,true,2],  // horw
	[[10576,5058],2,0,true,4],  // dam
	[[3658,9898],2,0,true,2],  // hasle
	[[3991,14436],2,0,true,2],  // bubendorf
	[[6557,16716],2,0,true,2]  // sewwen
	];
};  // Locations to monitor
if (_worldName isEqualTo "tanoa") then
	{
		diag_log "Dynamic Loot Crate Spawn System: configurations loaded for Tanoa";
		DLS_Spawn_Locations = [		// For NAPF Server
		
		];		
	};
diag_log "DLS Triggers for Exile Loaded";