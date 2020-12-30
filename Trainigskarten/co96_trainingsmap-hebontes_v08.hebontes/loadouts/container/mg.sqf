params ["_unit","_head_headgear","_inventory_headgear"];

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

private _newBackpack = "B_Carryall_khk";
private _oldBackpack = backpack _unit;
if (_oldBackpack != _newBackpack) then {
        removeBackpack _unit;
        _unit addBackpack _newBackpack;
};
_unit addHeadgear _head_headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "TFAR_anprc152";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_MapTools";

for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
_unit addItemToVest "ACE_NVG_Wide";

for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
_unit addItemToBackpack "ACE_morphine";
_unit addItemToBackpack _inventory_headgear;

[_unit, "MMG_02_sand_F", 4] call BIS_fnc_addWeapon;
_unit addPrimaryWeaponItem "130Rnd_338_Mag";
_unit addPrimaryWeaponItem "130Rnd_338_Mag";
_unit addPrimaryWeaponItem "bipod_02_F_tan";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
[_unit, "hgun_ACPC2_F", 3] call BIS_fnc_addWeapon;
_unit addHandgunItem "acc_flashlight_pistol";
_unit addWeapon "Binocular";

//

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;
