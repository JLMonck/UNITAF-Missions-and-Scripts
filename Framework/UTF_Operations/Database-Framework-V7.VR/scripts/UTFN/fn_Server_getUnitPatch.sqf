/*
*	From Database to Arma 3 Unit
*/

_OperationID = 125;
params ["_player"];
waitUntil {isPlayer _Player};
sleep 1;

_playerUID = format ["%1",(getPlayerUID _Player)];
_sql_res = "extDB3" callExtension format["0:FETCHDATA:SELECT playerRank,playerAdmin,playerPos,playerDir,is_medic_level,is_engineer_level FROM operation_players WHERE armauid = '%1' AND operation = '%2' GROUP BY armauid",_playerUID,_OperationID];
_sql_res2 = call compile ("extDB3" callExtension format["0:FETCHDATA:SELECT opl.inventory as playerInv FROM operation_layout ol LEFT JOIN roster_view rv ON rv.userid = ol.user LEFT JOIN operation_positions_loadouts opl ON opl.position = ol.position WHERE ol.operation = '%2' AND rv.armauid = '%1'",_playerUID,_OperationID]);

[ [[_Player,_playerUID,_sql_res,_sql_res2],"scripts\UTFN\fn_Client_getUnitPatch.sqf"],"BIS_fnc_execVM",false,false ] call BIS_fnc_MP;