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
player addWeapon "UK3CB_BAF_L85A2_RIS_D";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Tan";
player addPrimaryWeaponItem "rhsusf_acc_su230_mrds";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addPrimaryWeaponItem "UK3CB_underbarrel_acc_grippod_d";

player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
player addVest "UK3CB_BAF_V_Osprey_Rifleman_B";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "UK3CB_BAF_9_17Rnd";

for "_i" from 1 to 8 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
player addItemToVest "UK3CB_BAF_9_17Rnd";
player addItemToVest "UK3CB_BAF_SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_SmokeShell";};
player addItemToVest "rhs_mag_m67";
player addItemToVest "ACE_M84";

for "_i" from 1 to 8 do {player addItemToBackpack "UK3CB_BAF_556_30Rnd";};
player addItemToBackpack "rhs_mag_m67";
player addItemToBackpack "ACE_M84";
player addItemToBackpack "UK3CB_BAF_SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_SmokeShell";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_packingBandage";};
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "UK3CB_BAF_762_100Rnd_T";};
player addItemToBackpack "UK3CB_BAF_H_Mk7_Net_A"; //randomize

player addHeadgear "UK3CB_BAF_H_Beret_SR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";

[] spawn {
	sleep 30;
	[player,"UK3CB_BAF_Insignia_ISAF"] call BIS_fnc_setUnitInsignia;
};