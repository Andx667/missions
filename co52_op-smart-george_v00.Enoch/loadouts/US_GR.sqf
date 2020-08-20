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
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
player addPrimaryWeaponItem "rhs_mag_M441_HE";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
player addVest "V_PlateCarrier2_wdl";
player addBackpack "B_AssaultPack_wdl_F";

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";

for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhs_mag_m18_green";

for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};

player addHeadgear "H_HelmetSpecB_wdl";
player addGoggles selectRandom ["","G_Bandanna_oli","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","rhsusf_shemagh_od","rhsusf_shemagh2_od","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";