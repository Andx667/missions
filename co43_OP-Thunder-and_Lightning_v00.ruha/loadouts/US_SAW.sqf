
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
player addWeapon "rhs_weap_m249_light_S";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addPrimaryWeaponItem "rhsusf_200rnd_556x45_mixed_box";
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
player addVest "V_PlateCarrier2_wdl";
player addBackpack "B_AssaultPack_wdl_F";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_an_m8hc";};
player addItemToVest "rhsusf_200rnd_556x45_mixed_box";
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_200rnd_556x45_mixed_box";};
player addHeadgear "H_HelmetSpecB_wdl";

player addGoggles selectRandom ["","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";

