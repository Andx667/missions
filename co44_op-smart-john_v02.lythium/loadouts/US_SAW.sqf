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
player addWeapon "rhs_weap_m249_pip_S";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addPrimaryWeaponItem "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp";
player addPrimaryWeaponItem "rhsusf_acc_grip4_bipod";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_cu_ocp";
player addVest "rhsusf_spcs_ocp_saw";
player addBackpack "rhsusf_assault_eagleaiii_ocp";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "acex_intelitems_notepad";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp";
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp";};
player addHeadgear selectRandom ["rhsusf_ach_helmet_headset_ess_ocp_alt","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_headset_ocp"];
player addGoggles selectRandom ["","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_od","rhsusf_shemagh_tan"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";