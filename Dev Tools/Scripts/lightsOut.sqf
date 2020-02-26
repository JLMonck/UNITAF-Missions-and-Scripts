//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* : lightsOut

  Turns off lights in a given area
  Turning off is acheived by damanging the light

  off: 0 = [0.95] execVM "lightsOut.sqf";
  on: 0 = [0] execVM "lights.sqf";

*/

params [
  //
];

_range = 500; // Range outage should extend from marker
_state = _this select 0;
_types = ["Lamps_Base_F", "PowerLines_base_F","Land_PowerPoleWooden_L_F"];

for [
  {_i = 0},
  {_i < (count _types)},
  {_i = _i+1}
] do {
  // Outage coverage determined by marker location
  _lamps = getMarkerPos "lightsOutSource" nearObjects [_types select _i, _range];
  sleep 1;
  {_x setDamage _state} forEach _lamps;
};