player setRank "PRIVATE";

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
player addPrimaryWeaponItem "hlc_30rnd_556x45_M_PMAG";

player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Blue_BW_Flecktarn";
player addVest "TTT_Vest_Lite_Blue_US_Woodland";
player addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_Maptools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_key_west";

player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_Clacker";
for "_i" from 1 to 7 do {player addItemToVest "hlc_30rnd_556x45_M_PMAG";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "hlc_15Rnd_9x19_B_P226";

player addItemToBackpack "TTT_Helmet_4_BW_Flecktarn";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_Fortify";

player addHeadgear "TTT_Beret_Blue";
player addGoggles selectRandom ["PBW_Balaclava_schwarzR","PBW_Balaclava_beigeR","PBW_Brille_braun","PBW_Brille_gelb"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";

[] spawn {
    sleep 30;
    [player,"insignia29"] call bis_fnc_setUnitInsignia;
};

player setVariable ["ACE_isEngineer", 1];
player setVariable ["ACE_isEOD", true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;