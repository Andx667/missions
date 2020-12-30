
 
	//author: Redd

	_loadout_container_array = 
	[

		loadout_container_1

	];

	// add
	{

    	_x addAction ["1. Als Operationsleiter ausrüsten",{params ["_target", "_caller"];_type = "opl";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["2. Als FAC ausrüsten",{params ["_target", "_caller"];_type = "fac";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["3. Als Gruppenführer ausrüsten",{params ["_target", "_caller"];_type = "grpfhr";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["4. Als Truppführer ausrüsten",{params ["_target", "_caller"];_type = "trpfhr";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["5. Als ZF-Schütze ausrüsten",{params ["_target", "_caller"];_type = "zf";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["6. Als Grenadier ausrüsten",{params ["_target", "_caller"];_type = "gren";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["7. Als LMG-Schütze ausrüsten",{params ["_target", "_caller"];_type = "lmg";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["8. Als MG-Hilfsschütze ausrüsten",{params ["_target", "_caller"];_type = "mgh";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["9. Als MG-Schütze ausrüsten",{params ["_target", "_caller"];_type = "mg";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["10. Als AT-Schütze ausrüsten",{params ["_target", "_caller"];_type = "at";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["11. Als Kampfpionier ausrüsten",{params ["_target", "_caller"];_type = "pio";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["12. Als Aufklärer ausrüsten",{params ["_target", "_caller"];_type = "auf";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["13. Als UAV-Operator ausrüsten",{params ["_target", "_caller"];_type = "uav";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["14. Als Oberfeldarzt ausrüsten",{params ["_target", "_caller"];_type = "arzt";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
		_x addAction ["15. Als Ersthelfer ausrüsten",{params ["_target", "_caller"];_type = "erst";[_caller,_type] call Redd_fnc_findHeadGear;},[],1.5, true, true, "","true",7];
	}
	foreach _loadout_container_array;
	
