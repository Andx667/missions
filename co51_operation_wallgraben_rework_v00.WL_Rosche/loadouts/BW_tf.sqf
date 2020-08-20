
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
player addWeapon "BWA3_G36A3_AG40";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_Tracer";
player addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Grenadier_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "BWA3_15Rnd_9x19_P8";
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 5 do {player addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 5 do {player addItemToVest "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
player addHeadgear "PBW_Helm2_fleck_H";

player addGoggles selectRandom ["","PBW_shemagh_gruen","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","BWA3_G_Combat_clear","BWA3_G_Combat_black","BWA3_G_Combat_orange"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";