
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
player addWeapon "hlc_rifle_ACR68_SBR_black";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_CompM2";
player addPrimaryWeaponItem "hlc_30rnd_68x43_FMJ";

comment "Add containers";
player forceAddUniform "CFP_RAID_M811";
player addVest "CUP_V_CPC_medicalbelt_rngr";
player addBackpack "CFP_Kitbag_M81";

comment "Add items to containers";
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};

for "_i" from 1 to 3 do {player addItemToVest "hlc_30rnd_68x43_MFMJ";};
player addItemToVest "HandGrenade";
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToUniform "ACE_tourniquet";

player addHeadgear "CFP_PatrolCap_M81";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

[] spawn {
    sleep 30;
   	[player,"Redd_Hptm"] call BIS_fnc_setUnitInsignia;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;