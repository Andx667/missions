player setRank "MAJOR";

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
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_TKA_I_U_CombatUniform_03_GREY";
player addBackpack "UK3CB_AAF_B_B_FIELDPACK_DIGI_BLK_Radio";

comment "Add items to containers";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 3 do {player addItemToUniform "UK3CB_BAF_9_17Rnd";};
player addHeadgear "UK3CB_BAF_H_Wool_Hat";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "B_UavTerminal";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;