//Reskin der ITC Pzh mit RSR
pzh2000_01 setObjectTextureGlobal [0, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_body_mbt_co.paa"]; 
pzh2000_01 setObjectTextureGlobal [1, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_scorcher_co.paa"]; 
pzh2000_01 setObjectTextureGlobal [2, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_turret_co.paa"]; 

pzh2000_02 setObjectTextureGlobal [0, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_body_mbt_co.paa"]; 
pzh2000_02 setObjectTextureGlobal [1, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_scorcher_co.paa"]; 
pzh2000_02 setObjectTextureGlobal [2, "rsr\rsr_vanilla\data\panzerhaubitze\panzerhaubitze_flecktarn_turret_co.paa"]; 

//Uhrzeit
setDate [2030, 4, 4, 6, 0];

//Kisten + Fhzbefüll Skript laden
reim_fnc_crateFiller = compile preProcessFileLineNumbers "scripts\r_crate.sqf";

//Fahrzeuge befüllen
[
	[spz_01, spz_02, spz_03, spz_04],
	[
		["Toolkit", 1],
		["BWA3_AssaultPack_Fleck", 6],
		["BWA3_200Rnd_556x45", 9],
		["BWA3_DM51A1", 12],
		["BWA3_DM25", 12],
		["BWA3_DM32_Green", 6],
		["BWA3_30Rnd_556x45_G36_AP", 40],
		["BWA3_30Rnd_556x45_G36_Tracer", 16],
		["BWA3_PzF3_Tandem_Loaded", 3],
		["1Rnd_HE_Grenade_shell", 14],
		["1Rnd_SmokeRed_Grenade_shell", 12],
		["ACE_fieldDressing", 21],
		["ACE_TacticalLadder_Pack"]
	]
] call reim_fnc_crateFiller;