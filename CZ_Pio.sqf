
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
player addWeapon "CUP_CZ_BREN2_556_11";
player addPrimaryWeaponItem "CUP_optic_AC11704_Black";
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addWeapon "CUP_hgun_Duty";
player addHandgunItem "CUP_acc_CZ_M3X";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "CUP_U_B_CZ_WDL_NoKneepads";
player addVest "CUP_V_CZ_vest18";
player addBackpack "CUP_B_ACRPara_m95";

comment "Add items to containers";
player addItemToUniform "16Rnd_9x21_Mag";
player addItemToVest "16Rnd_9x21_Mag";
player addHeadgear "CUP_H_CZ_Helmet09";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";