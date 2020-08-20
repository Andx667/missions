
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
player addWeapon "rhs_weap_m249_pip_S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addPrimaryWeaponItem "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote";
player addPrimaryWeaponItem "rhsusf_acc_grip4_bipod";
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
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";

for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhs_mag_m18_green";
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhsusf_ANPVS_15";

for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote";};

player addHeadgear "H_HelmetSpecB_wdl";
player addGoggles selectRandom ["","G_Bandanna_oli","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","rhsusf_shemagh_od","rhsusf_shemagh2_od","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";