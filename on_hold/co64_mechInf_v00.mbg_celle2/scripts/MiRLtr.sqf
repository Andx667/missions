_kiste = _this select 0;
_ID = _this select 2;
[_kiste, _ID] remoteExec ["removeAction"];

sleep 30;

_dummy = createVehicle ["Sign_Sphere10cm_F", getPosATL _kiste, [], 0, "CAN_COLLIDE"];
_dummy setDir getDir _kiste;

_bombe = createMine ["APERSMine", getPosATL _dummy, [], 0];
_bombe attachTo [_dummy, [0, 0.5, 0]];
detach _bombe;
_bombe setDamage 1;
sleep 1;

_rakete = createVehicle ["Land_BoreSighter_01_F", getPosATL _dummy, [], 0, "CAN_COLLIDE"];
_dummyseil = createVehicle ["B_Static_Designator_01_F", getPosATL _dummy, [], 0, "CAN_COLLIDE"];
_dummyseil attachTo [_kiste, [0, 0, 0]];
[_dummyseil, true] remoteExec ["hideObjectGlobal"];
_richtung = 1;
_hoehe = 0.5;
_rakete attachTo [_dummy, [0, _richtung, _hoehe]];
_rakete setDir -90;
_seil = ropeCreate [_dummyseil, [0, 0, 0], _rakete, [0, 0, 0], 75];
while {_hoehe < 20} do {
	_rakete attachTo [_dummy, [0, _richtung, _hoehe]];
	_richtung = _richtung + 1;
	_hoehe = _hoehe + 0.5;
	sleep 0.1;
};
while {_hoehe > 2} do {
	_rakete attachTo [_dummy, [0, _richtung, _hoehe]];
	_richtung = _richtung + 1;
	_hoehe = _hoehe - 0.5;
	sleep 0.1;
};
detach _rakete;
sleep 2;

_entfernung = 0;
while {_entfernung < 80} do {
	_bombe = createMine ["DemoCharge_F", getPosATL _dummy, [], 0];
	_bombe attachTo [_dummy, [0, _entfernung, 0]];
	detach _bombe;
	_bombe setPosATL [getPosATL _bombe select 0, getPosATL _bombe select 1, getPosATL _dummy select 2];
	_bombe setDamage 1;
	_entfernung = _entfernung + 10;
};

_entfernung = 0;
while {_entfernung < 80} do {
	_dreck = createVehicle ["Land_DirtPatch_01_4x4_F", getPosATL _dummy, [], 0, "CAN_COLLIDE"];
	_dreck attachTo [_dummy, [0, _entfernung, 0]];
	detach _dreck;
	_dreck setDir getDir _dummy;
	_dreck setPosATL [getPosATL _dreck select 0, getPosATL _dreck select 1, getPosATL _dummy select 2];
	_dreck1 = createVehicle ["Land_ClutterCutter_medium_F", getPosATL _dreck, [], 0, "CAN_COLLIDE"];
	_entfernung = _entfernung + 3;
};

ropeDestroy _seil;
deleteVehicle _dummy;
deleteVehicle _dummyseil;
deleteVehicle _kiste;
deleteVehicle _rakete;