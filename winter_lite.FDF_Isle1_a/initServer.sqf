setDate [2003, 09, 15, 4, 00];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != west) then {						//alle die nicht independent sind machen:
		_x setBehaviour "SAFE";						//Waffe gesenkt
		_x setCombatMode "YELLOW";					//Feuerstatus "Gelb" (erwidern Feuer)
		_x setSpeedMode "LIMITED";					//Laufen im "Marsch"
		
		_x setSkill ["general", 0.75];				//1 ist Profi, 0 ist Noob
		_x setSkill ["commanding", 0.75];
		_x setSkill ["courage", 0.75];
		_x setSkill ["aimingAccuracy", 0.5];
		_x setSkill ["aimingShake", 0.35];
		_x setSkill ["aimingSpeed", 0.5];
		_x setSkill ["reloadSpeed", 0.75];
		_x setSkill ["spotDistance", 1];
		_x setSkill ["spotTime", 1];
		_x enableAI "COVER";
		_x enableAI "AUTOCOMBAT";
	};
} forEach allUnits;

//Kisten befüllen skipt laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Fahrzeuge
[
    [fhz_01, fhz_02,fhz_03, fhz_04, fhz_05],
    [
		["CUP_B_ACRPara_m95", 1],
		["Toolkit", 1],
		["BWA3_G82_Hensoldt", 1],
		["BWA3_10Rnd_127x99_G82", 2]
    ]
] call reim_fnc_crateFiller;

//Kisten
[ 
    [kiste_01],
    [
		["CUP_V_CZ_vest18", 6],
		["CUP_V_CZ_vest08", 2],
		["TFAR_rf7800str", 8],
		["CUP_H_CZ_Helmet04", 8],
		["TFAR_anprc152",2],
		["TFAR_microdagr",6],
		["ItemAndroid",2]
    ]
] call reim_fnc_crateFiller;

//Kisten
[ 
    [kiste_02],
    [
		["CUP_arifle_CZ805_A1", 8],
		["CUP_hgun_Duty", 8]
    ]
] call reim_fnc_crateFiller;

//Kisten
[ 
    [kiste_03],
    [
		["CUP_30Rnd_556x45_CZ805", 64],
		["16Rnd_9x21_Mag", 16],
		["HandGrenade", 8],
		["SmokeShellGreen", 8],
		["ACE_M84", 8]
    ]
] call reim_fnc_crateFiller;

//Kisten
[ 
    [kiste_04],
    [
		["ACE_M26_Clacker", 4],
		["ACE_DefusalKit", 4],
		["ACE_VMH3", 4],
		["ACE_SpraypaintRed", 2],
		["ACE_SpraypaintGreen", 2],
		["ACE_SpraypaintBlack", 2],
		["ACE_SpraypaintBlue", 2],
		["DemoCharge_Remote_Mag", 4]
    ]
] call reim_fnc_crateFiller;

acex_fortify_locations pushBack [fhz_06, 10, 10, 0, false];
acex_fortify_locations pushBack [fhz_05, 10, 10, 0, false];

//Setup ACEX Fortify
[
	west, 
	100,
	[
	  ["RoadCone_F", 1],
	  ["FlagMarker_01_F", 1],
	  ["FlagSmall_F", 1],
	  ["Land_Sign_MinesDanger_English_F", 1]
	  ["RoadBarrier_small_F",2],
	  ["RoadBarrier_F",3]
	
	]
] call acex_fortify_fnc_registerObjects;