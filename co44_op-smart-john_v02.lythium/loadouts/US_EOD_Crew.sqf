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
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addPrimaryWeaponItem "rhsusf_acc_grip3";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_cu_ocp";
player addVest "rhsusf_spcs_ocp_crewman";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";

player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
player addItemToVest "rhs_mag_m18_green";
player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhs_mag_mk84";
player addHeadgear "rhsusf_cvc_helmet";

player addGoggles selectRandom ["rhsusf_shemagh2_gogg_tan","rhsusf_shemagh2_gogg_od"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";

player setVariable ["ACE_isEOD", true, true];