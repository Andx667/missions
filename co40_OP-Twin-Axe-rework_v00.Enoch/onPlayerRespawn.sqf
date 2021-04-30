// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;


private _default = "LDF_Ranger_Rifleman";
private _loadoutSQF = ["loadouts\", (player getVariable ["loadout", _default]), ".sqf"] joinString "";
[] spawn compile preprocessFileLineNumbers _loadoutSQF;