//Sommer 31,09kg
comment "Exported from Arsenal by Wittmann";

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
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS_brown";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_AP";
player addWeapon "BWA3_P2A1";
player addHandgunItem "BWA3_1Rnd_Flare_Illum";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_sleeves_Multi";
player addVest "BWA3_Vest_Leader_Multi";
player addBackpack "TFAR_rt1523g_big_rhs";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator_01_khk_F";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "Laserbatteries";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_microDAGR";

for "_i" from 1 to 2 do {player addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer_Dim";};
player addItemToVest "BWA3_1Rnd_Flare_Multistar_Green";
player addItemToVest "BWA3_1Rnd_Flare_Multistar_Red";
for "_i" from 1 to 4 do {player addItemToVest "BWA3_1Rnd_Flare_Illum";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_DM32_Green";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_DM32_Red";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM32_Purple";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};

player addItemToBackpack "NVGoggles_OPFOR";
player addItemToBackpack "BWA3_M92_Multi";
Player addItemToBackpack "BWA3_optic_IRV600";
Player addItemToBackpack "BWA3_optic_NSV600";
Player addItemToBackpack "itc_land_tablet_rover";
Player addItemToBackpack "ACE_Vector";

player addHeadgear "TTT_Beret_Gold";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
