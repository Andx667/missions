
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
player addWeapon "hlc_rifle_awmagnum_FDE";
player addPrimaryWeaponItem "BWA3_optic_M5Xi_MSR";
player addPrimaryWeaponItem "hlc_5rnd_300WM_FMJ_AWM";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";

comment "Add items to containers";
comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 4 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Red";};
for "_i" from 1 to 4 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Green";};

player addItemToVest "ACE_ATragMX";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_microDAGR";
for "_i" from 1 to 4 do {player addItemToVest "hlc_5rnd_300WM_mk248_AWM";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM51A1";
player addItemToVest "ACE_M84";

player addHeadgear "PBW_muetze2_fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"Redd_HptGef"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;