
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
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_OFFICER_Uniform_01_WDL";
player addVest "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest";
player addBackpack "UK3CB_B_US_Medic_Backpack";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
player addItemToVest "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 40 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_tourniquet";};
player addHeadgear "UK3CB_CW_US_B_LATE_H_PASGT_02_WDL";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

player action ["SwitchWeapon", player, player, -1];