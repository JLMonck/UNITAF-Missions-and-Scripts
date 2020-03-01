[
	// Displays
	[displayMain],
	// Controllers
	[controllerMain],
	
	[// Images (+Index)
		"img\base\NSF.jpg",
		"img\base\UTFN.jpg"
	],
	
	[// Slideshow Menu in Order of Index
		"NO SIGNAL",
		"LOGIN"
	], 0, "Default"

] call ace_slideshow_fnc_createSlideshow;
sleep 1;

[
	// Displays
	[displayMain],
	// Controllers
	[controllerMain],
	
	[// Images (+Index)
		"img\base\course\medical\utf-medicalA.jpg",
		"img\base\course\medical\utf-medicalB.jpg"
	],
	
	[// Slideshow Menu in Order of Index
		"Bandages",
		"Casualties"
	], 0, "Medical"

] call ace_slideshow_fnc_createSlideshow;