setDate [2035, 10, 15, 10, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != west) then {						//alle die nicht independent sind machen:
		_x setBehaviour "SAFE";						//Waffe gesenkt
		// _x setCombatMode "YELLOW";					//Feuerstatus "Gelb" (erwidern Feuer)
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


//Kisten befüllen
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Infantry
[
    [car_01, car_02, car_03],
    [
		["UK3CB_B_Alice_K", 1],
		["Toolkit", 1],
		["ACE_wirecutter", 2]
    ]
] call reim_fnc_crateFiller;

// OPL
[
    [car_04],
    [
		["UK3CB_B_Alice_K", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

// Medic
[
    [car_05],
    [
		["UK3CB_B_Alice_K", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

// Logistik
[
    [car_06, car_07],
    [
		["UK3CB_B_Alice_K", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

// Werfer
[
    [launcher_01, launcher_02, launcher_03],
    [
		["rhs_weap_m72a7", 3]
    ]
] call reim_fnc_crateFiller;

//Ammo
[
    [ammo_01, ammo_02, ammo_03, ammo_04, ammo_05,ammo_06],
    [
		["UK3CB_BAF_556_30Rnd_T", 21],
		["UK3CB_BAF_556_30Rnd", 49],
		["rhs_mag_m67", 18],
		["SmokeShell", 18],
		["SmokeShellGreen", 9],
		["rhs_mag_M441_HE", 24],
		["rhs_mag_m713_Red", 5],
		["rhs_mag_m714_White", 5],
		["UK3CB_M14_20rnd_762x51", 6]
    ]
] call reim_fnc_crateFiller;

//VBT
[
    [san_01, san_02, san_03],
    [
		["ACE_fieldDressing", 100],
		["ACE_morphine", 18],
		["ACE_tourniquet", 18]
    ]
] call reim_fnc_crateFiller;

//VBA
[
    [vba_01, vba_02, vba_03],
    [
		["ACE_surgicalKit", 9],
		["ACE_elasticBandage", 30],
		["ACE_packingBandage", 30],
		["ACE_quikclot", 30],
		["ACE_salineIV", 10],
		["ACE_salineIV_250", 20],
		["ACE_salineIV_500", 15],
		["ACE_morphine", 18],
		["ACE_epinephrine", 18],
		["ACE_adenosine", 18],
		["ACE_tourniquet", 18]
    ]
] call reim_fnc_crateFiller;