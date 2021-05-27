player setRank "Sergeant";

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
player addWeapon "BWA3_G36A3_tan";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS_brown";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_AP";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Tropen";
player addVest "BWA3_Vest_Rifleman_Tropen";
player addBackpack "BWA3_PatrolPack_Tropen";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "BWA3_15Rnd_9x19_P8";
player addItemToVest "ACE_Clacker";
player addItemToVest "ACE_DefusalKit";
player addItemToVest "BWA3_15Rnd_9x19_P8";
for "_i" from 1 to 8 do {player addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
player addItemToVest "BWA3_DM51A1";
player addItemToVest "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "ACE_M84";
player addItemToBackpack "PBW_Helm1_tropen_HBO";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_SpraypaintBlue";
player addItemToBackpack "ACE_SpraypaintBlack";
player addItemToBackpack "ACE_VMH3";
for "_i" from 1 to 8 do {player addItemToBackpack "BWA3_30Rnd_556x45_G36_AP";};
player addItemToBackpack "BWA3_15Rnd_9x19_P8";
player addItemToBackpack "ACE_M84";
player addItemToBackpack "BWA3_DM51A1";
player addItemToBackpack "BWA3_DM32_Green";
for "_i" from 1 to 2 do {player addItemToBackpack "BWA3_DM25";};
for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
player addBackpack "ACE_Fortify";
player addHeadgear "PBW_barett_pi";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
	sleep 30;
	[player,"UK3CB_BAF_Insignia_ISAF"] call BIS_fnc_setUnitInsignia;
};

player setVariable ["ACE_isEOD", true, true];
player setVariable ["ACE_IsEngineer", true, true];