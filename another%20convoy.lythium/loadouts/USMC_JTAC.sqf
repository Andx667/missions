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
player addWeapon "rhs_weap_m27iar_grip";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_ACOG3_USMC";
player addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhs_weap_M320";

comment "Add containers";
player forceAddUniform "rhs_uniform_FROG01_d";
player addVest "rhsusf_spc_squadleader";
player addBackpack "UK3CB_BAF_B_Bergen_TAN_JTAC_H_A";

comment "Add binoculars";
player addWeapon "UK3CB_BAF_Soflam_Laserdesignator";
player addMagazine "Laserbatteries";

comment "Add items to containers";
for "_i" from 1 to 15 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
player addItemToVest "rhs_mag_m67";
player addItemToVest "ACE_M84";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellGreen";
player addItemToVest "Laserbatteries";

for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Yellow";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_White";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellOrange";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellYellow";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
player addItemToBackpack "rhsusf_lwh_helmet_marpatd_headset";
player addHeadgear "rhs_8point_marpatd";

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