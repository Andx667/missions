//Sommer 25,03kg
comment "Exported from Arsenal by AUT-Cyclon";

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
player addWeapon "BWA3_G36A3_AG40_tan";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS_brown";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Multi";
player addVest "BWA3_Vest_Grenadier_Multi";
player addBackpack "BWA3_AssaultPack_Multi";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 7 do {player addItemToVest "BWA3_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 10 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "BWA3_optic_NSV600";
player addItemToBackpack "BWA3_M92_Multi";
player addHeadgear "TTT_Beret_Blue";
player addGoggles "BWA3_G_Combat_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
