/*
*   From Database to Arma 3 Unit
*/

_Player = _this select 0;
_playerUID = _this select 1;
_playerName = format ["%1",(name _Player)];
_sql_res = _this select 2;
_sql_res2 = _this select 3;

diag_log format ["PDB - Loading patch for player %1", _playerName];

_sql_res = _sql_res splitString "[,]";
_playerRank = (_sql_res select 1);

[[ _Player, format["%1", call compile (_playerRank)]], "BIS_fnc_setUnitInsignia", true, true, true] call BIS_fnc_MP;
[_Player, format["%1", call compile (_playerRank)], true, true] remoteExecCall ["BIS_fnc_setUnitInsignia", _Player];

_Player setVariable ["loaded", 1, true];
diag_log format ["PDB - Loading patch for player %1 complete", _playerName];