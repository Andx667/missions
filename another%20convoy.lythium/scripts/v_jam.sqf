/*

By Nobody ©
nach einer Idee von Andx
BWMod & TFAR needed
TFAR Jammer für BW Dingo mit CG-13 - wenn dieser aktiv ist - wird der Funk auch gestört

// fahrzeuginit
[this] spawn v_jam;

//init.sqf
_nil = [] execvm "v_jam.sqf"
*/
if (isServer) then {v_jam_on = true};

v_jam = {
	finishMissionInit;
	waituntil {time >= 20;sleep 5;};
	params ["_veh"];
	while {v_jam_on} do {
		_ecm = _veh getVariable ["BWA3_Dingo2_ECM_on", false];
		_players = call BIS_fnc_listPlayers;
		if (_ecm) then {
			{
				if (_x distance _veh < 50) then {
					player setVariable ["tf_sendingDistanceMultiplicator", 0]; 
					player setVariable ["tf_receivingDistanceMultiplicator", 100];
				} else {
					 player setVariable ["tf_sendingDistanceMultiplicator", 1]; 
					player setVariable ["tf_receivingDistanceMultiplicator", 1];
				};
			} foreach _players;
		};
	sleep 2.5;
	};
};

if (true) exitwith {};