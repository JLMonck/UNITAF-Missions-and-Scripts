//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player joins mission

	INDEX
	|1| Assign Unit Rank Patches

*/
//////////////////////////////

params [
	"_player",
	"_didJIP"
];

// |1| ASSIGN UNIT RANK PATCHES
player execVM "scripts\UTF\setPlayerInsignia.sqf";