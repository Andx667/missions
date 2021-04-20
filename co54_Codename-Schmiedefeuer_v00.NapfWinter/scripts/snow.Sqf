while {alive player} do
{
	_snow = "#particlesource" createVehicleLocal (position player);  
	_snow setParticleParams [["\A3\Data_F\ParticleEffects\Universal\Universal",16,12,8,1],"","Billboard",1,20,[0,0,0],[0,0,0],1,0.000001,0,1.4,[0.1,0.1],[[1,1,1,1]],[0,1],0.2,1.2,"","",vehicle player];
	_snow setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
	_snow setParticleCircle [0,[0,0,0]];
	_snow setDropInterval 0.001;
	
	sleep 30;
	
	[_snow] call CBA_fnc_deleteEntity;

	sleep 1;
};