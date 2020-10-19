setDate [1998, 10, 15, 10, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

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

//Kisten

//Inf Munition
[
    [kiste_01, kiste_02, kiste_03, kiste_04, kiste_05],
    [
		["hlc_20rnd_762x51_T_G3", 14],
		["hlc_20rnd_762x51_B_G3", 42],
		["BWA3_DM51A1", 16],
		["BWA3_DM25", 16],
		["BWA3_DM32_Green", 4],
		["DemoCharge_Remote_Mag", 2],
		["SatchelCharge_Remote_Mag", 1]
    ]
] call reim_fnc_crateFiller;

//MG3 Zeug
[
    [kiste_06, kiste_07, kiste_08],
    [
		["rnt_mg3_kasten_fake", 21]
    ]
] call reim_fnc_crateFiller;

//Werfer
[
    [werfer_01, werfer_02, werfer_03],
    [
		["BWA3_PzF3_Tandem_Loaded", 2]
    ]
] call reim_fnc_crateFiller;

//VBT
[
    [san_01, san_02, san_03,san_04],
    [
		["ACE_fieldDressing", 48],
		["ACE_packingBandage", 24],
		["ACE_morphine", 8],
		["ACE_tourniquet", 8]
    ]
] call reim_fnc_crateFiller;

//VBA
[
    [san_05, san_07],
    [
		["ACE_elasticBandage", 40],
		["ACE_packingBandage", 40],
		["ACE_tourniquet", 16],
		["ACE_morphine", 12],
		["ACE_adenosine", 12],
		["ACE_epinephrine", 12],
		["ACE_SurgicalKit", 20]
    ]
] call reim_fnc_crateFiller;

//IV
[
    [san_06, san_08],
    [
		["ACE_salineIV_250", 16],
		["ACE_salineIV_500", 16],
		["ACE_salineIV", 8],
		["ACE_Bodybag", 10]
    ]
] call reim_fnc_crateFiller;

//Fahrzeuge
//Wiesel
[
    [fhz_01, fhz_03],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1],
		["TFAR_rt1523g_big_bwmod", 1],
		["ACE_EntrenchingTool", 2]
    ]
] call reim_fnc_crateFiller;

//Füchse
[
    [fhz_02, fhz_04, fhz_05, fhz_06],
    [
		["rnt_mg3_static_barell", 1],
		["rnt_mg3_static_tripod", 1],
		["rnt_mg3_kasten_fake", 7],
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1],
		["ACE_TacticalLadder_Pack", 1],
		["TFAR_rt1523g_big_bwmod", 1],
		["ACE_EntrenchingTool", 8],
		["ACE_wirecutter", 2]
    ]
] call reim_fnc_crateFiller;


//San Fuchs
[
    [fhz_07],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

//Logistik
[
    [fhz_08],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;