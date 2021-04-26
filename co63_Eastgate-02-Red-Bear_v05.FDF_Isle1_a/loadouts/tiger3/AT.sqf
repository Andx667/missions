//Sommer 36,84kg
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
player addWeapon "arifle_AK12_F";
player addPrimaryWeaponItem "optic_Arco_AK_blk_F";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
player addPrimaryWeaponItem "30Rnd_762x39_AK12_Mag_F";
player addWeapon "CUP_launch_Mk153Mod0_blk";
player addSecondaryWeaponItem "CUP_SMAW_HEAA_M";		//HEAA harte Ziele, HEDP weiche Ziele, NE richt schuß
player addSecondaryWeaponItem "CUP_SMAW_Spotting";
player addWeapon "CUP_hgun_Glock17";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "CFP_U_BattleDressUniform_scorpion_w2";
player addVest "V_Chestrig_khk";
player addBackpack "CUP_B_US_Assault_OCP";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_762x39_AK12_Mag_F";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_17Rnd_9x19_glock17";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "CUP_H_USArmy_HelmetACH_Headset_OEFCP";
player addHeadgear "TTT_Beret_Blue";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
