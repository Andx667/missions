player setRank "LIEUTENANT";

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
player addWeapon "UK3CB_BAF_L22A2";
player addPrimaryWeaponItem "rhsusf_acc_su230a";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_Army";
player addVest "UK3CB_BAF_V_Pilot_A";
player addBackpack "TFAR_rt1523g_rhs";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
player addItemToVest "UK3CB_BAF_9_17Rnd";
player addHeadgear "UK3CB_BAF_H_Beret_RAF";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[player, "Roundel_RAF"] call BIS_fnc_setUnitInsignia;

player setVariable ["ACE_IsAdvEngineer", true];