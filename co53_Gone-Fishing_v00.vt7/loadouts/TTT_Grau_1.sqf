player setRank "SERGEANT";

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
player addWeapon "hlc_rifle_ACR68_mid_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "hlc_optic_HensoldtZO_lo_Docter_2D";
player addPrimaryWeaponItem "hlc_30rnd_68x43_Tracer";
player addPrimaryWeaponItem "HLC_muzzle_SF3P_68";
player addWeapon "hlc_pistol_P226R_Elite";
player addHandgunItem "hlc_acc_TLR1";
player addHandgunItem "HLC_Optic_Docter_CADEX";
player addHandgunItem "hlc_15Rnd_9x19_B_P226";

comment "Add containers";
player forceAddUniform "TTT_Uniform_Grey_BW_Flecktarn";
player addVest "TTT_Vest_Heavy_Grey_US_Desert";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "Laserdesignator_03";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_Maptools";
player addItemToUniform "hlc_15Rnd_9x19_B_P226";
player addItemToUniform "ACE_key_west";

for "_i" from 1 to 6 do {player addItemToVest "hlc_30rnd_68x43_Tracer";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "Laserbatteries";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "hlc_15Rnd_9x19_B_P226";

player addItemToBackpack "TTT_Helmet_1_BW_Flecktarn";

player addHeadgear "TTT_Beret_Grey";
player addGoggles "G_Tactical_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 60;
    [player,"insignia30"] call bis_fnc_setUnitInsignia;
};