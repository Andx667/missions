setDate [2035, 9, 25, 6, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

{ //für BLUEFOR "independent" in "west" ändern
	if (side _x != independent) then {						//alle die nicht independent sind machen:
		_x setBehaviour "SAFE";						//Waffe gesenkt
		_x setCombatMode "YELLOW";					//Feuerstatus "Gelb" (erwidern Feuer)
		_x setSpeedMode "LIMITED";					//Laufen im "Marsch"
		
		_x setSkill ["general", 0.75];				//1 ist Profi, 0 ist Noob
		_x setSkill ["commanding", 0.75];
		_x setSkill ["courage", 0.75];
		_x setSkill ["aimingAccuracy", 0.5];
		_x setSkill ["aimingShake", 0.35];
		_x setSkill ["aimingSpeed", 0.5];
		_x setSkill ["reloadSpeed", 0.75];
		_x setSkill ["spotDistance", 1];
		_x setSkill ["spotTime", 1];
		_x enableAI "COVER";
		_x enableAI "AUTOCOMBAT";
	};
} forEach allUnits;

/*
Adding zones must be done by server. If you add them via any other machine, it will simply not work!

Zones work as follows:
They are always circular!
You need to specify their center,their threat level (ranging between 0 and 5), their radius and fall off area!

The fall off area will add to the radius, but the threadlevel will not be in full effect. As example:
You want a threat area spanning 500 meters in radius, but you only want the full effect of threatlevel 3.5 withing 100 meters of the center, this would look like this:

[_pos, 3.5, 100, 400] call cbrn_fnc_createZone;

This will create a threat level 3.5 (Orange) zone around position _pos with total radius of 500 meters and full effect is 100 meter radius around the center!
*/

/*
 * Arguments:
 * 0: Center of zone, position array
 * 1: Threatlevel between 1 and 4.9, float
 * 2: Radius of full effect, float
 * 3: Radius of partial effect, float
 */
[getMarkerPos "marker_23", 1.31, 150, 50] call cbrn_fnc_createZone; //1 obj

[getMarkerPos "marker_21", 2.54, 8, 15] call cbrn_fnc_createZone; // haus mit müll

[getMarkerPos "marker_22", 2.82, 5, 15] call cbrn_fnc_createZone; //unfall auto

[getMarkerPos "marker_24", 1.93, 15, 15] call cbrn_fnc_createZone; //lager obj 2

[getMarkerPos "marker_25", 2.46, 15, 15] call cbrn_fnc_createZone; //metall schuppen obj 2

[getMarkerPos "marker_26", 2.58, 5, 15] call cbrn_fnc_createZone; //tunnel eingang

[getMarkerPos "marker_28", 3.87, 15, 30] call cbrn_fnc_createZone; //maschinen raum mit intel 

[getMarkerPos "marker_29", 2.91, 10, 30] call cbrn_fnc_createZone; // müll am mineneingang 

[getMarkerPos "marker_32", 2.79, 10, 5] call cbrn_fnc_createZone; // müll im gang 

[getMarkerPos "marker_30", 4.90, 10, 25] call cbrn_fnc_createZone; // ende 

[getMarkerPos "marker_31", 4.21, 10, 10] call cbrn_fnc_createZone; // fässer am ende 

[getMarkerPos "marker_27", 2.35, 200, 0] call cbrn_fnc_createZone; //gesamter Tunnel #