
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
player addWeapon "rhs_weap_makarov_pm";
player addHandgunItem "rhs_mag_9x18_8_57N181S";

comment "Add containers";
player forceAddUniform "rhs_uniform_df15";
player addBackpack "TFAR_bussole";

comment "Add items to containers";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addHeadgear "rhs_zsh7a_mike_green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_fadak";