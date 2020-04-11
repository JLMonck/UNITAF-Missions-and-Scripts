/*
*   From Database to Arma 3 Unit
*/

_Player = _this select 0;
_playerUID = _this select 1;
_playerName = format ["%1",(name _Player)];
_sql_res = _this select 2;
_sql_res2 = _this select 3;

diag_log _sql_res;

_playerRank = "insignia45";
_playerAdmin = "0";
diag_log format ["PDB - Loading profile for player %1", _playerName];

if ((count _sql_res) > 35) then {

    _sql_res = _sql_res splitString "[,]";
    _playerRank = (_sql_res select 1);
	
    _playerPos = (_sql_res select 3);
	_Player SetPos getMarkerPos call compile (_playerPos);
    
    removeAllWeapons _Player;
    removeGoggles _Player;
    removeHeadgear _Player;
    removeVest _Player;
    removeUniform _Player;
    removeAllAssignedItems _Player;
    removeBackpack _Player;
    _playerInventory = _sql_res2 select 1 select 0 select 0;
	
	if(!isNil {_playerInventory}) then {
		if((count _playerInventory) > 5) then {
			diag_log format ["PDB - Setting inventory for player %1", _playerName];
			_Player setUnitLoadout _playerInventory;
			diag_log format ["PDB - Setting inventory for player %1 complete", _playerName];
		};
	};

	_medicLevel = (_sql_res select 5);
	_engineerLevel = (_sql_res select 6);
	
	_Player setVariable ["ACE_IsEngineer", call compile (_engineerLevel),true];
	_Player setVariable ["ace_medical_medicclass", call compile (_medicLevel), true];

};

[[ _Player, format["%1", call compile (_playerRank)]], "BIS_fnc_setUnitInsignia", true, true, true] call BIS_fnc_MP;
[_Player, format["%1", call compile (_playerRank)], true, true] remoteExecCall ["BIS_fnc_setUnitInsignia", _Player];







_Player setVariable ["loaded", 1, true];
diag_log format ["PDB - Loading profile for player %1 complete", _playerName];