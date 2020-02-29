//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player joins mission

	INDEX
	|1| Assign Unit Rank Patches
	|2| Assign Arsenal Access

*/
//////////////////////////////

params [
	"_player",
	"_didJIP"
];

// |1| ASSIGN UNIT RANK PATCHES
player execVM "scripts\UTF\setPlayerInsignia.sqf";

// |2| ASSIGN ARSENAL ACCESS
player execVM "scripts\UTF\arsenalNormal.sqf";
//player execVM "scripts\UTF\arsenalStaff.sqf";