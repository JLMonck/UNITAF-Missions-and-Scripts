/*
	Config_SCFramework.SQF
	
	Configuration options for BDC's Server-Client Framework
	
	Written for CO18 Resistance Plus by ^bdc	May 2017
	Re-written for dedicated server missions and Zeus compatibility		Jan/Feb 2018
*/

// Configurable global variables
	// RPT Logging
BDC_SCFramework_LoggingFreq = 300; // Timer, in seconds, that a server-side log file is created displaying active/cached AI as well as FPS (0 to disable) (default: 300 for once every 5 minutes if desired)
BDC_SCFramework_LoggingDelay = 60; // Delay, in seconds, prior to starting logging (default: 60)
BDC_SCFramework_DetailedLogging = false; // If enabled, RPT logging will occur from every eventhandler and function called (Used primarily for testing and initial setup) (default: false)

	// Miscellaneous
BDC_SCFramework_GroupManagerEnable = true; // Enable/disable automaticm, periodic empty group deletion function (default: true, unless another function is already setup in mission to do this)
BDC_SCFramework_ClientRetainVehOwnership = true; // If true, when player exits a vehicle, as the last person in it, will retain vehicle ownership (via EH called from client to server)

	// Admin's On-The-Fly Server/HC FPS Report
BDC_SCFramework_ServerFPSReport_KeyCode = 0x3B; // raw dikCode keystroke to enable server FPS report (Default: 0x3B for the F1 key)
BDC_SCFramework_ServerFPSReport_AdminUIDList = [ // List of player UID's for admins in string form (used only for the Server FPS Report)
	// "76xxxxxx"   UID example
	"76561198064836936","76561198054271928"
	];
BDC_SCFramework_ServerFPSReport_ModulesNames = [ // Short Names/Acronyms (in string format) of AI modules the server and each successive headless client control, starting from 1 (used purely for display purposes in the ServerFPSReport and relates to specificAITable only)
	// Order goes: Server,HC1,HC2,HC3,HC4,HC5 -- If using no SpecificAITable, then set all 6 to be blank to prevent a display error, ex: "","","","","",""
	// "HQ AI","Marker Vehicles","","","",""   // examples, if using only two headless clients and moving specific AI to each one
	"","","","","",""
	];

	// Headless Client Offloading
BDC_SCFramework_HCOffloading_Enable = true; // Master enable/disable flag for having the server automatically offload AI groups (either automatically or specifically) to headless client(s) (default: true, if running headless clients)
BDC_SCFramework_HCOffloading_StartDelay = 30; // Start delay in seconds before starting (to allow all HC's to connect and collect ID's) (default: 30 to 60 depending upon mission complexity)
BDC_SCFramework_HCOffloading_Frequency = 5; // Timer, in seconds, that server checks AI groups for possible offloading (default: 5)
BDC_SCFramework_HCOffloading_GroupTimerMinimum = 10; // Timer in seconds that a group must exist prior to any offloading occurring (default: 5 to 10 - to allow for unit "painting", loadouts, and skill-setting scripts to finish, if applicable) 
BDC_SCFramework_HCOffloading_SpecificAITable_Enable = false; // Enable/disable pre-configured AI groups to move to specific headless clients per AITable below (used for manual load balancing if running a mission that has several AI-creating scripts or modules)
BDC_SCFramework_HCOffloading_SpecificAITable = [ // List of Specific AI groups (flagged by specific variables) that offload to specific headless clients (by number; not by name) - (group MUST be spawned in by Fnc_SCFramework_CreateGroup)
	// ["ModuleName (txt field for RPT log reference)","Specific boolean variable name attached to Group during creation",HeadlessClientID assigned by SCFramework (1-5)]
	//["AI Module","AIModule_SpawnedGroup",2] - Examples listed below
	//["HQ AI","HQAI",1], // Theoretical AI at HQ, created by Fnc_SCFramework_CreateGroup, with variable "HQAI" attached to flag all related groups, transferred to HC #1
	//["Enemy AI","EnemyAI",2] 
	];
	
	// Headless Client Offloading (Automatic)
BDC_SCFramework_HCOffloading_AutomaticOffloading_Enable = true; // Enable/disable automatic offloading, irrespective of specific configured groups, to be offloaded to headless clients - Note: Automatic offloading occurs AFTER specific offloading has run
BDC_SCFramework_HCOffloading_AutomaticOffLoading_TransferZeusOperatorAI_Enable = true; // Enable/disable the automatic, timed transfer of Zeus-spawned in AI groups (player-side, locally owned AI that are NOT part of the player group) ownership to server and putting them into the HC offloading pool (default: true)
BDC_SCFramework_HCOffloading_AutomaticOffLoading_TransferZeusOperatorAI_Frequency = 30; // Number of seconds client-side monitor checks for locally-owned AI (presumably spawned by Zeus Op) (default: 60 to 300 to allow time for waypoints and the like to be made)
BDC_SCFramework_HCOffloading_AutomaticOffLoading_TransferZeusOperatorAI_FlagOffloadedGroups = true; // If enabled, any initially-local, Zeus-owned groups (presumably spawned by Zeus Op) can only be automatically transferred to server once; if forcibly moved back to a Zeus op, they will be flagged unable to be automatically offloaded again, therefore will have to be moved manually to the server via addon (Ares Zeus Extension compabiilty)
BDC_SCFramework_HCOffloading_AutomaticOffLoading_TransferZeusOperatorAI_KeyCode = 0x3C; // raw dikCode keystroke to disable/enable on-the-fly offloading of locally-owned, Zeus created AI (temporarily shut off offloading to server) (default: 0x3C for the F2 key)
BDC_SCFramework_HCOffloading_AutomaticOffloading_MaxAIPerHeadlessClient = 100; // Target number of maximum AI we want on each headless client (when this number is met or slightly exceeded, routine seeks to offloading AI to next HC in the list) (there is no default for this; this must be tested for performance on each setup although I recommend 100 to start)

diag_log format["Config_SCFramework.SQF: Global vars loaded."];