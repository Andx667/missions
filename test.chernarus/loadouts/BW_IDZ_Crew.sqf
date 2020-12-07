
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
player addWeapon "CUP_smg_MP7";
player addPrimaryWeaponItem "BWA3_optic_RSAS";
player addPrimaryWeaponItem "CUP_40Rnd_46x30_MP7";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Crew_Fleck";
player addVest "BWA3_Vest_Fleck";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "acex_intelitems_notepad";

for "_i" from 1 to 3 do {player addItemToVest "CUP_40Rnd_46x30_MP7";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM51A1";

player addHeadgear "BWA3_Beret_Pz";
player addGoggles "PBW_Headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[] spawn {
    sleep 30;
   	[player,"Redd_Gef"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;