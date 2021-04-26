
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
player addWeapon "CUP_hgun_Deagle";
player addHandgunItem "CUP_7Rnd_50AE_Deagle";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Multi";
player addVest "V_PlateCarrier1_wdl";
player addBackpack "TFAR_rt1523g_big_rhs";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "CUP_7Rnd_50AE_Deagle";};
player addHeadgear "TTT_Beret_Logo";
player addItemToUniform "ACE_MapTools";
player addItemToBackpack "NVGoggles_OPFOR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";


player action ["SwitchWeapon", player, player, -1];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;





