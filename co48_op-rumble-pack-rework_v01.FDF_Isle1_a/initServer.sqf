setDate [2035, 9, 25, 5, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für LDF "west" in "resistance" ändern
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
		_x setSkill ["spotDistance", 0.8];
		_x setSkill ["spotTime", 0.5];
		_x enableAI "COVER";
		_x enableAI "AUTOCOMBAT";
	};
} forEach allUnits;

//Höherer Verbrauch für Hubschrauber (Viper)
[
	[
		heli_01,
		heli_02
	],
	14
] call Fett_Redd_fnc_FuelConsumption;

//Höherer Verbrauch für Hubschrauber (Log/MedEvac)
[
	[
		heli_03,
		heli_04,
		heli_05,
		heli_06
	],
	8
] call Fett_Redd_fnc_FuelConsumption;
