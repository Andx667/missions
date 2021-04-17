
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
player addWeapon "UK3CB_BAF_L129A1";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
player addPrimaryWeaponItem "UK3CB_BAF_TA648_308";
player addPrimaryWeaponItem "UK3CB_BAF_762_L42A1_20Rnd";
player addPrimaryWeaponItem "UK3CB_underbarrel_acc_fgrip_bipod";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_Flashlight_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_CombatUniform_Arctic_Ghillie_RM";
player addVest "UK3CB_BAF_V_Osprey_Winter";
player addBackpack "UK3CB_BAF_B_Bergen_Arctic_JTAC_H_A";

comment "Add binoculars";
player addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 3 do {player addItemToUniform "UK3CB_BAF_9_17Rnd";};
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_ATragMX";
player addItemToVest "rhs_mag_m67";
player addItemToVest "rhs_mag_mk84";
player addItemToVest "UK3CB_BAF_SmokeShell";
for "_i" from 1 to 6 do {player addItemToVest "UK3CB_BAF_762_L42A1_20Rnd";};
player addItemToBackpack "ACE_SpottingScope";
for "_i" from 1 to 6 do {player addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd";};
for "_i" from 1 to 6 do {player addItemToBackpack "UK3CB_BAF_338_5Rnd";};
player addHeadgear "UK3CB_BAF_H_Mk7_Win_A";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ACE_NVG_Wide";
