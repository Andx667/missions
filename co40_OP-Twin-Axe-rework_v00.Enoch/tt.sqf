this addAction ["Panzersperre entfernen",
	{ 
		params ["_target", "_caller"];
		_toolkit = [_caller, "Toolkit"] call BIS_fnc_hasItem;
		_engineer = _caller getVariable ["ACE_IsEngineer", 0];

		if (_toolkit) then {
			if (_engineer >= 1) then {
				_caller playMove "Acts_carFixingWheel";
				sleep 15;
				deleteVehicle _target;
				hint format ["Sperre erfolgreich entfernt"];
				_caller playMoveNow "";
				} else {
					hint format ["Du musst ACE_isEngineer sein."];
				};
			} else {
				hint format ["Benötigt Werkzeugkasten zum entfernen"];
			}
	}
];

//Land_CzechHedgehog_01_old_F