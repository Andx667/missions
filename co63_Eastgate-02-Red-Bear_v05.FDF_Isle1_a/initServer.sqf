setDate [2023, 10, 25, 4, 00];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{
	if (side _x != west) then {						//alle die nicht BLUFOR sind machen:
				
		_x setSkill ["general", 0.6];				//1 ist Profi, 0 ist Noob
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

_vehicles = [heli_veh_1, heli_veh_4];

{
    _x setVariable ["tf_hasRadio", true, true];
    _x setVariable ["TF_RadioType", "TFAR_anarc210", true];
} forEach _vehicles;

/*
	author = Reimchen
	description = Füllt Kisten 
*/

Reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";	
	
// Beladungssystem f. Kisten BW
[
	[
	BW_muni_01,BW_muni_02,BW_muni_03,BW_muni_04
	],
	[
	["BWA3_30Rnd_556x45_G36", 25],
	["BWA3_30Rnd_556x45_G36_Tracer", 10],
	["BWA3_15Rnd_9x19_P8", 5],
	["1Rnd_HE_Grenade_shell", 20],
	["BWA3_DM51A1", 20],
	["BWA3_DM25", 10],
	["BWA3_DM32_Red", 5],
	["BWA3_DM32_Green", 5],
	["BWA3_200Rnd_556x45", 5],
	["BWA3_200Rnd_556x45_Tracer", 5],
	["ACE_SpareBarrel", 2]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Kisten Fin
[
	[
	FIN_muni_01,FIN_muni_02
	],
	[
	["30Rnd_762x39_AK12_Mag_F", 25],
	["30Rnd_762x39_AK12_Mag_Tracer_F", 10],
	["CUP_17Rnd_9x19_glock17", 5],
	["1Rnd_HE_Grenade_shell", 20],
	["HandGrenade", 20],
	["SmokeShell", 10],
	["SmokeShellRed", 4],
	["SmokeShellGreen", 4],
	["75rnd_762x39_AK12_Mag_F", 7],
	["75Rnd_762x39_AK12_Mag_Tracer_F", 4],
	["ACE_10Rnd_762x54_Tracer_mag", 10],
	["CUP_10Rnd_762x54_SVD_M", 5],
	["ACE_SpareBarrel", 1]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Kisten Ukraine
[
	[
	ukrbox_01,ukrbox_02
	],
	[
	["CUP_30Rnd_545x39_AK_M", 5],
	["CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", 10],
	["10Rnd_9x21_Mag", 5],
	["CUP_HandGrenade_RGD5", 20],
	["SmokeShell", 10],
	["SmokeShellGreen", 5],
	["SmokeShellRed", 5],
	["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 5],
	["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10],
	["ACE_SpareBarrel", 2]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Pionierkiste
[
	[
	piobox_01
	],
	[
	["CUP_Mine_M", 4],
	["BWA3_DM31AT_Mag", 4],
	["DemoCharge_Remote_Mag", 4],
	["ACE_Clacker", 4]
	]
] call Reim_fnc_crateFiller;	
	
// Beladungssystem f. Sani- Logistik und Piloten
[
	[
	nach_muni_01,nach_muni_02
	],
	[
	["hlc_30Rnd_9x19_B_MP5", 25],
	["BWA3_DM51A1", 10],
	["BWA3_DM25", 5],
	["BWA3_DM32_Purple", 5],
	["BWA3_DM32_Green", 5],
	["BWA3_40Rnd_46x30_MP7", 5]
	]
] call Reim_fnc_crateFiller;
	
// Beladungssystem f. Granaten
[
	[
	grana_muni_01,grana_muni_02
	],
	[
	["1Rnd_HE_Grenade_shell", 50],
	["1Rnd_Smoke_Grenade_shell", 20],
	["1Rnd_SmokeRed_Grenade_shell", 20],
	["1Rnd_SmokeGreen_Grenade_shell", 20],
	["CUP_1Rnd_SMOKE_GP25_M", 20],
	["CUP_1Rnd_SmokeRed_GP25_M", 20]
	]
] call Reim_fnc_crateFiller;	
	
// Beladungssystem f. Werfer BW
[
	[
	BW_werfer_01,BW_werfer_02
	],
	[
	["MRAWS_HEAT_F", 5],
	["MRAWS_HE_F", 5]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Werfer FIN
[
	[
	FIN_werfer_01,FIN_werfer_02
	],
	[
	["CUP_SMAW_HEAA_M", 4],
	["CUP_SMAW_NE_M", 2],
	["CUP_SMAW_HEDP_M", 4]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Ausrüstung
[
	[
	ausrustung_01
	],
	[
	["TTT_Helmet_Buzzard", 5],
	["TTT_Helmet_Eagle", 5],
	["ACE_rope18", 4],
	["TFAR_rt1523g_big_rhs", 5]
	]
] call Reim_fnc_crateFiller;


// Beladungssystem f. Falke
[
	[
	falke_muni_01,falke_muni_02
	],
	[
	["BWA3_30Rnd_556x45_G36_AP", 10],
	["BWA3_30Rnd_556x45_G36_Tracer", 10],
	["BWA3_30Rnd_556x45_G36_Tracer_Dim", 10],
	["BWA3_1Rnd_Flare_Multistar_Green", 6],
	["BWA3_1Rnd_Flare_Multistar_Red", 6],
	["BWA3_1Rnd_Flare_Illum", 6],
	["BWA3_DM32_Green", 3],
	["BWA3_DM32_Red", 3],
	["BWA3_DM32_Purple", 3],
	["BWA3_DM25", 3],
	["Laserbatteries", 3]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Truppen-Sani Kiste
[
	[
	tsbox_01,tsbox_02,tsbox_03,tsbox_04,tsbox_05
	],
	[
	["ACE_fieldDressing", 50],
	["ACE_packingBandage", 20],
	["ACE_tourniquet", 10]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Sani-Kisten
[
	[
	sbox_01,sbox_02,sbox_03,sbox_04
	],
	[
	["ACE_fieldDressing", 50],
	["ACE_elasticBandage", 40],
	["ACE_packingBandage", 30],
	["ACE_quikclot", 30],
	["ACE_tourniquet", 20],
	["ACE_bodyBag", 5],
	["ACE_salineIV", 10],
	["ACE_salineIV_500", 15],
	["ACE_salineIV_250", 20],
	["ACE_morphine", 15],
	["ACE_epinephrine", 15],
	["ACE_adenosine", 15],
	["ACE_surgicalKit", 20],
	["ACE_personalAidKit", 1]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Fahrzeug mit Rucksack und Werkzeug
[
	[
	lkw_01,lkw_02,lkw_03,lkw_04,lkw_05,lkw_06,lkw_07,sanFzg_01,sanFzg_02,kpz_01,kpz_02,kpz_03,fzg_01,fzg_02,fuchs_01,heli_veh_1,heli_veh_2,heli_veh_3,heli_veh_4,heli_veh_5
	],
	[
	["B_AssaultPack_blk", 1],
	["ToolKit", 1]
	]
] call Reim_fnc_crateFiller;


// Beladungssystem f. Taucherbox f. Falke --> manuel beladen wegen Taucherbrille
/*
[
	[
	tauchbox_01
	],
	[
	["U_B_Wetsuit", 3],
	["G_B_Diving", 3],
	["V_RebreatherB", 3]
	]
] call Reim_fnc_crateFiller;
*/

// Beladungssystem f. Taucherbox f. Pike --> manuel beladen wegen Taucherbrille
[
	[
	tauchbox_02
	],
	[
	["CUP_U_B_BAF_MTP_UBACSLONG_Gloves", 2],
	["CUP_V_B_BAF_MTP_Osprey_Mk4_Scout", 2],
	["CUP_H_BAF_MTP_Mk6_EMPTY", 2]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. SVD
[
	[
	SVD_01,SVD_02
	],
	[
	["ACE_DefusalKit", 2],
	["ACE_Clacker", 2],
	["SatchelCharge_Remote_Mag", 2],
	["TFAR_rt1523g_big_rhs", 1]
	]
] call Reim_fnc_crateFiller;

// Beladungssystem f. Pike/Falke
[
	[
	tauch_muni_01
	],
	[
	["CUP_30Rnd_556x45_Stanag", 15],
	["30Rnd_556x45_Stanag_Tracer_Red", 15],
	["SmokeShell", 6],
	["SmokeShellRed", 6],
	["SmokeShellpurple", 4],
	["HandGrenade", 6]
	]
] call Reim_fnc_crateFiller;

//============================================================================


// Kisten einladen ins Fahrzeug
{
	private _vehicle = _x select 0;
	private _crates = _x select 1;
	{
		[_x, _vehicle] call ace_cargo_fnc_loadItem
	} forEach _crates
} forEach [
	[SVD_01,[tauch_muni_01]],
	[SVD_02,[tauchbox_02]]
];

//============================================================================

// Beladungssystem f. Sani-Kisten für Notfall/Zeus 
[
	[
	sbox_05,sbox_06,sbox_07,sbox_08
	],
	[
	["ACE_fieldDressing", 50],
	["ACE_elasticBandage", 40],
	["ACE_packingBandage", 30],
	["ACE_quikclot", 30],
	["ACE_tourniquet", 20],
	["ACE_bodyBag", 5],
	["ACE_salineIV", 10],
	["ACE_salineIV_500", 15],
	["ACE_salineIV_250", 20],
	["ACE_morphine", 15],
	["ACE_epinephrine", 15],
	["ACE_adenosine", 15],
	["ACE_surgicalKit", 20],
	["ACE_personalAidKit", 1]
	]
] call Reim_fnc_crateFiller;