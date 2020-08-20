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
player addPrimaryWeaponItem "rhsusf_acc_compm4";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
player addVest "V_PlateCarrier1_wdl";

comment "Add binoculars";
player addWeapon "Binocular";

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

for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_Clacker";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhsusf_ANPVS_15";
player addItemToVest "rhs_mag_m18_green";

player addHeadgear "H_HelmetCrew_I";
player addGoggles selectRandom ["rhs_ess_black","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemMicroDagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemWatch";

player setVariable ["ACE_isEngineer", 1];
player setVariable ["ACE_isEOD", true];