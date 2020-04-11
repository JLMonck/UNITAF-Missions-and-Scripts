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

//PDB
_thisPlayer = _this select 0;
table addAction ["<t color='#b20000'>Load UTFN Orbat Data</t>", {[player, "scripts\UTFN\fn_Server_getUnit.sqf"] remoteExec ["execVM", 2]}];
table addAction ["<t color='#F1C40F'>Reload Rank Patch</t>", {[player, "scripts\UTFN\fn_Server_getUnitPatch.sqf"] remoteExec ["execVM", 2]}];

// Set Up Dynamic Groups on Clients
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
