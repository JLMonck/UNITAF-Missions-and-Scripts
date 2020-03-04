//////////////////////////////
/// TELEPORT NETWORK
// UTF TEMPLAR

params [
  //none
];

//if (hasInterface) exitWith {};

/*
// Setup Variables
_terminals = allSimpleObjects ["Land_MultiScreenComputer_01_black_F"];
_nodes = allMissionObjects "VR_Area_01_square_1x1_yellow_F";
_count = count _nodes;

{ // Do the following for all nodes
  // Add TP ations to all nodes
  for "_i" from 0 to _count do {
    this addAction [
      str(_nodes select _i),
      {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _caller setPos getPos _nodes select _x
      },
      [_x],
      1.5,
      true,
      true,
      "",
      "true",
      5
    ];
  };
} forEach _terminals;
*/

_terminals = allMissionObjects "Land_MultiScreenComputer_01_black_F";
_nodes = allMissionObjects "VR_Area_01_square_1x1_yellow_F";
_count = count _nodes;

{
  for "_i" from 0 to _count do {
    this addAction [
      str(_nodes select _i),
      {
        params [
          "_target",
          "_caller",
          "_actionId",
          "_arguments"
        ];
        _caller setPos getPos _arguments
      },
      [_x],
      1.5,
      true,
      true,
      "",
      "true",
      5
    ];
  };
} forEach _terminals;

// TESTING
systemChat str _terminals;
systemChat str _nodes;
systemChat "_____";