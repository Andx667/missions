//Sommer 22,34kg
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
player addWeapon "CUP_srifle_SVD_top_rail";
player addPrimaryWeaponItem "optic_DMS_weathered_F";
player addPrimaryWeaponItem "CUP_10Rnd_762x54_SVD_M";
player addWeapon "CUP_hgun_Glock17";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "CFP_U_BattleDressUniform_scorpion_w2";
player addVest "V_Chestrig_khk";
player addBackpack "CUP_B_US_Assault_OCP";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_RangeCard";

for "_i" from 1 to 8 do {player addItemToVest "ACE_10Rnd_762x54_Tracer_mag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_10Rnd_762x54_SVD_M";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_17Rnd_9x19_glock17";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";

player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "CUP_SVD_camo_g_half";
player addItemToBackpack "CUP_H_USArmy_HelmetACH_Headset_OEFCP";
player addHeadgear "TTT_Beret_Blue";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
