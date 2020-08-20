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
player addWeapon "UK3CB_BAF_L22A2";
player addPrimaryWeaponItem "rhsusf_acc_su230a";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_Rifleman_B";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "UK3CB_BAF_9_17Rnd";

player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_556_30Rnd_T";};

player addItemToBackpack "UK3CB_BAF_H_CrewHelmet_A";

player addHeadgear "UK3CB_BAF_H_Beret_SR";
player addGoggles "PBW_Balaclava_schwarzR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ACE_IsAdvEngineer", true];