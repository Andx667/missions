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
player addWeapon "hlc_rifle_ACR68_Carb_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter";
player addPrimaryWeaponItem "hlc_30rnd_68x43_FMJ";
player addWeapon "CUP_hgun_Glock17_blk";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Blue_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Blue_US_Woodland";
player addBackpack "B_Carryall_khk";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "CUP_17Rnd_9x19_glock17";
player addItemToUniform "ACE_morphine";
player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_Clacker";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_68x43_FMJ";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "CUP_17Rnd_9x19_glock17";
player addItemToBackpack "TTT_Helmet_4_BW_Flecktarn";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_SpraypaintBlue";
player addItemToBackpack "ACE_SpraypaintBlack";
for "_i" from 1 to 4 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addHeadgear "TTT_Beret_Blue";

player addGoggles selectRandom ["BWA3_G_Combat_orange","BWA3_G_Combat_clear","BWA3_G_Combat_black"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemMicroDAGR";

[] spawn {
    sleep 60;
    [player,"insignia29"] call bis_fnc_setUnitInsignia;
};

player setVariable ["ACE_isEngineer", 1];
player setVariable ["ACE_isEOD", true];