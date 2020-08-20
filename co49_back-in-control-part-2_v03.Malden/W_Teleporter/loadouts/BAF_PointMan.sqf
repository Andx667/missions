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
player addWeapon "UK3CB_BAF_L85A2";
player addPrimaryWeaponItem "rhsusf_acc_su230a";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest selectRandom ["UK3CB_BAF_V_Osprey_Rifleman_A","UK3CB_BAF_V_Osprey_Rifleman_C","UK3CB_BAF_V_Osprey_Rifleman_D","UK3CB_BAF_V_Osprey_Rifleman_E","UK3CB_BAF_V_Osprey_Rifleman_A"];
player addBackpack "UK3CB_BAF_B_Bergen_MTP_PointMan_H_A";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd_T";};
for "_i" from 1 to 3 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 3 do {player addItemToVest "HandGrenade";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "acex_intelitems_notepad";

player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "UK3CB_BAF_L128A1";
player addItemToBackpack selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F"];
for "_i" from 1 to 10 do {player addItemToBackpack "UK3CB_BAF_12G_Pellets";};

player addHeadgear "UK3CB_BAF_H_Beret_SR";
player addGoggles selectRandom ["","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh2_grn","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","PBW_shemagh_gruen"];
comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";