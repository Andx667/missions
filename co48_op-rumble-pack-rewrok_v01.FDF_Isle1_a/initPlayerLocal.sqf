// W-Teleporter
teleporter_01 addAction ["W-Teleporter", {
	createDialog "W_RscTeleportDialog"
	},[],1,false,true,"","",3
];

//Zuschauermodus
teleporter_01 addAction ["Zuschauermodus", {
		params ["_target","_caller"];
		removeAllWeapons _caller;
		removeAllItems _caller;
		removeAllAssignedItems _caller;
		removeUniform _caller;
		removeVest _caller;
		removeBackpack _caller;
		removeHeadgear _caller;
		removeGoggles _caller;
		[_caller, true] remoteExecCall ["hideObjectGlobal", 2];
		["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
	},[],1,false,true,"","",3
];

//Port zum Träger
teleporter_01 addAction ["Zum Träger teleportieren", {
    params ["_target","_caller"];
    _caller setPosASL (getPosASL port);
	},[],1,false,true,"","",3
];

if (didJIP) then {player setPosATL (getPosATL teleporter_01);};