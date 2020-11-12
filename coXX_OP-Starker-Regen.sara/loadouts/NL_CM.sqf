
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
player addWeapon "hlc_rifle_ACR68_Carb_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_EOTech_Mag_Off";
player addPrimaryWeaponItem "hlc_30rnd_68x43_MFMJ";
player addWeapon "CUP_hgun_Glock17";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "CUP_U_CRYE_G3C_M81";
player addVest "CFP_RAV_operator_M81";
player addBackpack "CFP_Kitbag_PolygonWoodland";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "CUP_17Rnd_9x19_glock17";
player addItemToVest "CUP_17Rnd_9x19_glock17";
for "_i" from 1 to 10 do {player addItemToVest "hlc_30rnd_68x43_MFMJ";};
player addItemToVest "HandGrenade";
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_fieldDressing";};
player addHeadgear "CUP_H_OpsCore_Spray";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDagr";