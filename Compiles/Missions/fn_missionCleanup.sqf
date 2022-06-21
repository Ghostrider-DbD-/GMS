/*
	schedules deletion of all remaining alive AI and mission objects.

	By Ghostrider-GRG-
	Copyright 2016
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp"

params["_coords","_mines","_objects","_hiddenObjects","_blck_AllMissionAI","_markerName","_cleanupAliveAITimer","_cleanupCompositionTimer",["_isScubaMission",false]];

[_mines] call blck_fnc_clearMines;
//blck_oldMissionObjects pushback [_coords,_objects, (diag_tickTime + _cleanupCompositionTimer)];
[_objects, (diag_tickTime + _cleanupCompositionTimer)] call GMS_fnc_addToDeletionCue;	
blck_hiddenTerrainObjects pushBack[_hiddenObjects,(diag_tickTime + _cleanupCompositionTimer)];
[_blck_AllMissionAI, (diag_tickTime + _cleanupAliveAITimer)] call GMS_fnc_addToDeletionCue;
blck_missionsRunning = blck_missionsRunning - 1;
blck_ActiveMissionCoords = blck_ActiveMissionCoords - [ _coords];	
if !(_isScubaMission) then
{
	blck_recentMissionCoords pushback [_coords,diag_tickTime]; 
	[_markerName,"inactive",[0,0,0]] call blck_fnc_updateMissionQue;	
};
if (_isScubaMission) then
{
	blck_priorDynamicUMS_Missions pushback [_coords,diag_tickTime]; 
	blck_UMS_ActiveDynamicMissions = blck_UMS_ActiveDynamicMissions - [_coords];
	blck_dynamicUMS_MissionsRuning = blck_dynamicUMS_MissionsRuning - 1;		
};