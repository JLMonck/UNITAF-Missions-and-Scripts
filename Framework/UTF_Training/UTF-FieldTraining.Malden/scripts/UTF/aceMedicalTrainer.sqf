//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :aceMedicalTrainer

Creates a unit with random injuries.
this addAction [
  "Create Patient",
  "scripts\UTF\aceMedicalTrainer.sqf",
  [patA]
];
this addAction [
  "Delete Patients",
  "{
    if ((typeOf _x == 'rhsusf_army_ocp_rifleman') && (!isPlayer _x)) then {
      deleteVehicle _x
    }
  } forEach allUnits"
];

*/

params [
 // none
];

// Delete Unit
{
  if ((typeOf _x == 'rhsusf_army_ocp_rifleman') && (!isPlayer _x)) then {
    deleteVehicle _x
  }
} forEach allUnits;

// Start Terminal Animation
[medicalTerminal,3] call BIS_fnc_dataTerminalAnimate;
sleep 5;

// Create Unit
_groupA=createGroup west;
'rhsusf_army_ocp_rifleman' createUnit [
  getmarkerPos 'medicalZone', _groupA,'patA=this; dostop patA'
];

// Apply Injuries
[patA, selectRandom[0.3,0.5,0.7,0.9], "Head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, selectRandom[0.3,0.5,0.7,0.9], "Body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, selectRandom[0.3,0.5,0.7,0.9], "LeftArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, selectRandom[0.3,0.5,0.7,0.9], "RightArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, selectRandom[0.3,0.5,0.7,0.9], "LeftLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, selectRandom[0.3,0.5,0.7,0.9], "RightLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[patA, true, 600] call ace_medical_fnc_setUnconscious;

// End Terminal Animation
[medicalTerminal,0] call BIS_fnc_dataTerminalAnimate;
hint 'Patient Ready';