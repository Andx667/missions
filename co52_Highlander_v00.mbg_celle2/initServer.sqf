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

//Humvee+Spz
[
    [car_01, car_02, car_03, car_04, car_05, car_06],
    [
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30],
		["rhsusf_100Rnd_556x45_mixed_soft_pouch", 12],
		["ACE_fieldDressing", 20],
		["ACE_packingBandage", 9],
		["ACE_quikclot", 9],
		["ACE_tourniquet", 10],
		["rhs_mag_mk84", 10],
		["rhs_mag_m67", 10],
		["SmokeShellGreen", 10],
		["SmokeShell", 20],
		["ACE_morphine", 10],
		["rhs_mag_M433_HEDP", 15],
		["rhsusf_falconii", 1],
		["Toolkit", 1],
		["TFAR_rt1523g_rhs",1],
		["ACE_VMH3", 1],
		["ACE_SpraypaintGreen", 1],
		["ACE_SpraypaintRed", 1],
		["ACE_WaterBottle", 6],
		[selectRandom [
			"ACE_MRE_BeefStew",
			"ACE_MRE_ChickenTikkaMasala",
			"ACE_MRE_ChickenHerbDumplings",
			"ACE_MRE_CreamChickenSoup",
			"ACE_MRE_CreamTomatoSoup"], 3],
		[selectRandom [
			"ACE_MRE_LambCurry",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_SteakVegetables"], 3]
    ]
] call reim_fnc_crateFiller;

//OPL
[
    [opl_01, opl_02],
    [
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20],
		["rhsusf_100Rnd_556x45_mixed_soft_pouch", 10],
		["ACE_fieldDressing", 20],
		["ACE_packingBandage", 9],
		["ACE_quikclot", 9],
		["ACE_tourniquet", 10],
		["ACE_SpottingScope", 1],
		["rhs_mag_mk84", 10],
		["rhs_mag_m67", 10],
		["SmokeShellGreen", 10],
		["SmokeShell", 20],
		["ACE_morphine", 10],
		["rhsusf_falconii", 1],
		["Toolkit", 1],
		["TFAR_rt1523g_rhs",1],
		["SmokeShellYellow", 6],
		["SmokeShellRed", 6],
		["SmokeShellPurple",6],
		["SmokeShellOrange" , 6],
		["SmokeShellBlue", 6],
		["ACE_WaterBottle", 24],
		[selectRandom [
			"ACE_MRE_BeefStew",
			"ACE_MRE_ChickenTikkaMasala",
			"ACE_MRE_ChickenHerbDumplings",
			"ACE_MRE_CreamChickenSoup",
			"ACE_MRE_CreamTomatoSoup"], 12],
		[selectRandom [
			"ACE_MRE_LambCurry",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_SteakVegetables"], 12]
    ]
] call reim_fnc_crateFiller;

//Moppeds
[
    [bike_01, bike_02],
    [
		["rhsusf_shemagh_gogg_grn", 1]
    ]
] call reim_fnc_crateFiller;

//SPZ extra
[
    [spz_01, spz_02, spz_03],
    [
		["rhs_weap_maaws_optic", 1],
		["rhs_mag_maaws_HEDP", 3],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30],
		["rhsusf_100Rnd_556x45_mixed_soft_pouch", 12],
		["ACE_fieldDressing", 20],
		["ACE_packingBandage", 9],
		["ACE_quikclot", 9],
		["ACE_tourniquet", 10],
		["rhs_mag_mk84", 10],
		["rhs_mag_m67", 10],
		["SmokeShellGreen", 10],
		["SmokeShell", 20],
		["ACE_morphine", 10],
		["rhs_mag_M433_HEDP", 15],
		["rhsusf_falconii", 1],
		["Toolkit", 1],
		["TFAR_rt1523g_rhs",1],
		["ACE_VMH3", 1],
		["ACE_SpraypaintGreen", 1],
		["ACE_SpraypaintRed", 1],
		["ACE_WaterBottle", 6],
		[selectRandom [
			"ACE_MRE_BeefStew",
			"ACE_MRE_ChickenTikkaMasala",
			"ACE_MRE_ChickenHerbDumplings",
			"ACE_MRE_CreamChickenSoup",
			"ACE_MRE_CreamTomatoSoup"], 3],
		[selectRandom [
			"ACE_MRE_LambCurry",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_MeatballsPasta",
			"ACE_MRE_SteakVegetables"], 3]
    ]
] call reim_fnc_crateFiller;

