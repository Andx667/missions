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
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
player addPrimaryWeaponItem "rhsusf_acc_grip3";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
comment "Add containers";
player forceAddUniform "rhs_uniform_g3_m81";
player addVest "rhsusf_mbav_rifleman";
player addBackpack "TFAR_rt1523g_big_rhs";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "acex_intelitems_notepad";
player addItemToUniform "US_Facepaint";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 8 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhs_mag_m67";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Yellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_White";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Green";};
player addHeadgear "rhsusf_mich_bare_headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[] spawn {
    sleep 30;
   	[player,"insignia156"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;