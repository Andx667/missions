// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

// assigning loadouts on spawn
private _loadoutVar = player getVariable ["loadout",""];
private _loadoutSQF = ["loadouts\", _loadoutVar, ".sqf"] joinString "";

//assign the loadout file
if (_loadoutVar == "") then {
	[] spawn compile preprocessFileLineNumbers "loadouts\BW98_Schutze.sqf";
} else {
	[] spawn compile preprocessFileLineNumbers _loadoutSQF;
};

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;