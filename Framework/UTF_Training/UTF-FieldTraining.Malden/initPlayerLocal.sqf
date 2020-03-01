//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player joins mission

	INDEX
	|1| Assign Unit Rank Patches
	|2| Assign Arsenal Access
	|3| Start Slides

*/
//////////////////////////////

params [
	"_player",
	"_didJIP"
];

removeGoggles player;

// |1| ASSIGN UNIT RANK PATCHES
player execVM "scripts\UTF\setPlayerInsignia.sqf";

// |2| ASSIGN ARSENAL ACCESS
// - Moved to setPlayerInsignia.sqf for now.

// |3| START SLIDES
player execVM "scripts\UTF\slidesInit.sqf";