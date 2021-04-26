//Sommer 21,76 kg
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
player addWeapon "BWA3_MP7";
player addHandgunItem "BWA3_acc_LLM01_irlaser";
player addHandgunItem "BWA3_optic_RSAS";
player addHandgunItem "BWA3_40Rnd_46x30_MP7";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Helipilot";
player addVest "FIR_pilot_vest";
player addBackpack "TFAR_rt1523g_big_rhs";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 3 do {player addItemToVest "BWA3_40Rnd_46x30_MP7";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_DM25";};
player addItemToBackpack "ACE_NVG_Wide";
player addItemToBackpack "TTT_Helmet_Buzzard";
player addHeadgear "TTT_Beret_Silver";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player action ["SWITCHWEAPON",player,player,-1];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;


