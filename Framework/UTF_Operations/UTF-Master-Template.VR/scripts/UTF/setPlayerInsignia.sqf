//////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
//////////////////////
/* :setPlayerInsignia

    Assigns an arm patch based on rank prefix or role type.
    In order of priority: DefaultPatch < RankPatch < SpecialPatch
    
*/

params [
// Undefined
];

// Find player name & grab prefix
_name = name player;
_fullAccess = false;
hint format ['Welcome %1',_name];
_prefix = (_name splitString " ") select 0; 

// Cross ckeck user prefix with avaliable rank prefixes
switch (_prefix) do { 
  // Enlisted Ranks
  case "Rec":    { [player, "insignia45"] call BIS_fnc_setUnitInsignia; };
  case "Pvt":    { [player, "insignia45"] call BIS_fnc_setUnitInsignia; };
  case "PFC":    { [player, "insignia46"] call BIS_fnc_setUnitInsignia; };
  case "Cpl":    { [player, "insignia47"] call BIS_fnc_setUnitInsignia; };
  case "SP1":    { [player, "insignia48"] call BIS_fnc_setUnitInsignia; };
  case "Sgt":    { [player, "insignia49"] call BIS_fnc_setUnitInsignia; };
  case "SSgt":   { [player, "insignia50"] call BIS_fnc_setUnitInsignia; };
  case "SFC":    { [player, "insignia51"] call BIS_fnc_setUnitInsignia; };
  case "1stSgt": { [player, "insignia52"] call BIS_fnc_setUnitInsignia; };
  case "MstSgt": { [player, "insignia53"] call BIS_fnc_setUnitInsignia; };
  // Officer Ranks
  case "2Lt":  { [player, "insignia207"] call BIS_fnc_setUnitInsignia; _fullAccess = true};
  case "1Lt":  { [player, "insignia207"] call BIS_fnc_setUnitInsignia; _fullAccess = true};
  case "Capt": { [player, "insignia208"] call BIS_fnc_setUnitInsignia; _fullAccess = true};
  case "Maj":  { [player, "insignia209"] call BIS_fnc_setUnitInsignia; _fullAccess = true};
  // Default/Invalid Prefix
  default {
    [player, "insignia45"] call BIS_fnc_setUnitInsignia;
    systemChat format [
      "%1 is using an invalid rank prefix of '%2'"
      ,_name,_prefix
    ];
  };
};

// Give Medic Patch - Not Enabled
if ([player] call ace_common_fnc_isMedic) then {
  [player, "insignia1"] call BIS_fnc_setUnitInsignia;
};