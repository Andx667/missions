
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
player addWeapon "hlc_rifle_PSG1A1_RIS";
player addPrimaryWeaponItem "optic_SOS";
player addPrimaryWeaponItem "hlc_20rnd_762x51_b_G3";
player addPrimaryWeaponItem "BWA3_bipod_Harris";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";
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
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 6 do {player addItemToVest "hlc_20rnd_762x51_T_G3";};
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_M84";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM51A1";};
player addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 6 do {player addItemToBackpack "hlc_20rnd_762x51_T_G3";};
player addItemToBackpack "hlc_20rnd_762x51_b_G3";
player addHeadgear "PBW_Helm2_fleck_H";
player addGoggles "PBW_shemagh_gruen";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";