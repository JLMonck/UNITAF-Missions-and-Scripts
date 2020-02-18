//////////////////////////////
/// UNITED TASK FORCE
// Author: TEMPLAR
/* Info:

	Adds event handler args to
	a temporary log until the
	player's reload event
	handler is raised

*/
//////////////////////////////

params [
	"_unit",
	"_weapon",
	"_muzzle",
	"_mode",
	"_ammo",
	"_magazine",
	"_projectile"
];

// Define Event Name & Count Rounds
_eventType = "ace_firedPlayer";
roundsFired = roundsFired + 1;

// Define Stats Array
shootingStats = [
	playerUID,
	_eventType,
	roundsFired,
	_weapon,
	_muzzle,
	_mode,
	_ammo,
	_magazine
];