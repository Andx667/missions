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
		["Toolkit", 1]
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
    [car_06],
    [
		["UK3CB_B_Alice_K", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;