
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
player addPrimaryWeaponItem "BWA3_optic_EOTech_sand_Mag_Off";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Grenadier_Fleck";
player addBackpack "BWA3_PatrolPack_Fleck";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_KSF1";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "BWA3_15Rnd_9x19_P8";
player addItemToVest "BWA3_15Rnd_9x19_P8";
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 8 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItemToBackpack "BWA3_30Rnd_556x45_G36_AP";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM51A1";};
player addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 8 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
player addHeadgear "PBW_Helm2_fleck_H";
player addGoggles "PBW_shemagh_gruen";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";