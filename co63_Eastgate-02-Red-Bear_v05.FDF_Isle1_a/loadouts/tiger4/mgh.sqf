//Sommer 28,50kg
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
player addWeapon "CUP_arifle_RPK74_45_top_rail";
player addPrimaryWeaponItem "optic_Arco_AK_blk_F";
player addPrimaryWeaponItem "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
player addWeapon "hgun_Pistol_01_F";
player addHandgunItem "10Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "CFP_U_BattleDressUniform_polygonwoodlanddark";
player addVest "CUP_V_B_PASGT_CCE";
player addBackpack "CUP_B_AlicePack_OD";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Flashlight_MX991";

for "_i" from 1 to 5 do {player addItemToVest "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";};
for "_i" from 1 to 2 do {player addItemToVest "10Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_RGD5";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

for "_i" from 1 to 2 do {player addItemToBackpack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";};
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_SpareBarrel";
player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "CUP_H_PASGTv2_OD";
player addHeadgear "TTT_Beret_Blue";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;