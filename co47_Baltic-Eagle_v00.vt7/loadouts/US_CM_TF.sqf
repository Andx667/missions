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
player addWeapon "UK3CB_M16A2";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addWeapon "rhsusf_weap_m1911a1";
player addHandgunItem "rhsusf_mag_7x45acp_MHP";

comment "Add containers";
player forceAddUniform "UK3CB_CW_US_B_LATE_U_CombatUniform_01_WDL";
player addVest "UK3CB_CW_US_B_LATE_V_PASGT_Medic_Vest";
player addBackpack "UK3CB_B_B_Radio_Backpack";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "US_Facepaint";
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 6 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "rhsgref_helmet_pasgt_olive";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_surgicalKit";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
player addHeadgear "UK3CB_CW_US_B_LATE_H_Patrol_Cap_WDL_01";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

player setVariable ["ace_medical_medicClass", 2, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
