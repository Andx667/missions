player setRank "PRIVATE";

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
player addWeapon "hlc_rifle_G36A1";
player addPrimaryWeaponItem "HLC_Optic_G36dualoptic35x";
player addPrimaryWeaponItem "hlc_30rnd_556x45_EPR_G36";
player addWeapon "BWA3_PzF3_Tandem_Loaded";

comment "Add containers";
player forceAddUniform "PBW_Uniform1_fleck";
player addVest "pbw_splitter_schtz";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "BW_Facepaint";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
player addItemToVest "BWA3_DM32_Green";
player addHeadgear "PBW_muetze2_fleck";

player addGoggles selectRandom ["","PBW_shemagh_gruen","PBW_shemagh_beige"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[] spawn {
    sleep 30;
   	[player,"Redd_Gef"] call BIS_fnc_setUnitInsignia;
};