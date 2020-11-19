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
player addWeapon "UK3CB_BAF_L85A2_UGL";
player addPrimaryWeaponItem "rhsusf_acc_su230_mrds";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addPrimaryWeaponItem "UK3CB_BAF_1Rnd_HE_Grenade_Shell";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_Grenadier_B";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";

for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd_T";;};
for "_i" from 1 to 5 do {player addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
player addItemToVest "acex_intelitems_notepad";
player addItemToVest "rhs_mag_m67";
player addItemToVest "ACE_M84";
player addItemToVest "UK3CB_BAF_SmokeShellGreen";

for "_i" from 1 to 10 do {player addItemToBackpack "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
for "_i" from 1 to 4 do {player addItemToBackpack "UK3CB_BAF_1Rnd_SmokeRed_Grenade_shell";};
player addItemToBackpack selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F"];

player addHeadgear "UK3CB_BAF_H_Beret_WG";
player addGoggles selectRandom ["","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh2_grn","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;