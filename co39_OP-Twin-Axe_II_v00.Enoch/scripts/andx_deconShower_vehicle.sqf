/*
	author: [TTT] Andx 
	description: adds an ACE-AddAction to specific vehicles to build a shower
	
	Usage (initPlayerLocal.sqf):
	[] call compile preprocessFileLineNumbers "scripts\andx_deconShower_vehicle.sqf";
	
	last Updated: 07.01.2020 by [TTT] Andx
*/

andx_useAnimation = false;
andx_BuildAnimation = "Acts_carFixingWheel";
andx_BuildTime = 30;
andx_deconshower = "DeconShower_01_F";
//andx_deconfloor = "ContainmentArea_02_black_F";

andx_SupportedVehicleClasses = ["I_E_Offroad_01_covered_F","I_E_Van_02_vehicle_F"];

andx_shower_items = ["ContainmentArea_03_yellow_F","Land_ConnectorTent_01_wdl_open_F","DrainageDeck_01_F","Land_ClutterCutter_large_F","Land_WaterBarrel_F"];

andx_item_pos = [[0,0,-1.07],[0,0,0],[0,0.04,-1.17],[0,0,-1],[2.4,0,-0.6]];

andx_fnc_vehicleHasshower = {
	params ["_target","_caller","_arguments"];
	private _loaded = _target getVariable "hasshower";
	_bool = true;
	if (!_loaded) then {_bool = false;};
	_bool;
}; //return bool

andx_fnc_canDeconstruct = {
	params ["_target","_caller","_arguments"];
	private _arrayVehicles = nearestObjects [(getPos _target), andx_SupportedVehicleClasses, 15];
	_bool = false;
	{
		_loaded = _x getVariable "hasshower";
		if (!_loaded) then {_bool = true;};
	} forEach _arrayVehicles;
	if (_target getVariable "inUse") then {_bool = false;};
	_bool;
}; //return bool

andx_fnc_cancel = {
	(_this select 0) params ["_target","_caller","_arguments"];
	_arguments params ["_variable", "_value"];
	hint "Vorgang abgebrochen";
	_caller switchMove "";
	if (typeOf _target == andx_deconshower) then {
		_target setVariable ["inUse", false, true];
		_arrayVehicles = nearestObjects [(getPos _target), andx_SupportedVehicleClasses, 15];
		private "_vehicle";
		private _ArrayVehicle = [];
		{
			_loaded = _x getVariable "hasshower";
			if (!_loaded) then {_ArrayVehicle pushBack _x};
		} forEach _arrayVehicles;
		_vehicle = _ArrayVehicle select 0;
		[_vehicle, (_vehicle getVariable "fuel")] remoteExec ["setFuel", (owner _vehicle), false];
	}
	else {
		_target setVariable ["hasshower", true, true];
		[_target, (_target getVariable "fuel")] remoteExec ["setFuel", (owner _target), false];
	};
}; //return Code

andx_fnc_deconstructshower = {
	(_this select 0) params ["_target","_caller","_arguments"];
	_arguments params [];
	_arrayVehicles = nearestObjects [(getPos _target), andx_SupportedVehicleClasses, 15];
	private "_vehicle";
	private _ArrayVehicle = [];
	{
		_loaded = _x getVariable "hasshower";
		if (!_loaded) then {_ArrayVehicle pushBack _x};
	} forEach _arrayVehicles;
	_vehicle = _ArrayVehicle select 0;

	private _arrayItems = nearestObjects [(getPos _target), andx_shower_items, 10];
	{
		deleteVehicle _x;
	} forEach _arrayItems;

	hint Format ["Die Dusche wurde in das Fahrzeug;\nRichtung: %1 Grad\nEntfernung: %2 Meter\ngeladen.",
	(round ((getPos _target) getDir (getPos _vehicle))), (round ((getPos _target) distance  (getPos _vehicle)))];
	_vehicle setVariable ["hasshower", true, true];
	deleteVehicle _target;
	_caller switchMove "";
	[_vehicle, (_vehicle getVariable "fuel")] remoteExec ["setFuel", (owner _vehicle), false];
}; //return Code

andx_fnc_deconstruct_progressBar = {
	params ["_target","_caller","_arguments"];
	_arguments params [];
	_target setVariable ["inUse", true, true];
	_arrayVehicles = nearestObjects [(getPos _target), andx_SupportedVehicleClasses, 15];
	private "_vehicle";
	private _ArrayVehicle = [];
	{
		_loaded = _x getVariable "hasshower";
		if (!_loaded) then {_ArrayVehicle pushBack _x};
	} forEach _arrayVehicles;
	_vehicle = _ArrayVehicle select 0;
	_vehicle setVariable ["fuel", (fuel _vehicle), true];
	[_vehicle, 0] remoteExec ["setFuel", (owner _vehicle), false];
	[_vehicle, [0, 0, 0]] remoteExec ["setVelocity", (owner _vehicle), false];
	if (andx_useAnimation) then {_caller playMove andx_BuildAnimation;};
	[andx_BuildTime, _this, andx_fnc_deconstructshower, andx_fnc_cancel, "Baue Dekon-Dusche ab"] call ace_common_fnc_progressBar;
}; //return Code

andx_fnc_buildshower = {
	(_this select 0) params ["_target","_caller","_arguments"];
	_arguments params [];
	private _position = (_target getPos [-5, getDir _target]) findEmptyPosition [2, 10];

	_deconshower = andx_deconshower createVehicle _position;

	_deconshower setDir (getDir _target + 90);

	_deconshower setVariable ["inUse", false, true];

	_counter = 0;

	{
		private _posItem = (getPos _deconshower);
		_item = _x createVehicle _posItem;
		//_item setDir (getDir _target + 90);
		_item attachTo [_deconshower, andx_item_pos select _counter, ""];
		_counter = _counter + 1;
	} forEach andx_shower_items;


	_caller switchMove "";
	[_target, (_target getVariable "fuel")] remoteExec ["setFuel", (owner _target), false];
}; //return Code

andx_fnc_build_progressBar = {
	params ["_target","_caller","_arguments"];
	_arguments params [];
	private _position = (_target getPos [-10, getDir _target]) findEmptyPosition [2, 10, "Tank"];
	_target setVariable ["hasshower", false, true];
	if (_position isEqualTo []) exitWith {
		hint "Nicht genug Platz zum Aufbau der Dusche vorhanden.";
		_target setVariable ["hasshower", true, true];
	};
	_target setVariable ["fuel", (fuel _target), true];
	[_target, 0] remoteExec ["setFuel", (owner _target), false];
	[_target, [0, 0, 0]] remoteExec ["setVelocity", (owner _target), false];
	if (andx_useAnimation) then {_caller playMove andx_BuildAnimation;};
	[andx_BuildTime, _this, andx_fnc_buildshower, andx_fnc_cancel, "Baue Dekon-Dusche auf"] call ace_common_fnc_progressBar;
}; //return Code

_buildshower = ["andx_deconshower_build", "Baue Dekon-Dusche auf", "",
	andx_fnc_build_progressBar, andx_fnc_vehicleHasshower
] call ace_interact_menu_fnc_createAction;

_deconstructshower = ["andx_deconshower_deconstruct", "Baue Dekon-Dusche ab", "",
	andx_fnc_deconstruct_progressBar, andx_fnc_canDeconstruct
] call ace_interact_menu_fnc_createAction;

{
	[_x, 0, ["ACE_MainActions"], _buildshower] call ace_interact_menu_fnc_AddActionToClass;
} forEach andx_SupportedVehicleClasses;

[andx_deconshower, 0, ["ACE_MainActions"], _deconstructshower] call ace_interact_menu_fnc_AddActionToClass;
