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
player addWeapon "hlc_rifle_g3a3v";
player addPrimaryWeaponItem "hlc_20rnd_762x51_b_G3";

comment "Add containers";
player forceAddUniform "PBW_Uniform1_fleck";
player addVest "pbw_splitter_sani";
player addBackpack "BWA3_Kitbag_Fleck_Medic";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 6 do {player addItemToVest "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";}
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addHeadgear "PBW_Muetze2_fleck";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";