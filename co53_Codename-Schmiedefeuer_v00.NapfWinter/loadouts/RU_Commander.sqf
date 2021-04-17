
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
player addWeapon "CUP_arifle_AKS74";
player addPrimaryWeaponItem "CUP_optic_PSO_1_AK";
player addPrimaryWeaponItem "CUP_30Rnd_545x39_AK_M";
player addWeapon "CUP_hgun_Makarov";
player addHandgunItem "CUP_8Rnd_9x18_Makarov_M";

comment "Add containers";
player forceAddUniform "CUP_U_O_CHDKZ_Kam_07";
player addVest "CUP_V_O_Ins_Carrier_Rig_Com";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {player addItemToUniform "CUP_30Rnd_545x39_AK_M";};
player addItemToUniform "SmokeShell";
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_545x39_AK_M";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_RGD5";};
player addItemToVest "SmokeShell";
for "_i" from 1 to 3 do {player addItemToVest "CUP_8Rnd_9x18_Makarov_M";};
player addHeadgear "CUP_H_ChDKZ_Cap";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "CUP_NVG_PVS7_Hide";

comment "Set identity";
[player,"WhiteHead_01","male01rus"] call BIS_fnc_setIdentity;
