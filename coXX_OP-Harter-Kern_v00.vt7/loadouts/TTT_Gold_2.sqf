player setRank "CORPORAL";

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
player addWeapon "hlc_rifle_ACR68_GL_mid_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter";
player addPrimaryWeaponItem "hlc_30rnd_68x43_Tracer";
player addWeapon "CUP_hgun_Glock17_blk";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "CUP_17Rnd_9x19_glock17";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Gold_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Gold_US_Desert";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "CUP_17Rnd_9x19_glock17";
for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_68x43_Tracer";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "CUP_17Rnd_9x19_glock17";
player addItemToBackpack "TTT_Helmet_2_BW_Flecktarn";
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
player addHeadgear "TTT_Beret_Gold";

player addGoggles selectRandom ["BWA3_G_Combat_orange","BWA3_G_Combat_black"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 60;
    [player,"insignia26"] call bis_fnc_setUnitInsignia;
};