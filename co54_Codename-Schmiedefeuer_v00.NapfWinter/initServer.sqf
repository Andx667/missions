setDate [1996, 09, 15, 5, 15];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != west) then {						
        _x setSkill ["general", 0.5];
        _x setSkill ["commanding", 0.75];
        _x setSkill ["courage", 0.75];
        _x setSkill ["aimingAccuracy", 0.25];
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
//San
[
    [fhz_01, fhz_02],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

//Mörser 
[
    [fhz_03, fhz_04],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1],
		["I_E_Mortar_01_Weapon_F", 1],
		["I_E_Mortar_01_support_F", 1]
    ]
] call reim_fnc_crateFiller;

[
    [fhz_05],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

//Logistik
[
    [fhz_08,fhz_09, fhz_10, fhz_11],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

//GMW Nachschub
[
    [gmw_01, gmw_02, gmw_03],
    [
		["rnt_gmw_kasten_fake", 6]
    ]
] call reim_fnc_crateFiller;

//AT Nachschub
[
    [werfer_01, werfer_02, werfer_03],
    [
		["BWA3_PzF3_Tandem_Loaded", 4]
    ]
] call reim_fnc_crateFiller;

//Mun Nachschub
[
    [mun_01, mun_02, mun_03, mun_04, mun_05, mun_06, mun_07, mun_08, mun_09, mun_10, mun_11, mun_12,
	mun_13, mun_14, mun_15, mun_16, mun_16, mun_17, mun_18],
    [
		["hlc_30rnd_556x45_Tracers_G36", 10],
		["hlc_30rnd_556x45_EPR_G36", 20],
		["hlc_20rnd_762x51_b_G3", 6],
		["BWA3_DM25", 20],
		["hlc_100Rnd_762x51_M_MG3", 10],
		["1Rnd_HE_Grenade_shell", 8],
		["BWA3_DM51A1", 10]
    ]
] call reim_fnc_crateFiller;

//VBT
[
    [vbt_01, vbt_02, vbt_03, vbt_04, vbt_05, vbt_06],
    [
		["ACE_fieldDressing", 40],
		["ACE_packingBandage", 20],
		["ACE_morphine", 10],
		["ACE_tourniquet", 10]
    ]
] call reim_fnc_crateFiller;

//VBA
[
    [san_01, san_02, san_03, san_04, san_05, san_06], 
    [
		["ACE_fieldDressing", 20],
		["ACE_packingBandage", 20],
		["ACE_elasticBandage", 20],
		["ACE_tourniquet", 10],
		["ACE_morphine", 10],
		["ACE_tourniquet", 20],
		["ACE_salineIV_250", 10],
		["ACE_salineIV_500", 10],
		["ACE_salineIV", 10],
		["ACE_morphine", 20],
		["ACE_epinephrine", 10],
		["ACE_adenosine", 10],
		["ACE_surgicalKit", 10],
		["ACE_personalAidKit", 2]
    ]
] call reim_fnc_crateFiller;

//Milankiste  
[
    [milan_01, milan_02, milan_03],
    [
		["Redd_Milan_Static_Barrel", 1],
		["Redd_Milan_Static_Tripod", 1]
    ]
] call reim_fnc_crateFiller;