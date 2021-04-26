//Sommer 25,31kg
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
player addWeapon "hlc_smg_mp5N_tac";
player addPrimaryWeaponItem "optic_Aco_smg";
player addPrimaryWeaponItem "hlc_30Rnd_9x19_B_MP5";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform2_sleeves_Multi";
player addVest "BWA3_Vest_Rifleman_Multi";
player addBackpack "BWA3_PatrolPack_Multi";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";

for "_i" from 1 to 5 do {player addItemToVest "hlc_30Rnd_9x19_B_MP5";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Purple";
player addItemToVest "BWA3_DM32_Green";

player addItemToBackpack "ToolKit";
player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "BWA3_M92_Multi";
player addHeadgear "TTT_Beret_Silver";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ACE_IsEngineer",true,true];

player action ["SWITCHWEAPON",player,player,-1];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;


