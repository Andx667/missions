
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
player addWeapon "UK3CB_BAF_L1A1";
player addPrimaryWeaponItem "UK3CB_BAF_SUIT";
player addPrimaryWeaponItem "UK3CB_BAF_762_20Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_Smock_DPMW";
player addVest "UK3CB_BAF_V_PLCE_Webbing_DPMW";
player addBackpack "UK3CB_CHC_C_B_HIKER";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "UK3CB_BAF_762_20Rnd";};
player addHeadgear "UK3CB_BAF_H_Wool_Hat";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";