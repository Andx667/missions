setDate [2035, 6, 12, 16, 00];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != west) then {						//alle die nicht west sind machen:
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


//Setup ACEX Fortify
[
	west, 
	50,
	[
	  ["rhs_laneMarker",1],
	  ["Land_Sign_MinesDanger_English_F",1],
	  ["FlagMarker_01_F",1]
	]
] call acex_fortify_fnc_registerObjects;

//bauen nur um 50m um den Truck
acex_fortify_locations pushBack [truck01, 50, 50, 0, false];

//für Medicfacility am Truck
medicHelipad attachTo [medicTruck, [0,-3,0]];