

/*
	Static Mission Generated
	Using 3DEN Plugin for blckeagls
	dynamicMission.sqf generated:: blckeagls 3DEN Plugin Version 0 : Build 2 : Build Date 08/15/20
	By Ghostrider-GRG-
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";
#include "privateVars.sqf";

_missionCenter = [20729.2,16510.4,33.866];
_markerColor = "ColorRed";
_markerMissionName = "Stay Away";
_crateLoot = blck_BoxLoot_Blue;
_lootCounts = blck_lootCountsBlue;

_missionLandscape = [
     ["Land_Unfinished_Building_01_F",[20762,16510.1,0.0579987],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_u_Shed_Ind_F",[20700.1,16502.3,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Shed_08_brown_F",[20714.1,16536.4,-0.00500107],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Shed_02_F",[20755.8,16589,0.0112839],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Wreck_AFV_Wheeled_01_F",[20724,16489.4,0.0363121],[[0,0.998581,0.0532597],[-0.0200001,-0.0532491,0.998381]],[true,true]],
     ["Land_Unfinished_Building_01_F",[20778.1,16550.4,-3.8147e-006],[[0,1,0],[0,0,1]],[true,true]],
     ["Land_Unfinished_Building_02_F",[20746.2,16568.3,0],[[0,1,0],[0,0,1]],[true,true]],
     ["Sign_Sphere25cm_Geometry_F",[20747,16568.6,3.72306],[[0,1,0],[0,0,1]],[true,true]],
     ["Sign_Sphere10cm_F",[20747.9,16531.7,-4.95911e-005],[[0,0.999608,0.0279894],[-0.00267442,-0.0279893,0.999605]],[true,true]],
     ["Sign_Sphere100cm_Geometry_F",[20745.4,16566.4,3.75974],[[0,1,0],[0,0,1]],[true,true]],
     ["Sign_Sphere100cm_F",[20744.7,16567.4,3.75482],[[0,1,0],[0,0,1]],[true,true]]
];

_simpleObjects = [

];

_missionLootVehicles = [

];

_vehiclePatrolParameters = [
     ["B_Truck_01_mover_F",[20753.3,16524,0.00246429],0,75,600],
     ["B_MRAP_01_hmg_F",[20732.2,16526.6,0.00309372],0,75,600],
     ["B_T_Boat_Transport_01_F",[20747.8,16554.5,0.000598907],0,75,600]
];

_submarinePatrolParameters = [

];

_airPatrols = [
     ["B_Heli_Light_01_dynamicLoadout_F",[20722.6,16519.3,0.00202942],0,1000,900]
];

_missionEmplacedWeapons = [
     ["B_HMG_01_F",[20776.2,16555.8,3.86831],0],
     ["B_GMG_01_F",[20724,16505.4,0.00164032],0],
     ["B_HMG_01_high_F",[20759.8,16510.9,3.66988],0],
     ["B_static_AA_F",[20759.7,16513.9,6.86666],0]
];

_aiGroupParameters = [
     [[20759.3,16556.6,0.00143814],3,6,"Blue",45,600],
     [[20734.9,16502,-0.000480652],3,6,"Blue",45,600],
     [[20776.3,16553.9,6.88682],3,6,"Blue",45,600],
     [[20775.6,16549.2,3.68233],3,6,"Blue",45,600],
     [[20749.2,16506,4.06853],3,6,"Blue",45,600],
     [[20758.3,16510.3,0.194927],3,6,"Blue",45,600],
     [[20763,16508.1,0.330158],3,6,"Blue",45,600]
];

_aiScubaGroupParameters = [

];

_missionLootBoxes = [
     ["Box_IND_Wps_F",[20739.9,16512.2,0.000167847],[[0,0.999353,0.0359766],[-0.00265204,-0.0359765,0.999349]],[true,true],_crateLoot,_lootCounts],
     ["Box_AAF_Equip_F",[20742.4,16517.7,0.000415802],[[0,0.999445,0.033315],[0,-0.033315,0.999445]],[true,true],_crateLoot,_lootCounts],
     ["Box_IND_AmmoOrd_F",[20744.2,16523.6,0.000297546],[[0,0.999445,0.033315],[0,-0.033315,0.999445]],[true,true],_crateLoot,_lootCounts],
     ["Box_IND_WpsLaunch_F",[20739.4,16508.3,0.000183105],[[0,0.999353,0.0359766],[-0.00265204,-0.0359765,0.999349]],[true,true],_crateLoot,_lootCounts]
];

/*
	Use the parameters below to customize your mission - see the template or blck_configs.sqf for details about each them
*/
_uniforms = blck_SkinList;
_headgear = blck_headgear;
_vests = blck_vests;
_backpacks = blck_backpacks;
_sideArms = blck_Pistols;

#include "\q\addons\custom_server\Missions\Static\Code\GMS_fnc_sm_initializeMission.sqf"; 