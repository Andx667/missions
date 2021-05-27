//Uhrzeit
setDate [2030, 4, 4, 6, 0];

//Kisten + Fhzbefüll Skript laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Setup ACEX Fortify
[
	west, 
	25,
	[
	  ["rhs_laneMarker",1],
	  ["Land_Sign_MinesDanger_English_F",1],
	  ["FlagMarker_01_F",1]
	]
] call acex_fortify_fnc_registerObjects;

//fhz füllen
// player addWeapon "UK3CB_BAF_Tripod";

//Britische
[
	[fhz_01,fhz_02,fhz_03,fhz_04],
	[
		["B_AssaultPack_mcamo", 1],
		["UK3CB_BAF_762_100Rnd_T", 9], //= 500 Schuss fürs MG am Fhz
		["UK3CB_BAF_127_100Rnd", 9],
		["Toolkit", 1],
		["UK3CB_BAF_762_L42A1_20Rnd_T", 16],
		["UK3CB_BAF_556_30Rnd", 32],
		["UK3CB_BAF_556_30Rnd_T", 16],
		["rhs_mag_m67", 16],
		["ACE_M84", 16],
		["UK3CB_BAF_SmokeShellGreen", 8],
		["UK3CB_BAF_SmokeShell", 16],
		["UK3CB_BAF_AT4_CS_AP_Launcher", 3],
		["ACE_fieldDressing", 30],
		["ACE_packingBandage", 9],
		["UK3CB_BAF_9_17Rnd", 16],
		["ACE_tourniquet", 8],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["UK3CB_BAF_12G_Pellets", 12],
		["UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", 30],
		["UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell", 10]
	]
] call reim_fnc_crateFiller;

//EOD 

//BAT 

//HELI 
[
	[heli_01,heli_02,heli_03,truck_01, truck_02, truck_03],
	[
		["B_AssaultPack_mcamo", 1],
		["Toolkit", 1]
	]
] call reim_fnc_crateFiller;

