///////////////////////////////
/// For Testing Purposes

params [
	"Select 0",
	"Select 1",
	"Select 2",
	"Select 3"
];

player addAction
[
	"Select 0",
	{hint str(_this select 0)}
];
player addAction
[
	"Select 1",
	{hint str(_this select 1)}
];
player addAction
[
	"Select 2",
	{hint str(_this select 2)}
];
player addAction
[
	"Select 3",
	{hint str(_this select 3)}
];