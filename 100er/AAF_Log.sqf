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
player addWeapon "arifle_Mk20_F";
player addPrimaryWeaponItem "optic_Aco";
player addPrimaryWeaponItem "30Rnd_556x45_Stanag_red";
player addWeapon "hgun_P07_F";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "U_I_CombatUniform";
player addVest "V_PlateCarrierIA2_dgtl";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "16Rnd_9x21_red_Mag";};
for "_i" from 1 to 10 do {player addItemToVest "30Rnd_556x45_Stanag_red";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addHeadgear "H_HelmetIA";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";

player setVariable ["ACE_IsEngineer", 2, true];
