// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

// assigning loadouts on spawn
private _loadoutVar = player getVariable ["loadout",""];
private _loadoutSQF = ["loadouts\", _loadoutVar, ".sqf"] joinString "";

//assign the loadout file
if (_loadoutVar == "") then {
	[] spawn compile preprocessFileLineNumbers "loadouts\US_Scout_Rifleman.sqf";
} else {
	[] spawn compile preprocessFileLineNumbers _loadoutSQF;
};