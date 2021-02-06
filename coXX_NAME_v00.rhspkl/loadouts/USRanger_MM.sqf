
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
player addWeapon "rhs_weap_mk17_LB_grip";
player addPrimaryWeaponItem "rhsusf_acc_M8541_mrds";
player addPrimaryWeaponItem "rhs_mag_20Rnd_SCAR_762x51_m80_ball";
player addPrimaryWeaponItem "rhsusf_acc_grip1";

comment "Add containers";
player forceAddUniform "rhs_uniform_g3_rgr";
player addVest "rhsusf_plateframe_marksman";
player addBackpack "rhsusf_assault_eagleaiii_coy";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "rhs_mag_20Rnd_SCAR_762x51_m80_ball";
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";};
player addHeadgear "rhsusf_opscore_fg_pelt";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";