
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
player addWeapon "hlc_rifle_ACR68_FULL_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter";
player addPrimaryWeaponItem "hlc_30rnd_68x43_FMJ";
player addPrimaryWeaponItem "CUP_30Rnd_680x43_Stanag";
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
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "CUP_17Rnd_9x19_glock17";
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_68x43";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "CUP_17Rnd_9x19_glock17";

player addItemToBackpack "TTT_Helmet_5_BW_Flecktarn";

player addHeadgear "TTT_Beret_Green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";