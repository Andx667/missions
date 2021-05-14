_kfz = _this select 0;
_ID = _this select 2;

if (speed _kfz < 5) then {
	[_kfz, _ID] remoteExec ["removeAction"];
	[_kfz, ["Raeumfahrt beenden", "scripts\MiRPz_aus.sqf", [], 6, false, true, "", "true", 3]] remoteExec ["addAction"];

	raeumen = true;
	publicVariable "raeumen";

	[_kfz, false] remoteExec ["allowDamage"];
	[driver _kfz, _kfz] call ace_vehicles_fnc_speedLimiter;
	_kfz animateSource ["dozer_blade_elev_source", 0.65];
	_kfz animateSource ["MovePlow", 1];

	sleep 1;

	_dreck1 = createVehicle ["Land_DirtPatch_01_6x8_F", getPosATL _kfz, [], 0, "CAN_COLLIDE"];
	_dreck1 attachTo [_kfz, [0, 2, 0]];
	detach _dreck1;
	_dreck1 setDir (getDir _kfz) + 90;
	_dreck2 = createVehicle ["Land_ClutterCutter_medium_F", getPosATL _dreck1, [], 0, "CAN_COLLIDE"];

	[[_kfz], "scripts\MiRPz_Effekte.sqf"] remoteExec ["execVM"];
	// [_kfz] execVm "scripts\MiRPz_Effekte.sqf";

	while {raeumen} do {
		_entfernung = _kfz distance _dreck1;
		if (_entfernung > 2.5) then {
			_dreck1 = createVehicle ["Land_DirtPatch_01_6x8_F", getPosATL _kfz, [], 0, "CAN_COLLIDE"];
			_dreck1 attachTo [_kfz, [0, 2, 0]];
			detach _dreck1;
			_dreck1 setDir (getDir _kfz) + 90;
			_dreck2 = createVehicle ["Land_ClutterCutter_medium_F", getPosATL _dreck1, [], 0, "CAN_COLLIDE"];
		};
		sleep 1;
	};

	// hint "Raeumen beendet!";
	_kfz animateSource ["dozer_blade_elev_source", 0];
	_kfz animateSource ["MovePlow", 0];
	[_kfz, true] remoteExec ["allowDamage"];
	[driver _kfz, _kfz] call ace_vehicles_fnc_speedLimiter;

	} else {
	hint "Panzer anhalten!";
};
