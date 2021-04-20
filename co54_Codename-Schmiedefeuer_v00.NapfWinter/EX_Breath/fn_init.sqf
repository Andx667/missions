if (isDedicated) exitWith {};
if !(hasInterface) exitWith {};

BREATH_index = -1;
BREATH_allUnits = [];

[{

	BREATH_index = BREATH_index + 1;

	if (BREATH_index == count BREATH_allUnits) exitWith {
		BREATH_index = -1;
		BREATH_allUnits resize 0;
		{
			if (vehicle _x == _x && alive _x) then {
				BREATH_allUnits pushBack _x;
			};
		} forEach playAbleUnits + switchAbleUnits;
	};

	_unit = BREATH_allUnits select BREATH_index;
	_oldTime = _unit getVariable ["BREATH_time",0];
	_newTime = time;

	if (isNull (_unit getVariable ["BREATH_source",objNull])) then {
		if (_newTime > _oldTime + (2 + random 2)) then {

			_source = "logic" createVehicleLocal (getpos _unit);
			_fog = "#particlesource" createVehicleLocal getpos _source;
			_fog setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 13,0],
			"",
			"Billboard",
			0.5,
			0.5,
			[0,0,0],
			[0, 0.2, -0.2],
			1, 1.275,	1, 0.2,
			[0, 0.2,0],
			[[1,1,1,0.1], [1,1,1, 0.01], [1,1,1, 0]],
			[1000],
			1,
			0.04,
			"",
			"",
			_source];
			_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
			_fog setDropInterval 0.01;

			_source attachto [_unit,[0,0.15,0], "neck"]; // get fog to come out of player mouth

			_unit setVariable ["BREATH_source",_source];
			_unit setVariable ["BREATH_fog",_fog];
			_unit setVariable ["BREATH_time",time];
		};
	} else {
		if (_newTime > _oldTime + 0.5) then {
			deleteVehicle (_unit getVariable "BREATH_source");
			deleteVehicle (_unit getVariable "BREATH_fog");
		};
	};

},0,[]] call CBA_fnc_addPerFrameHandler;
