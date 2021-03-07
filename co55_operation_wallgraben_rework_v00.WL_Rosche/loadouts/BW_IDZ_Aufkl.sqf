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
player addWeapon "BWA3_G28";
player addPrimaryWeaponItem "muzzle_snds_B";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_10Rnd_762x51_G28_SD";
player addPrimaryWeaponItem "BWA3_Bipod_Harris";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "U_B_T_FullGhillie_tna_F";
player addVest "BWA3_Vest_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator_03";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 3 do {player addItemToUniform "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_762x51_G28_SD";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
player addHeadgear "BWA3_Booniehat_Fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"Redd_OStGefr"] call BIS_fnc_setUnitInsignia;
};
