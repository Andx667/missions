
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
player addWeapon "rhs_weap_ak74m";
player addPrimaryWeaponItem "rhs_acc_dtk3";
player addPrimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";

comment "Add containers";
player forceAddUniform "rhs_uniform_msv_emr";
player addVest "rhs_6b23_digi_6sh92";
player addBackpack "rhs_assault_umbts_engineer_empty";

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
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_M26_Clacker";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_DefusalKit";
for "_i" from 1 to 4 do {player addItemToBackpack "DemoCharge_Remote_Mag";};

player addHeadgear selectRandom ["rhs_6b47_ess_bala","rhs_6b47_ess","rhs_6b47_bala","rhs_6b47"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;