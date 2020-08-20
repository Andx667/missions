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
player addWeapon "UK3CB_BAF_L85A3";
player addPrimaryWeaponItem "UK3CB_BAF_SFFH";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_Flashlight_Black";
player addPrimaryWeaponItem "rhsusf_acc_su230a_c";
player addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
player addPrimaryWeaponItem "UK3CB_underbarrel_acc_afg_t";
player addWeapon "UK3CB_BAF_L131A1";
player addHandgunItem "UK3CB_BAF_Flashlight_L131A1";
player addHandgunItem "UK3CB_BAF_9_17Rnd";

comment "Add containers";
player forceAddUniform "UK3CB_BAF_U_JumperUniform_MTP";
player addVest "UK3CB_BAF_V_Osprey_Medic_D";
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_H_B";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "UK3CB_BAF_9_17Rnd";
player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd_T";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_BAF_556_30Rnd";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "HandGrenade";
player addItemToVest "acex_intelitems_notepad";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 18 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 12 do {player addItemToBackpack "ACE_adenosine";};

player addItemToBackpack "UK3CB_BAF_H_Mk7_Camo_ESS_D";

player addHeadgear "UK3CB_BAF_H_Beret_RAF";
player addGoggles selectRandom ["UK3CB_G_Neck_Shemag_Oli","UK3CB_G_Neck_Shemag_Tan","rhsusf_shemagh2_grn","UK3CB_BAF_G_Tactical_Orange","rhsusf_shemagh_grn","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 60;
    [player,"MEDF"] call bis_fnc_setUnitInsignia;
};

player setVariable ["ace_medical_medicClass", 2, true];