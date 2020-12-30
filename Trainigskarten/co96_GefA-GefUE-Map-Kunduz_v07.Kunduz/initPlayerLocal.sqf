// W-Teleporter
{
    _x addAction ["W-Teleporter",{createDialog "W_RscTeleportDialog"},[],1,false,true,"","",5];
} forEach [flag_sammelplatz];

// spectator cam and clean up near base
flag_sammelplatz addAction ["Zuschauermodus", {
    params ["_target","_caller"];
    ["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
},[],1,false,true,"","",5];
player addEventHandler ["Respawn",{
    params ["","_corpse"];
    if((getPosASL player) distance (getMarkerPos "respawn") < 1000) then {
        deleteVehicle _corpse;
    };
}];
