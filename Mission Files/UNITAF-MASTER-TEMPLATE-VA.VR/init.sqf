//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed when mission is started (before briefing screen)

*/
//////////////////////////////

// HQ ROLES
[west,"UTF_Commander"] call BIS_fnc_addRespawnInventory;
[west,"UTF_OfficerOps"] call BIS_fnc_addRespawnInventory;
[west,"UTF_OfficerInt"] call BIS_fnc_addRespawnInventory;
[west,"UTF_OfficerLog"] call BIS_fnc_addRespawnInventory;

// AMFOR ROLES
[west,"UTF_PTL"] call BIS_fnc_addRespawnInventory;
[west,"UTF_SQL"] call BIS_fnc_addRespawnInventory;
[west,"UTF_FTL"] call BIS_fnc_addRespawnInventory;
[west,"UTF_UNARMED"] call BIS_fnc_addRespawnInventory;
[west,"UTF_R"] call BIS_fnc_addRespawnInventory;
[west,"UTF_LM"] call BIS_fnc_addRespawnInventory;
[west,"UTF_GRN1"] call BIS_fnc_addRespawnInventory;
[west,"UTF_GRN2"] call BIS_fnc_addRespawnInventory;
[west,"UTF_GRN3"] call BIS_fnc_addRespawnInventory;
[west,"UTF_LAT"] call BIS_fnc_addRespawnInventory;
[west,"UTF_ENG"] call BIS_fnc_addRespawnInventory;
[west,"UTF_AUR1"] call BIS_fnc_addRespawnInventory;
[west,"UTF_AUR2"] call BIS_fnc_addRespawnInventory;
[west,"UTF_AURA"] call BIS_fnc_addRespawnInventory;
[west,"UTF_SM"] call BIS_fnc_addRespawnInventory;
[west,"UTF_MAT"] call BIS_fnc_addRespawnInventory;
[west,"UTF_HAT"] call BIS_fnc_addRespawnInventory;
[west,"UTF_MG"] call BIS_fnc_addRespawnInventory;
[west,"UTF_MGA"] call BIS_fnc_addRespawnInventory;
[west,"UTF_DM"] call BIS_fnc_addRespawnInventory;
[west,"UTF_B"] call BIS_fnc_addRespawnInventory;

// MARFOR ROLES
[west,"UTF_PH1"] call BIS_fnc_addRespawnInventory;

// JSOTF ROLES
[west,"UTF_PH2"] call BIS_fnc_addRespawnInventory;

// ROLEPLAY ROLES
[civilian,"UTF_RP_Pilot"] call BIS_fnc_addRespawnInventory;

[] execVM "SCFramework\Init_SCFramework.SQF";
