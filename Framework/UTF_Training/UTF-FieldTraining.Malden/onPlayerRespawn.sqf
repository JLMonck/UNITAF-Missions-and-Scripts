//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player respawns

	INDEX
	|1| Assign ACE Specialist Roles
	|2| Assign Unit Rank Patches

*/
//////////////////////////////

params [
	"_newUnit",
	"_oldUnit",
	"_respawn",
	"_respawnDelay"
];

// |1| ASSIGN ACE SPECIALIST ROLES
// player execVM "scripts\UTF\setPlayerRole.sqf";

// |2| ASSIGN UNIT RANK PATCHES
player execVM "scripts\UTF\setPlayerInsignia.sqf";