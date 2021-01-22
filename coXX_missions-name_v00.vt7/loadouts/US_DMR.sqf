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
player addWeapon "UK3CB_M21";
player addPrimaryWeaponItem "uk3cb_optic_artel_m14";
player addPrimaryWeaponItem "UK3CB_M14_20rnd_762x51";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL";
player addVest "UK3CB_V_Chestrig_OLI";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "US_Facepaint";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_RangeCard";
player addItemToVest "rhs_mag_m67";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 5 do {player addItemToVest "UK3CB_M14_20rnd_762x51";};
player addHeadgear "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";