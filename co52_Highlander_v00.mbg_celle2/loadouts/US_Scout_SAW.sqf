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
player addWeapon "rhs_weap_m249_light_S";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN_ard";
player addPrimaryWeaponItem "rhsusf_100Rnd_556x45_mixed_soft_pouch";
player addPrimaryWeaponItem "rhsusf_acc_grip4_bipod";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";

comment "Add containers";
player forceAddUniform "rhs_uniform_g3_m81";
player addVest "rhsusf_plateframe_machinegunner";
player addBackpack "rhsusf_falconii";

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
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "US_Facepaint";


player addItemToVest "rhs_mag_mk84";
player addItemToVest "rhs_mag_m67";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_100Rnd_556x45_mixed_soft_pouch";};
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_556x45_mixed_soft_pouch";};
player addHeadgear "rhsusf_mich_bare_headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";

[] spawn {
    sleep 30;
   	[player,"insignia46"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;