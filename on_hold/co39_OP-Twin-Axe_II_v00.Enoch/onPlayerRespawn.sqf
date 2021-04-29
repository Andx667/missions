// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;


private _default = "LDF_Ranger_Rifleman";
private _loadoutSQF = ["loadouts\", (player getVariable ["loadout", _default]), ".sqf"] joinString "";
[] spawn compile preprocessFileLineNumbers _loadoutSQF;

// setting the threat level of the chemical detector 
// for some reason it keep its last value, even after missions restarts
[0.0, true] execVM "scripts\oj_threatMeter.sqf";
