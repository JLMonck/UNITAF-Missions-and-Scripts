//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	Send an array to A3Log
	[] call UTF_fnc_LogSend

*/
//////////////////////////////

params [
    "_array"
];

// Convert Array to String
_string = _array joinString "|";
//systemChat _string; // Debug

// Post Log
sendlogfile = [
	_string
];
publicVariableServer "sendlogfile";

// Reset Rounds Fired
roundsFired = 0;