
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
player addWeapon "BWA3_G36A3";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addWeapon "BWA3_P2A1";
player addHandgunItem "BWA3_1Rnd_Flare_Multistar_Green";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Medic_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "acex_intelitems_notepad";
for "_i" from 1 to 4 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Red";};
for "_i" from 1 to 4 do {player addItemToUniform "BWA3_1Rnd_Flare_Multistar_Green";};

player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM51A1";
player addItemToVest "ACE_M84";
for "_i" from 1 to 4 do {player addItemToVest "BWA3_30Rnd_556x45_G36";};
player addItemToVest "ItemcTabHCam";
player addItemToVest "ACE_SurgicalKit";

player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_Canteen";
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};

player addHeadgear "BWA3_OpsCore_Fleck_Camera";
player addGoggles "PBW_Headset";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"Redd_Hptm"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;