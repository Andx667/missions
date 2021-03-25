_keiler = _this select 0;
_posKeiler = getPos _keiler;

while {raeumen} do {
	keilerBrocken = "#particlesource" createVehiclelocal _posKeiler;
	keilerBrocken setParticleCircle [0, [0, 0, 0]];
	keilerBrocken setParticleRandom
	[
		2,
		[0.5, 3, 0],
		[15, 15, 5],
		0.1,
		0,
		[0, 0, 0, 0],
		0,
		0
	];
	keilerBrocken setParticleParams
	[
		["\A3\data_f\ParticleEffects\Universal\Mud", 1, 0, 1],
		"",
		"SpaceObject",
		1,
		10,
		[0, 4, -2.5],
		[(vectorDir _keiler select 0) *20, (vectorDir _keiler select 1) *20, 10],
		0,
		2,
		0.1,
		0.1,
		[0.2],
		[[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]],
		[0.08],
		0,
		0,
		"",
		"",
		BPz_0,
		0,
		true,
		0.2
	];
	keilerBrocken setDropInterval 0.5;

	keilerStaub = "#particlesource" createVehiclelocal _posKeiler;
	keilerStaub setParticleCircle [0, [0, 0, 0]];
	keilerStaub setParticleRandom
	[
		2,  //life time
		[0.5, 3, 0],  //position
		[5, 5, 10],  //velocity
		1,  //size
		0,  //color
		[0, 0, 0, 0.01],  //zufallzeug
		0,
		0,  //angle
		0  //bounce
	];

	keilerStaub setParticleParams
	[
		["\A3\data_f\cl_basic", 1, 0, 1],
		"",
		"Billboard",
		1,
		4, //life time
		[0, 4, -2.5], //position
		[(vectorDir _keiler select 0) *50, (vectorDir _keiler select 1) *50, 22],  //velocity
		0,  //rotation velocity
		1.6,  //weight
		1,  //volume
		0.3,  //rubbing
		[2.2, 4, 6], //size
		[[0.060, 0.04, 0.02, 0.6], [0.050, 0.035, 0.02, 0.4], [0.030, 0.025, 0.015, 0.2]],  //color
		[1], //animation speed
		3,  //irgendwas zufälliges
		3,
		"",
		"",
		BPz_0,  //objekt, an das die quelle attached wird
		0, //angle
		true,  //bounce
		0.1  //wieviel bounce
	];
	keilerStaub setDropInterval 0.01;
	sleep 5;
	deletevehicle keilerStaub;
	deleteVehicle keilerBrocken;
};
