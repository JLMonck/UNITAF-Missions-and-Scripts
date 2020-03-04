//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed when mission is started (before briefing screen)

	INDEX
	|1| Apex Respawn Loadouts
	|2| Start SCFramework

*/
//////////////////////////////

// |1| APEX RESPAWN LOADOUTS
// REG ROLES
[west,"UTF_Rifleman"] call BIS_fnc_addRespawnInventory;
[west,"UTF_Instructor"] call BIS_fnc_addRespawnInventory;
// SPC ROLES
[west,"UTF_Aircrew"] call BIS_fnc_addRespawnInventory;

// |2| START SCFRAMEWORK
[] execVM "SCFramework\Init_SCFramework.SQF";