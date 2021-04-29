private _supportedVehicles = ["CUP_I_T810_Unarmed_LDF","I_E_Offroad_01_comms_F","I_E_Truck_02_Medical_F","I_E_Offroad_01_covered_F","FLAG_EAF_F"];
private _time = 30;

_cbrn_equip = [
    "CBRN_Equip_Loadout", 
    "CBRN Equipment anlegen",
    "", 
    {
    params ["_target", "_player", "_params"];
   
    [_target,_player, _params ] spawn {
        params ["_target", "_player", "_params"];
       
        // _loadoutVar = _player getVariable ["loadout", ""];
        // _loadoutSQF = ["loadouts\", _loadoutVar, "_cbrn.sqf"] joinString "";

        _player forceAddUniform "U_I_E_CBRN_Suit_01_EAF_F";
       
        LOADOUT_SUCCESS = false;
        LOADOUT_FAILURE = false;
        [
            30,
            [],
            { LOADOUT_SUCCESS = true; },
            { LOADOUT_FAILURE = true; },
            "Ausrüstung anlegen",
            {true},
            []
        ] call ACE_common_fnc_progressBar;     
       
        waitUntil {if ((LOADOUT_SUCCESS) || (LOADOUT_FAILURE)) exitWith {true}; false};
       
        if (LOADOUT_SUCCESS) then {
            [] spawn compile preprocessFileLineNumbers _loadoutSQF;
            hint "CBRN Equipment angelegt";
            _player setVariable ["cbrn_active", true];
        };

	};
    }, 
    {
      !(_player getVariable ["cbrn_active", False])
    }
] call ACE_interact_menu_fnc_createAction;


_cbrn_unequip = [
    "CBRN_Unequip_Loadout", 
    "CBRN Equipment ablegen",
    "", 
        {
    params ["_target", "_player", "_params"];
   
    [_target,_player, _params ] spawn {
        params ["_target", "_player", "_params"];
       
        // _loadoutVar = _player getVariable ["loadout", ""];
        // _loadoutSQF = ["loadouts\", _loadoutVar, ".sqf"] joinString "";
       
        _player forceAddUniform "U_I_E_Uniform_01_F";

        LOADOUT_SUCCESS = false;
        LOADOUT_FAILURE = false;
        [
            30,
            [],
            { LOADOUT_SUCCESS = true; },
            { LOADOUT_FAILURE = true; },
            "Ausrüstung ablegen",
            {true},
            []
        ] call ACE_common_fnc_progressBar;     
       
        waitUntil {if ((LOADOUT_SUCCESS) || (LOADOUT_FAILURE)) exitWith {true}; false};
       
        if (LOADOUT_SUCCESS) then {
            [] spawn compile preprocessFileLineNumbers _loadoutSQF;
            hint "CBRN Equipment abgelegt";
            _player setVariable ["cbrn_active", false];
        };

	};


    }, 
    {
      (_player getVariable ["cbrn_active", False])
    }
] call ACE_interact_menu_fnc_createAction;

{
	[_x, 0, ["ACE_MainActions"], _cbrn_equip] call ACE_interact_menu_fnc_addActionToClass;
  [_x, 0, ["ACE_MainActions"], _cbrn_unequip] call ACE_interact_menu_fnc_addActionToClass;
} forEach _supportedVehicles;