player setRank "SERGEANT";

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
player addWeapon "UK3CB_BAF_L85A2_UGL";
player addPrimaryWeaponItem "rhsusf_acc_su230a";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_SL_D";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Radio_L_A";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "UK3CB_BAF_9_17Rnd";

for "_i" from 1 to 4 do {player addItemToVest "UK3CB_BAF_556_30Rnd_T";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
player addItemToVest "ACE_HuntIR_monitor";
player addItemToVest "UK3CB_BAF_9_17Rnd";
player addItemToVest "rhs_mag_m67";
player addItemToVest "ACE_M84";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 4 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
player addItemToVest "acex_intelitems_notepad";

for "_i" from 1 to 6 do {player addItemToBackpack "ACE_HuntIR_M203";};
player addItemToBackpack selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F"];

player addHeadgear "UK3CB_BAF_H_Beret_WG";
player addGoggles selectRandom ["","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh2_grn","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";