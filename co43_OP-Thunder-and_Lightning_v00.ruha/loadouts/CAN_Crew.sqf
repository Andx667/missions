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
player addWeapon "rhs_weap_m16a4";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_PMAG";
player addWeapon "hlc_pistol_P226US";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_wdl_f";
player addVest "V_PlateCarrier2_wdl";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "hlc_15Rnd_9x19_JHP_P226";
player addItemToVest "ACE_microDAGR";
player addItemToVest "HandGrenade";
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "hlc_15Rnd_9x19_B_P226";};
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";};
player addHeadgear "H_HelmetSpecB_wdl";

player addGoggles selectRandom ["rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","rhsusf_shemagh_gogg_grn","rhsusf_shemagh2_gogg_grn"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";