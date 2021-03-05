setDate [2022, 6, 12, 3, 00];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != west) then {						//alle die nicht independent sind machen:
		_x setBehaviour "SAFE";						//Waffe gesenkt
		_x setCombatMode "WHITE";					//Feuerstatus "Gelb" (erwidern Feuer)
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

//Setup ACEX Fortify
[
	west, 
	200,
	[
	  ["EFM_wood_wall_2m_single", 1],
	  ["Land_BagFence_Short_F", 1],
	  ["Land_Net_Fence_4m_F", 1],
	  ["Land_Shoot_House_Wall_Long_F", 1],
	  ["Land_Plank_01_4m_F", 1],
	  ["Land_Rampart_F", 10]
	]
] call acex_fortify_fnc_registerObjects;

//Fahrzeuge
//Boxer (5 is ein Eagle, wird ein Dingo)
[
    [boxer_01, boxer_02, boxer_03, boxer_04, boxer_05,
	log_01, log_02, log_03, log_04,
	san_01, san_02, san_03,
	ersatz_01, ersatz_02, ersatz_03,
	gepard_01],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1]
    ]
] call reim_fnc_crateFiller;

//PioFuchs
[
    [truck_01],
    [
		["BWA3_PatrolPack_Fleck", 1],
		["Toolkit", 1],
		["BWA3_DM31AT_Mag", 48]
    ]
] call reim_fnc_crateFiller;

//Nachschub
//Inf Mun
[
    [mun_01, mun_02, mun_03, mun_04, mun_05, mun_06, mun_07, mun_08],
    [
		["BWA3_200Rnd_556x45", 8],
		["BWA3_30Rnd_556x45_G36_Tracer", 16],
		["BWA3_30Rnd_556x45_G36_AP", 32],
		["BWA3_DM32_Green", 8],
		["BWA3_DM25", 16],
		["BWA3_DM51A1", 16],
		["1Rnd_HE_Grenade_shell", 24]
    ]
] call reim_fnc_crateFiller;

//Minen
[
    [pio_01, pio_02, pio_03, pio_04],
	[
		["BWA3_DM31AT_Mag", 12]
    ]
] call reim_fnc_crateFiller;


//VBT
[
    [vbt_01, vbt_02, vbt_03, vbt_04],
	[
		["ACE_fieldDressing", 96],
		["ACE_packingBandage", 24],
		["ACE_tourniquet", 16],
		["ACE_morphine", 8]
    ]
] call reim_fnc_crateFiller;

//VBA
[
    [vba_01, vba_02, vba_03, vba_04, vba_05],
	[
		["ACE_fieldDressing", 96],
		["ACE_packingBandage", 24],
		["ACE_tourniquet", 16],
		["ACE_morphine", 8]
    ]
] call reim_fnc_crateFiller;

//Nachschub Gold
[
    [gold_01],
	[
		["BWA3_10Rnd_762x51_G28_SD", 16],
		["BWA3_10Rnd_762x51_G28_AP", 16]
    ]
] call reim_fnc_crateFiller;

