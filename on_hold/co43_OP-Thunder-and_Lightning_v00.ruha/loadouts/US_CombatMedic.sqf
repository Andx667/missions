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
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
player addVest "V_PlateCarrier2_wdl";
player addBackpack "B_Carryall_oli";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhs_mag_m18_green";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 25 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 25 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 25 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 13 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 13 do {player addItemToBackpack "ACE_salineIV";};
player addHeadgear "H_HelmetSpecB_wdl";

player addGoggles selectRandom ["","rhsusf_shemagh_grn","rhsusf_shemagh2_grn"];

player setVariable ["ace_medical_medicClass", 2, true];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";