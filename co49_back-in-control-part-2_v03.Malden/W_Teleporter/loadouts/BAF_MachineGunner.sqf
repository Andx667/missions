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
player addWeapon "UK3CB_BAF_L7A2";
player addPrimaryWeaponItem "UK3CB_BAF_762_100Rnd_T";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_MG_B";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToVest "UK3CB_BAF_9_17Rnd";
player addItemToVest "HandGrenade";
player addItemToVest "ACE_M84";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "acex_intelitems_notepad";

for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_762_100Rnd_T";};
player addItemToBackpack selectRandom ["UK3CB_BAF_H_Mk7_Camo_A","UK3CB_BAF_H_Mk7_Camo_B","UK3CB_BAF_H_Mk7_Camo_D","UK3CB_BAF_H_Mk7_Camo_E","UK3CB_BAF_H_Mk7_Camo_F"];
player addItemToBackpack "ACE_EntrenchingTool";

player addHeadgear "UK3CB_BAF_H_Beret_SR";
player addGoggles selectRandom ["","UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh2_grn","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";