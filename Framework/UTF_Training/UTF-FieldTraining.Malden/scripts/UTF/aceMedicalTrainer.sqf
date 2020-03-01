//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :aceMedicalTrainer

Creates a unit with random injuries.
Played from aceMedicalTrainerInit.sqf

*/

params [
 "_target",
 "_caller",
 "_actionId",
 "_arguments"
];

// Start Terminal Animation
hint "|....";
sleep 0.5;
hint "||...";
sleep 0.1;

// Create Unit
_patSpot = getmarkerPos 'medicalZone';
groups = [
  "_groupA","_groupB","_groupC","_groupD"
];
_pats = [
  "_pat1","_pat2","_pat3","_pat4"
];
_patX = _patSpot select 0;
_patY = _patSpot select 1;

// Remove inverse amount of total group size based on desired amount.
switch (_this select 3 select 0) do { 
    case 1: {groups deleteRange [1, 3]};
	  case 2: {groups deleteRange [2, 3]};
    case 3: {groups deleteAt 3};
    case 4: {};
};

{ // Spawn Units
  _x = createGroup west;
  _spawn = [
    _patX + (selectRandom[-2.5,-2,-1,0,1,2,2.5]),
    _patY + (selectRandom[-2.5,-2,-1,0,1,2,2.5])
  ];
  'rhsusf_army_ocp_rifleman' createUnit [
    _spawn,
    _x,
    'pat=this;'
  ];
  pat setDir random [0, 180, 360];
  hint "|||..";
  sleep 0.4;

  // Apply Injuries
  for "_i" from 0 to 25 do {
    [
      pat,
      selectRandom [0.5,0.8,1.0],
      selectRandom ["Head","Body","LeftArm","RightArm","LeftLeg","RightLeg"],
      selectRandom ["stab","bullet","falling"]
    ] call ace_medical_fnc_addDamageToUnit;
    [pat, true, 600] call ace_medical_fnc_setUnconscious;
  };

  // Remove Gear
  sleep 0.5;
  removeGoggles pat;
  removeBackpack pat;
  removeAllWeapons pat;
  removeAllAssignedItems pat;
  hint "||||.";
  sleep 0.1;
  
} forEach groups;
hint "|||||";
sleep 0.2;
hint 'Patient(s) Ready';