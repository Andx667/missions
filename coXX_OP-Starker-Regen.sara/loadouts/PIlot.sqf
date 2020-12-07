
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
player addWeapon "hlc_pistol_P229R_Combat";
player addHandgunItem "hlc_13Rnd_9x19_B_P228";

comment "Add containers";
player forceAddUniform "FIR_Fighter_Pilot_Uniform_Flight";
player addVest "FIR_pilot_vest";
player addBackpack "TFAR_rt1523g";

comment "Add items to containers";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {player addItemToUniform "hlc_13Rnd_9x19_B_P228";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "ACE_HandFlare_Green";
player addItemToVest "ACE_HandFlare_Red";
player addItemToVest "ACE_HandFlare_White";
player addItemToVest "ACE_HandFlare_Yellow";
player addHeadgear "H_PilotHelmetHeli_I_E";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;