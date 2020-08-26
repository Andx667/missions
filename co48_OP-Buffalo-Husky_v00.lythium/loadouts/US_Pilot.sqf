player setRank "MAJOR";

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
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "rhs_uniform_abu";
player addVest "rhsusf_iotv_ucp";
player addBackpack "TFAR_rt1523g_rhs";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m18_purple";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m18_yellow";};player addItemToVest "rhs_mag_mk84";
player addItemToVest "ACE_HandFlare_Yellow";
player addItemToVest "ACE_HandFlare_Green";
player addItemToVest "acex_intelitems_notepad";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";

player addHeadgear "rhsusf_hgu56p_visor_black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ACE_IsEngineer", 2, true];

player action ["SwitchWeapon", player, player, -1];

[] spawn {
    sleep 60;
    [player,"insignia201"] call bis_fnc_setUnitInsignia;
};