player setRank "CORPORAL";

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
player addWeapon "rhs_weap_XM2010_d";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2_d";
player addPrimaryWeaponItem "rhsusf_5Rnd_300winmag_xm2010";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_cu_ocp";
player addVest "rhsusf_spcs_ocp_sniper";

comment "Add binoculars";
player addWeapon "rhsusf_bino_lrf_Vector21";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToUniform "rhsusf_5Rnd_300winmag_xm2010";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_ATragMX";
player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhs_mag_mk84";
for "_i" from 1 to 5 do {player addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
player addItemToVest "rhsusf_acc_M2010S_d";

player addHeadgear selectRandom ["rhsusf_ach_helmet_headset_ess_ocp_alt","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_headset_ocp"];
player addGoggles selectRandom ["","rhsusf_shemagh2_tan","rhsusf_shemagh_tan","rhsusf_shemagh2_od","rhsusf_shemagh_tan"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";