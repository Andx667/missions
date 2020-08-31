
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
player addWeapon "hlc_lmg_mk48mod1";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter";
player addPrimaryWeaponItem "150Rnd_762x51_Box_Tracer";
player addWeapon "CUP_hgun_Glock17_blk";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Green_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Green_US_Woodland";
player addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "CUP_17Rnd_9x19_glock17";
player addItemToUniform "ACE_morphine";
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "CUP_17Rnd_9x19_glock17";
player addItemToVest "150Rnd_762x51_Box_Tracer";
player addItemToBackpack "TTT_Helmet_3_BW_Flecktarn";
for "_i" from 1 to 2 do {player addItemToBackpack "150Rnd_762x51_Box_Tracer";};
player addHeadgear "TTT_Beret_Green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";

[] spawn {
    sleep 60;
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