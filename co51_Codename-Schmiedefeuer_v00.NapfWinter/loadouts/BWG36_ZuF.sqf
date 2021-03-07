player setRank "LIEUTENANT";

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
player addPrimaryWeaponItem "hlc_30rnd_556x45_Tracers_G36";

player addWeapon "BWA3_P2A1";
player addHandgunItem "BWA3_1Rnd_Flare_Multistar_Green";

comment "Add containers";
player forceAddUniform "rnt_bw_wintertarn_uniform_item";
player addVest "pbw_splitter_grpfhr";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "BW_Facepaint";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 3 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Red";};
for "_i" from 1 to 3 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Green";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItemToVest "hlc_30rnd_556x45_Tracers_G36";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};

for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Orange";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Purple";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Red";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Yellow";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Green";};
for "_i" from 1 to 3 do {player addItemToBackpack "BWA3_DM32_Blue";};

player addItemToVest "BWA3_DM32_Green";
player addHeadgear "PBW_muetze2_fleck";



comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";

[] spawn {
    sleep 30;
   	[player,"Redd_Lt"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;