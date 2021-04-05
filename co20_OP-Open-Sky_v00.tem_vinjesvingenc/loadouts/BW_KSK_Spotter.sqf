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
player addWeapon "BWA3_G28";
player addPrimaryWeaponItem "muzzle_snds_B";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_20Rnd_762x51_G28_SD";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_tan";
player addPrimaryWeaponItem "BWA3_bipod_Harris";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Ghillie_Fleck";
player addVest "BWA3_Vest_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "ACE_Vector";

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
player addItemToVest "ACE_microDAGR";
player addItemToVest "BWA3_optic_NSV600";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_ATragMX";
for "_i" from 1 to 3 do {player addItemToVest "ACE_Chemlight_HiGreen";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 6 do {player addItemToVest "BWA3_20Rnd_762x51_G28_SD";};

for "_i" from 1 to 6 do {player addItemToBackpack "BWA3_20Rnd_762x51_G28_SD";};
for "_i" from 1 to 3 do {player addItemToBackpack "Chemlight_green";};
player addItemToBackpack "ACE_SpottingScope";

player addHeadgear "BWA3_OpsCore_Fleck";
player addGoggles "PBW_Headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "CUP_NVG_GPNVG_black";

[] spawn {
    sleep 30;
   	[player,"Redd_FW"] call BIS_fnc_setUnitInsignia;
};