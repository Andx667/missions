
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
player addWeapon "CUP_arifle_L85A2_G";
player addPrimaryWeaponItem "CUP_acc_sffh";
player addPrimaryWeaponItem "optic_Arco_AK_blk_F";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addWeapon "hgun_P07_F";
player addHandgunItem "muzzle_snds_L";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add containers";
player forceAddUniform "U_B_Wetsuit";
player addVest "V_RebreatherB";
player addBackpack "SP_Carryall_Black";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";

for "_i" from 1 to 2 do {player addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "HandGrenade";};

for "_i" from 1 to 3 do {player addItemToBackpack "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 3 do {player addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {player addItemToBackpack "SatchelCharge_Remote_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellpurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellRed";};
player addItemToBackpack "SmokeShellGreen";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "G_B_Diving";
player addItemToBackpack "NVGoggles_OPFOR";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;