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
player addWeapon selectRandom ["hlc_rifle_416D145","hlc_rifle_416D145_CAG"];
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter_2D";
player addPrimaryWeaponItem "hlc_30rnd_556x45_T_PMAG";

player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Brown_BW_Flecktarn";
player addVest "TTT_Vest_Lite_Brown_US_Woodland";
player addBackpack "B_Kitbag_rgr";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_Maptools";

player addItemToVest "ACE_SurgicalKit";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_556x45_T_PMAG";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "hlc_15Rnd_9x19_B_P226";

player addItemToBackpack "TTT_Helmet_1_BW_Flecktarn";
player addItemToBackpack selectRandom ["G_Respirator_yellow_F","G_Respirator_white_F","G_Respirator_blue_F"];
for "_i" from 1 to 27 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 27 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 9 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_SurgicalKit";};

player addHeadgear "TTT_Beret_Brown";
player addGoggles "G_Tactical_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"insignia1"] call BIS_fnc_setUnitInsignia;
};

player setVariable ["ace_medical_medicClass", 2];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;