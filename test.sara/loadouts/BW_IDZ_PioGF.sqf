
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
player addVest "BWA3_Vest_Leader_Fleck";
player addBackpack "BWA3_PatrolPack_Fleck";

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

player addItemToVest "ACE_Clacker";
player addItemToVest "ACE_DefusalKit";
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36";};
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "BWA3_DM51A1";
player addItemToVest "ACE_M84";
player addItemToVest "ItemcTabHCam";

player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_Canteen";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_SpraypaintBlue";
player addItemToBackpack "ACE_SpraypaintBlack";
player addItemToBackpack "ACE_wirecutter";
for "_i" from 1 to 8 do {player addItemToBackpack "BWA3_30Rnd_556x45_G36";};
for "_i" from 1 to 4 do {player addItemToBackpack "DemoCharge_Remote_Mag";};

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
   	[player,"Redd_Fw"] call BIS_fnc_setUnitInsignia;
};

player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;