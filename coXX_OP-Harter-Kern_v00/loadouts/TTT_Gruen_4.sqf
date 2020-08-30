
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
player addWeapon "CUP_arifle_ACR_blk_68";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "CUP_optic_AC11704_Black";
player addPrimaryWeaponItem "CUP_30Rnd_680x43_Stanag";
player addWeapon "CUP_hgun_Glock17_blk";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Green_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Green_US_Woodland";
player addBackpack "B_AssaultPack_cbr";

comment "Add items to containers";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "CUP_17Rnd_9x19_glock17";
for "_i" from 1 to 6 do {player addItemToVest "CUP_30Rnd_680x43_Stanag";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "CUP_17Rnd_9x19_glock17";
player addHeadgear "TTT_Beret_Green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";