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
player addWeapon "hlc_rifle_G36KA1KSK";
player addPrimaryWeaponItem "BWA3_optic_EOTech_Mag_Off";
player addPrimaryWeaponItem "hlc_30rnd_556x45_S_G36";
player addPrimaryWeaponItem "BWA3_muzzle_snds_QDSS";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_sleeves_Fleck";
player addVest "BWA3_Vest_JPC_Rifleman_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck_Medic";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_elasticBandage";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "BWA3_15Rnd_9x19_P8";
player addItemToVest "ACE_M84";
for "_i" from 1 to 3 do {player addItemToVest "ACE_Chemlight_HiGreen";};
for "_i" from 1 to 8 do {player addItemToVest "hlc_30rnd_556x45_S_G36";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_salineIV_250";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
player addHeadgear "BWA3_OpsCore_Fleck";
player addGoggles "PBW_Headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";
player linkItem "CUP_NVG_GPNVG_black";

player setVariable ["ace_medical_medicClass", 2, true];

[] spawn {
    sleep 30;
   	[player,"Redd_Gef"] call BIS_fnc_setUnitInsignia;
};