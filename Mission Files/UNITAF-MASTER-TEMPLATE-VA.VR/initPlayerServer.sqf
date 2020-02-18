//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed only on server when a player joins mission

*/
//////////////////////////////

/*/ Avoid Using initPlayerServer.sqf

Executed only on server when a player
joins mission (includes both mission
start and JIP). See Initialization
Order for details about when the script
is exactly executed.

This script relies on BIS_fnc_execVM
and remoteExec. If CfgRemoteExec's class
Functions is set to mode = 0 or 1, the
script will never be executed. Therefore,
initPlayerServer.sqf should be avoided.

https://community.bistudio.com/wiki/Initialization_Order /*/