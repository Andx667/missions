// W-Teleporter
teleporter_01 addAction ["W-Teleporter",{createDialog "W_RscTeleportDialog"},[],1,false,true,"","",3];

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
},[],1,false,true,"","",3];

// JIP spawns at the teleporter
if (didJIP) then {player setPosATL (getPosATL teleporter_01);};

//SteinMedicTent
[] call compile preprocessFileLineNumbers "scripts\stein_medicTent_backpack.sqf";