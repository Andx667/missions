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
player addWeapon "UK3CB_BAF_L85A2_RIS_W";
player addPrimaryWeaponItem "RKSL_optic_LDS";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_Smock_Arctic";
player addVest "UK3CB_BAF_V_PLCE_Webbing_Plate_DPMW";
player addBackpack "UK3CB_BAF_B_Bergen_Arctic_SL_A";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 12 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "UK3CB_BAF_SmokeShell";
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_SmokeShellGreen";};
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_SmokeShellRed";};
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_White";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Yellow";};
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_SmokeShellPurple";};
for "_i" from 1 to 3 do {player addItemToBackpack "UK3CB_BAF_SmokeShellYellow";};
player addHeadgear "UK3CB_BAF_H_Mk7_Win_A";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "ACE_NVG_Wide";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;