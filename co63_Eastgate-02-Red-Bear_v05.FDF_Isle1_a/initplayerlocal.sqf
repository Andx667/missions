
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

if (didJIP) then {player setPosASL (getPosASL teleporter_01);};


//=============================================================

//Plane
[] call compile preprocessFileLineNumbers "scripts\stein_Plane.sqf";

//=============================================================


 // Spritverbrauch Superstallion
//[[heli_veh_3,heli_veh_4], 10] execVM "scripts\fett_fuel.sqf";
// Spritverbrauch Kampfhelikopter AH-64D
//[[heli_veh_5,heli_veh_6], 40] execVM "scripts\fett_fuel.sqf";
// Spritverbrauch Huey
//[[heli_veh_2,heli_veh_3,heli_veh_5], 35] execVM "scripts\fett_fuel.sqf";
// Spritverbrauch Hellcat
//[[heli_veh_1,heli_veh_4], 3] execVM "scripts\fett_fuel.sqf";

//=============================================================

board_01 setObjectTextureGlobal [0,"bilder\map01.paa"];
board_02 setObjectTextureGlobal [0,"bilder\flug01.paa"];
board_03 setObjectTextureGlobal [0,"bilder\hafen01.paa"];
board_06 setObjectTextureGlobal [0,"bilder\su57.paa"];
board_07 setObjectTextureGlobal [0,"bilder\su57a.paa"];

