
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
player addWeapon "UK3CB_M16A2_UGL";
player addPrimaryWeaponItem "UK3CB_M16_30rnd_556x45";
player addPrimaryWeaponItem "UK3CB_BAF_1Rnd_HE_Grenade_Shell";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_04_WDL";
player addVest "UK3CB_CW_US_B_LATE_V_PASGT_Rif_Vest";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "US_Facepaint";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_1Rnd_HE_Grenade_Shell";};
for "_i" from 1 to 8 do {player addItemToVest "UK3CB_M16_30rnd_556x45_R";};
for "_i" from 1 to 12 do {player addItemToVest "rhs_mag_M441_HE";};
player addHeadgear "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";