
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
player addWeapon "UK3CB_BAF_L110A3";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
player addPrimaryWeaponItem "RKSL_optic_LDS";
player addPrimaryWeaponItem "UK3CB_BAF_556_200Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
player addVest "UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW";
player addBackpack "UK3CB_BAF_B_Kitbag_Arctic";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "UK3CB_BAF_SmokeShell";
player addItemToVest "UK3CB_BAF_556_200Rnd";
for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_556_200Rnd_T";};
player addHeadgear "UK3CB_BAF_H_Mk7_Win_A";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";