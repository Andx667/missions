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
player addWeapon "UK3CB_BAF_L129A1";
player addPrimaryWeaponItem "UK3CB_BAF_TA648_308";
player addPrimaryWeaponItem "UK3CB_BAF_762_L42A1_20Rnd";
player addPrimaryWeaponItem "UK3CB_underbarrel_acc_fgrip_bipod";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_Marksman_A";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";

for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_762_L42A1_20Rnd_T";};
player addItemToVest "rhs_mag_m67";
player addItemToVest "ACE_M84";
player addItemToVest "UK3CB_BAF_SmokeShellGreen";
player addItemToVest "acex_intelitems_notepad";

player addItemToBackpack selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F"];

player addHeadgear "UK3CB_BAF_H_Beret_WG";
player addGoggles selectRandom ["","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","rhsusf_shemagh_od","PBW_shemagh_gruen","PBW_shemagh_beige"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";