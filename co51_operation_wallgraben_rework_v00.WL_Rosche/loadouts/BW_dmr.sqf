
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
player addWeapon "BWA3_G28";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_10Rnd_762x51_G28_AP";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";

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
player addItemToVest "ACE_RangeCard";
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 10 do {player addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_10Rnd_762x51_G28_Tracer";};
player addHeadgear "PBW_Helm2_fleck_H";

player addGoggles selectRandom ["","PBW_shemagh_gruen","rhsusf_shemagh_grn","rhsusf_shemagh2_grn","BWA3_G_Combat_clear","BWA3_G_Combat_black","BWA3_G_Combat_orange"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_rf7800str";