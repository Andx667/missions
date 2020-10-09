player setRank "PRIVATE";

comment "Exported from Arsenal by Andx";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "hlc_rifle_g3sg1";
player addPrimaryWeaponItem "HLC_Optic_ZFSG1";
player addPrimaryWeaponItem "hlc_20rnd_762x51_b_G3";

player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Green_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Green_US_Woodland";
player addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 18 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Maptools";

for "_i" from 1 to 6 do {player addItemToVest "hlc_20rnd_762x51_T_G3";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "hlc_15Rnd_9x19_B_P226";
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 6 do {player addItemToBackpack "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 2 do {player addItemToBackpack "hlc_20rnd_762x51_T_G3";};

player addHeadgear "TTT_Helmet_8_BW_Flecktarn";
player addGoggles selectRandom ["BWA3_G_Combat_orange","PBW_shemagh_gruen","PBW_shemagh_beige","G_Bandanna_oli","G_Bandanna_khk","G_Bandanna_Beast"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";

[] spawn {
    sleep 30;
	_insignia = [
		"USP_PATCH_BLOOD_OPOS_BLK",
		"USP_PATCH_BLOOD_ONEG_BLK",
		"USP_PATCH_BLOOD_BPOS_BLK",
		"USP_PATCH_BLOOD_BNEG_BLK",
		"USP_PATCH_BLOOD_ABPOS_BLK",
		"USP_PATCH_BLOOD_ABNEG_BLK",
		"USP_PATCH_BLOOD_APOS_BLK",
		"USP_PATCH_BLOOD_ANEG_BLK"
		] selectRandomWeighted [0.35, 0.06, 0.09, 0.02, 0.04, 0.01, 0.37, 0.06];
    [player, _insignia] call bis_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;