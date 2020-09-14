setDate [2035, 10, 15, 10, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

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

//Höherer Verbrauch für Hubschrauber
[[

	heli_01,
	heli_02,
	heli_03,
	heli_04,
	heli_05
],8] call Fett_Redd_fnc_FuelConsumption;//14 too much for RHS

[kiste_01, fhz_01, true] call ace_cargo_fnc_loadItem;
[kiste_02, fhz_01, true] call ace_cargo_fnc_loadItem;
[kiste_03, fhz_01, true] call ace_cargo_fnc_loadItem;
[kiste_04, fhz_01, true] call ace_cargo_fnc_loadItem;

//Kisten befüllen
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

// San Mat Braun
[
    [braun_01, braun_02, braun_03],
    [
		["ACE_elasticBandage", 54],
		["ACE_packingBandage", 54],
		["ACE_quikclot", 18],
		["ACE_epinephrine", 20],
		["ACE_adenosine", 20],
		["ACE_morphine", 20],
		["ACE_tourniquet", 20],
		["ACE_salineIV_250", 6],
		["ACE_SurgicalKit", 10]
    ]
] call reim_fnc_crateFiller;

// San Mat Grün
[
    [gruen_01, gruen_02, gruen_03, gruen_04, gruen_05, gruen_06],
    [
		["ACE_fieldDressing", 108],
		["ACE_packingBandage", 18],
		["ACE_tourniquet", 18],
		["ACE_morphine", 9]
    ]
] call reim_fnc_crateFiller;

// San Mat Weiß 1 (bandagen)
[
    [weis_01, weis_02, weis_03],
    [
		["ACE_elasticBandage", 50],
		["ACE_packingBandage", 50],
		["ACE_quikclot", 50],
		["ACE_SurgicalKit", 20],
		["ACE_morphine", 20],
		["ACE_epinephrine", 20],
		["ACE_adenosine", 20],
		["ACE_tourniquet", 20],
		["ACE_bodybag", 5]
    ]
] call reim_fnc_crateFiller;

// San Mat Weiß 2 (iv)
[
    [weis_04, weis_05, weis_06],
    [
		["ACE_salineIV", 25],
		["ACE_salineIV_500", 25],
		["ACE_salineIV_250", 25],
		["ACE_PersonalAidKit", 3]
    ]
] call reim_fnc_crateFiller;

//Inf ammo
[
    [mun_01, mun_02, mun_03, mun_04, mun_05, mun_06],
    [
		["hlc_30rnd_68x43_FMJ", 28],
		["hlc_30rnd_68x43_Tracer", 21],
		["150Rnd_762x51_Box_Tracer", 8],
		["hlc_15Rnd_9x19_B_P226", 9]
    ]
] call reim_fnc_crateFiller;

//Granaten
[
    [grenades_01, grenades_02, grenades_03],
    [
		["SmokeShell", 18],
		["SmokeShellGreen", 9],
		["ACE_M84", 9],
		["HandGrenade", 9],
		["1Rnd_Smoke_Grenade_shell", 15],
		["1Rnd_SmokeRed_Grenade_shell", 15],
		["SmokeShellOrange", 6],
		["SmokeShellBlue", 6],
		["1Rnd_HE_Grenade_shell", 30],
		["ACE_HuntIR_M203", 6]
    ]
] call reim_fnc_crateFiller;

//Pionier bedarf
[
    [blau_01, blau_02],
    [
		["ACE_DefusalKit", 4],
		["ACE_M26_Clacker", 1],
		["ACE_Clacker", 3],
		["ACE_wirecutter", 4],
		["ACE_VMH3", 4],
		["ACE_SpraypaintBlack", 1],
		["ACE_SpraypaintBlue", 1],
		["ACE_SpraypaintGreen", 1],
		["ACE_SpraypaintRed", 1],
		["ACE_EntrenchingTool", 4],
		["DemoCharge_Remote_Mag", 16]
    ]
] call reim_fnc_crateFiller;

//UAVControl
[
    [uav_01],
    [
		["ACE_UAVbattery", 10],
		["ITC_Land_B_AR2i_Packed", 2]
    ]
] call reim_fnc_crateFiller;

//HuntIR
[
    [uav_02],
    [
		["ACE_HuntIR_monitor", 3],
		["ACE_HuntIR_M203", 27]
    ]
] call reim_fnc_crateFiller;

//Launcher
[
    [werfer_01, werfer_02, werfer_03],
    [
		["BWA3_RGW90_Loaded", 3]
    ]
] call reim_fnc_crateFiller;