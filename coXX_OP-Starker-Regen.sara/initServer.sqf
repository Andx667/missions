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

	fhz_11, 
	fhz_10

],8] call Fett_Redd_fnc_FuelConsumption;

//Kisten befüllen
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Boxer
[
    [fhz_01, fhz_02, fhz_03, fhz_04],
    [
		["hlc_30rnd_68x43_MFMJ", 24],
		["HandGrenade", 24],
		["ACE_M84", 24],
		["CUP_sgun_M1014_Entry_vfg", 1],
		["CUP_6Rnd_12Gauge_Pellets_No0_Buck", 10],
		["ACE_TacticalLadder_Pack", 1],
		["CFP_Kitbag_PolygonWoodland", 2],
		["Toolkit", 1],
		["BWA3_PzF3_Tandem_Loaded", 2],
		["ACE_EntrenchingTool", 8],
		["hlc_100Rnd_762x51_M_M60E4", 5],
		["hlc_lmg_mk48mod1", 1]
    ]
] call reim_fnc_crateFiller;

//Mun
[
	[kiste_01, kiste_02, kiste_03, kiste_04],
	[
		["hlc_30rnd_68x43_MFMJ", 24],
		["HandGrenade", 12],
		["ACE_M84", 12],
		["1Rnd_HE_Grenade_shell", 10],
		["hlc_200rnd_556x45_M_SAW", 8]
	]
] call reim_fnc_crateFiller;

//Werfer
[
	[kiste_05, kiste_06],
	[
		["BWA3_PzF3_Tandem_Loaded", 2]
	]
] call reim_fnc_crateFiller;

//VBT
[
	[san_01, san_02],
	[
		["ACE_fieldDressing", 24],
		["ACE_packingBandage", 12],
		["ACE_tourniquet", 12],
		["ACE_morphine", 12],
		["ACE_salineIV_250", 12]
	]
] call reim_fnc_crateFiller;