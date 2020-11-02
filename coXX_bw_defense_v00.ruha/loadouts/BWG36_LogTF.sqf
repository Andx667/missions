player setRank "SERGEANT";

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

comment "Add containers";
player forceAddUniform "PBW_Uniform1_fleck";
player addVest "pbw_splitter_grpfhr";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 3 do {player addItemToUniform "Chemlight_yellow";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "acex_intelitems_notepad";

player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};

player addHeadgear "PBW_Muetze2_fleck";
player addGoggles selectRandom ["","PBW_shemagh_gruen","PBW_shemagh_beige"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[] spawn {
    sleep 30;
   	[player,"Redd_FW"] call BIS_fnc_setUnitInsignia;
};

player setVariable ["ACE_isEngineer", 2];