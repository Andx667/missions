
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
player addWeapon "rhs_weap_aks74u";
player addPrimaryWeaponItem "rhs_acc_dtk3";
player addPrimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";

comment "Add containers";
player forceAddUniform "rhs_uniform_msv_emr";
player addVest "rhs_6b23_digi_6sh92";
player addBackpack "rhs_medic_bag";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgn";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};

for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgn";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};

for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};

player addHeadgear selectRandom ["rhs_6b47_ess","rhs_6b47"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_medical_medicClass", 2, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
