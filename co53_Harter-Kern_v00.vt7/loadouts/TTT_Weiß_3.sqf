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
player addWeapon "hlc_smg_mp5N_tac";
player addPrimaryWeaponItem "hlc_30Rnd_9x19_B_MP5";
player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "TTT_Uniform_White_BW_Flecktarn";
player addVest "TTT_Vest_Crew_US_Desert";
player addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Maptools";
player addItemToUniform "hlc_15Rnd_9x19_B_P226";

for "_i" from 1 to 3 do {player addItemToVest "hlc_30Rnd_9x19_B_MP5";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "hlc_15Rnd_9x19_B_P226";

player addItemToBackpack "TTT_Helmet_3_BW_Flecktarn";
for "_i" from 1 to 27 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 27 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};

player addHeadgear "TTT_Beret_White";
player addGoggles "BWA3_G_Combat_clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"MedB"] call BIS_fnc_setUnitInsignia;
};

player setVariable ["ace_medical_medicClass", 2];