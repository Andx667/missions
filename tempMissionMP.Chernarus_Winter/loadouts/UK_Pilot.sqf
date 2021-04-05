
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
player addWeapon "UK3CB_BAF_L117A2";
player addHandgunItem "UK3CB_BAF_9_15Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_HeliPilotCoveralls_RN";
player addVest "FIR_pilot_vest";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "UK3CB_BAF_9_15Rnd";};
player addHeadgear "H_PilotHelmetHeli_I_E";

