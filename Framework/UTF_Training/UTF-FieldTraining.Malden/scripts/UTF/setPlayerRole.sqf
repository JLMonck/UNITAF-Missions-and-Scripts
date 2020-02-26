//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :setPlayerRole

	Assigns ACE Specialist roles based on unique spawn items
	For Engineers:
		[2] BIS Tool Kit = Advanced Engineer
		[1] Disarming Kit = Combat Engineer
		[0] Neither = Not Specialist
	For Medical:
		[2] Surgical Kit = Squad Medic
		[1] Blood Pack = Combat Lifesaver
		[0] Neither = Not Specialist
		
*/

params [
// Undefined
];

// Reset Role & Check Inventory
_items = items player;
_tierEngineer = false;
_tierMedical = false;

// Is Engineer Check - TO BE CONDENSED INTO FUNCTION
if ("ToolKit" in _items) then {
	_tierEngineer = "Advanced Engineer";
	player setVariable ["ACE_IsEngineer",2,true];
} else {
if ("ACE_DefusalKit" in _items) then {
		_tierEngineer = "Combat Engineer";
		player setVariable ["ACE_IsEngineer",1,true];
	} else { 
		_tierEngineer = " ";
		player setVariable ["ACE_IsEngineer",0,true];
	};
};

// Is Medical Check - TO BE CONDENSED INTO FUNCTION
if ("ACE_surgicalKit" in _items) then {
	_tierMedical = "Squad Medic";
	player setVariable ["ace_medical_medicclass", 2, true];
} else { 
if ("ACE_bloodIV_250" in _items) then {
		_tierMedical = "Combat Lifesaver";
		player setVariable ["ace_medical_medicclass", 1, true];
	} else { 
		_tierMedical = " ";
		player setVariable ["ace_medical_medicclass", 0, true];
	};
};

// Hint Player Status
if (_tierMedical == _tierEngineer) then {
	hint "Rifleman";
} else {
	hint format ["%1 | %2",_tierMedical,_tierEngineer];
};