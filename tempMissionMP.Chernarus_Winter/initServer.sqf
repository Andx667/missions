//Uhrzeit
setDate [2030, 4, 4, 6, 0];

//Kisten + Fhzbefüll Skript laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Fahrzeuge befüllen
//Inf 1-5, 6 BAT, 7, Log, 8 Heli
[
	[fhz_01, fhz_02, fhz_03, fhz_04, fhz_05, fhz_06, fhz_07, fhz_08],
	[
		["UK3CB_BAF_B_Kitbag_Arctic", 1],
		["UK3CB_BAF_762_100Rnd_T", 5], //= 500 Schuss fürs MG am Fhz
		["Toolkit", 1]
	]
] call reim_fnc_crateFiller;


//Kisten befüllen
//Mun Inf
[
	[mun_01, mun_02, mun_03, mun_04, mun_05, mun_06, mun_07, mun_08, mun_09],
	[
		["UK3CB_BAF_556_200Rnd_T", 4],
		["UK3CB_BAF_556_30Rnd", 32],
		["UK3CB_BAF_556_30Rnd_T", 16],
		["UK3CB_BAF_762_L42A1_20Rnd_T", 12]
	]
] call reim_fnc_crateFiller;

//Mun MMG
[
	[mmg_01, mmg_02, mmg_03],
	[
		["UK3CB_BAF_762_100Rnd_T", 10]
	]
] call reim_fnc_crateFiller;

//Granaten
//Pio 
//VBT
//VBA
