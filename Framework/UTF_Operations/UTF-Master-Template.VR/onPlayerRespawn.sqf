//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	https://community.bistudio.com/wiki/Event_Scripts
	Executed locally when player respawns

	|1| Assign ACE Specialist Roles
	|2| Assign Unit Rank Patches

*/
//////////////////////////////



/* |1| ASSIGN ACE SPECIALIST ROLES
	
	Assigns ACE Specialist roles based on unique spawn items
	For Engineers:
		[1] ACE Mine Detector = Combat Engineer
		[2] BIS Tool Kit = Repair Specialist
		[0] Neither = Not Specialist
	For Medical:
		[1] RHS Falcon Coy = Combat Life Saver
		[2] RHS Eagle Coy = Squad Medic
		[0] Neither = Not Specialist
	Script in testing!
*/

params [
	"_newUnit",
	"_oldUnit",
	"_respawn",
	"_respawnDelay"
];


// Check Inventory
_items = items player;
_tierMedical = "noM";
_tierEngineer = "noE";
sleep 5;

// Is Engineer Check - TO BE CONDENSED INTO FUNCTION
if (vest player =="rhsusf_iotv_ocp_Repair") then {
	player setVariable ["ACE_IsEngineer",1,true];
    _tierEngineer = "Combat Engineer";
	player addItemToBackpack "ACE_wirecutter";
	player addItemToBackpack "ACE_EntrenchingTool";
	player addItemToBackpack "DemoCharge_Remote_Mag";
	player addItemToBackpack "DemoCharge_Remote_Mag";
    } else {
    if ("ToolKit" in _items) then {
        player setVariable ["ACE_IsEngineer",2,true];
        _tierEngineer = "Advanced Engineer";
		player addItemToBackpack "adv_aceCPR_AED";
    } else { 
        player setVariable ["ACE_IsEngineer",0,true];
        _tierEngineer = "Regular";
    };
};

// Is Medical Check - TO BE CONDENSED INTO FUNCTION
if (backpack player == "B_Kitbag_cbr") then {
	player setVariable ["ace_medical_medicclass", 1, true];
    _tierMedical = "Combat Lifesaver";
    } else { 
	if ((backpack player == "B_Carryall_cbr") ||
		(headgear player == "H_Cap_headphones")) then {
		player setVariable ["ace_medical_medicclass", 2, true];
        _tierMedical = "Squad Medic";
	} else { 
		player setVariable ["ace_medical_medicclass", 0, true];
        _tierMedical = "Regular";
	};
};

// Hint Player Status
if (_tierMedical == _tierEngineer) then {
	hint "Medical/Engineer|None";
} else {
	hint format ["Medical|%1 Engineer|%2",_tierMedical,_tierEngineer];
};

/* |2| ASSIGN UNIT RANK PATCHES

	Work In Progress
*/