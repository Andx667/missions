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
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear_pip";
player addPrimaryWeaponItem "BWA3_10Rnd_762x51_G28_SD";
player addPrimaryWeaponItem "muzzle_snds_B";

player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Ghillie_Fleck";
player addVest "TTT_Vest_Lite_Gold_US_Desert";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "Laserdesignator_03";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_Maptools";
player addItemToUniform "ACE_Rangecard";
player addItemToUniform "ACE_IR_Strobe_item";

for "_i" from 1 to 6 do {player addItemToVest "BWA3_10Rnd_762x51_G28_SD";};
for "_i" from 1 to 6 do {player addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "Laserbatteries";
player addItemToVest "hlc_15Rnd_9x19_B_P226";
player addItemToVest "ACE_Kestrel4500";

player addItemToBackpack "TTT_Beret_Gold";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};

player addHeadgear "TTT_Helmet_1_BW_Flecktarn";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;