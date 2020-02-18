//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player joins mission

*/
//////////////////////////////

params [
	"_player",
	"_didJIP"
];

// Set Up Dynamic Groups on Clients
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;