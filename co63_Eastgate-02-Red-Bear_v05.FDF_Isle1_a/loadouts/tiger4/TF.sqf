//Sommer 20,40kg
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
player addWeapon "CUP_arifle_AK74_GL_top_rail";
player addPrimaryWeaponItem "optic_Arco_AK_blk_F";
player addPrimaryWeaponItem "CUP_30Rnd_545x39_AK_M";
player addWeapon "hgun_Pistol_01_F";
player addHandgunItem "10Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "CFP_U_BattleDressUniform_polygonwoodlanddark";
player addVest "CUP_V_B_PASGT_CCE";
player addBackpack "CUP_B_AlicePack_OD";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";

for "_i" from 1 to 3 do {player addItemToVest "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 4 do {player addItemToVest "CUP_1Rnd_SMOKE_GP25_M";};
for "_i" from 1 to 4 do {player addItemToVest "CUP_1Rnd_SmokeRed_GP25_M";};
player addItemToVest "CUP_1Rnd_SmokeGreen_GP25_M";
for "_i" from 1 to 2 do {player addItemToVest "10Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_RGD5";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";

player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "CUP_H_PASGTv2_OD";
player addHeadgear "TTT_Beret_Blue";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
