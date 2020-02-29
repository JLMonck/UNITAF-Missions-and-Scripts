//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :aceMedicalTrainerInit

Starts aceMedicalTrainer.sqf

medicalTerminal addAction [ 
  "<t color='#161616'>BOOT-UP</t>",
  "scripts\UTF\aceMedicalTrainerInit.sqf", 
  [this], 
  1.5, 
  true, 
  true, 
  "", 
  "true", 
  5 
];

*/

[medicalTerminal,3] call BIS_fnc_dataTerminalAnimate;
sleep 5;

for "_i" from 1 to 4 do {
  medicalTerminal addAction [
    "<t color='#B7DB4C'>SPAWN </t>"
    + str _i +
    "<t color='#B7DB4C'> PATIENTS</t>",
    "scripts\UTF\aceMedicalTrainer.sqf",
    [_i],
    1.5,
    true,
    false,
    "",
    "true",
    5
  ];
};

medicalTerminal addAction [
  "Delete Patients",
  "{
    if ((typeOf _x == 'rhsusf_army_ocp_rifleman') && (!isPlayer _x)) then {
      deleteVehicle _x
    }
  } forEach allUnits"
];

medicalTerminal removeAction 0;