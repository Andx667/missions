player setRank "CORPORAL";

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
player addWeapon "hlc_rifle_ACR68_mid_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter_2D";
player addPrimaryWeaponItem "hlc_30rnd_68x43_FMJ";
player addPrimaryWeaponItem "HLC_muzzle_SF3P_68";
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
player addItemToUniform "ACE_morphine"; player addItemToUniform "ACE_Maptools";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Maptools";
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";

player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_68x43_FMJ";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "hlc_15Rnd_9x19_B_P226";

player addItemToBackpack "TTT_Helmet_6_BW_Flecktarn";
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};

player addHeadgear "TTT_Beret_Green";
player addGoggles "BWA3_G_Combat_orange";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

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