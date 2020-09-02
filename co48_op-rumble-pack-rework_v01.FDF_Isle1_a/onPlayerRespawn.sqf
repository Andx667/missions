["Terminate"] call BIS_fnc_EGSpectator;

private _loadoutVar = player getVariable ["loadout",""];
private _loadoutSQF = ["loadouts\", _loadoutVar, ".sqf"] joinString "";

if (_loadoutVar == "") then {
	[] spawn compile preprocessFileLineNumbers "loadouts\LDF_Ranger_Rifleman.sqf";
} else {
	[] spawn compile preprocessFileLineNumbers _loadoutSQF;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;