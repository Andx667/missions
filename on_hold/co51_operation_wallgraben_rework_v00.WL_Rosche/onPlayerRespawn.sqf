// respawn disables spectator cam
["Terminate"] call BIS_fnc_EGSpectator;

// assigning loadouts on spawn
private _loadoutVar = player getVariable ["loadout",""];
private _loadoutSQF = ["loadouts\", _loadoutVar, ".sqf"] joinString "";

// If players have goggles in their profile, safe them
GEAR_KEEP_GOGGLES = true;

_unit = player;

if (GEAR_KEEP_GOGGLES) then {
	if ((goggles _unit) != "") then {
		_unit setVariable ["axe_user_goggles", (goggles _unit)];
	};
};

//assign the loadout file
if (_loadoutVar == "") then {
	[] spawn compile preprocessFileLineNumbers "loadouts\US_Rifleman.sqf";
} else {
	[] spawn compile preprocessFileLineNumbers _loadoutSQF;
};


//re-add the goggles
if (GEAR_KEEP_GOGGLES) then {
	private _player_goggles = _unit getVariable ["axe_gear_goggles", ""];
	if (_player_goggles != "") then {
		if ((goggles _unit) != "") then {removeGoggles _unit;};
			_unit addGoggles _player_goggles;
			_unit setVariable ["axe_gear_goggles", nil];
	};
};