// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

//loadout
private _default = "UK_Winter_Rifleman";
private _loadoutSQF = ["loadouts\", (player getVariable ["loadout", _default]), ".sqf"] joinString "";
[] spawn compile preprocessFileLineNumbers _loadoutSQF;