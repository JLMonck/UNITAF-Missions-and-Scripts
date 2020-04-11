//////////////////////////////
/// UNITED TASK FORCE
// Author: 2LT JAMES
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed only on server on mission start

*/
//////////////////////////////
//Get Server Database
_result = "extDB3" callExtension "9:ADD_DATABASE:UTFN";
if(!(_result isEqualTo "[1]")) exitWith {diag_log "extDB3: Error with Database Connection";};

//Get Protocol
_result = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:UTFN:SQL:FETCHDATA:TEXT";
if(!(_result isEqualTo "[1]")) exitWith {diag_log "extDB3: Error with Protocol Connection";};

// Set Up Dynamic Groups on Server
["Initialize"] call BIS_fnc_dynamicGroups;