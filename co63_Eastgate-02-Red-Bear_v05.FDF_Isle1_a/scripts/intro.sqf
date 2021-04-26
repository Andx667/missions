if(isNull player) exitWith {};

[format ["%1_blackScreen", missionName], false] call BIS_fnc_blackOut;
sleep 12;
_date = date;
_tYear = _date select 0;
_tMonth = _date select 1;
_tDay = _date select 2;

if (_tMonth < 10) then {_tMonth = format["0%1",_tMonth]};
if (_tDay < 10) then {_tDay = format["0%1",_tDay]};

//get date text
_tDate = format["%1.%2.%3",_tDay,_tMonth,_tYear];

//get time text
_tTimeH = _date select 3;
_tTimeM = _date select 4;

if (_tTimeH < 10) then {_tTimeH = format["0%1",_tTimeH]};
if (_tTimeM < 10) then {_tTimeM = format["0%1",_tTimeM]};

_tTime = format["%1:%2",_tTimeH,_tTimeM];
_DateTime = format["%1 / %2",_tDate,_tTime];

enableSentences false;
showCinemaBorder true;

sleep 0;



sleep 1;
preloadCamera getMarkerPos "cam_pos_01";
sleep 2;
preloadCamera getMarkerPos "cam_pos_02";
sleep 2;
null=[["10-25-2023... "+([([daytime] call BIS_fnc_TimeToString),0,4] call BIS_fnc_trimString),     "Podagorsk","OP: Red Bear","South-East","NATO-BASE"],   0.85,   0.75  ] spawn BIS_fnc_typeText;
preloadCamera getMarkerPos "cam_pos_03";
sleep 2;
preloadCamera getMarkerPos "cam_pos_04";
sleep 2;
preloadCamera getMarkerPos "cam_pos_05";
sleep 2;
//preloadCamera getMarkerPos "cam_pos_06";
//sleep 2;
//preloadCamera getMarkerPos "cam_pos_07";
//sleep 2;

_cam = "camera" camCreate [(getMarkerPos "cam_pos_01" select 0), (getMarkerPos "cam_pos_01" select 1), 25]; 
//if(rain > 0.3 && r3_isNight) then { camUseNVG true; };
_cam camSetTarget kpz_03;
_cam cameraEffect ["internal", "BACK"]; 
_cam camCommit 5;

sleep 3; 

(format ["%1_blackScreen", missionName]) call BIS_fnc_blackIn;

sleep 0.5;
playMusic "intro40";
0 fadeMusic 1;
4 fadeSound 0.5;

sleep 5.5;

_cam camSetPos [(getMarkerPos "cam_pos_02" select 0), (getMarkerPos "cam_pos_02" select 1), 10];
_cam camSetTarget obj_02; 
_cam camCommit 5;

["<t font='PuristaSemiBold' size='2.0'>" + "KAMPAGNE XI<br/>" + "</t>" + "<t color='#a10f2b' size='2.0'>" + "EASTGATE<br/>" + "</t>",0,0.4,3,-1,0,3011] spawn bis_fnc_dynamicText;

sleep 5.5;

_cam camSetPos [(getMarkerPos "cam_pos_02" select 0), (getMarkerPos "cam_pos_02" select 1), 8];
_cam camSetTarget heli_veh_2; 
_cam camCommit 5;

sleep 1;

["<t font='PuristaSemiBold' size='2.0'>" + "TACTICAL TRAINING<br/>" + "</t>" + "<t color='#a10f2b' size='2.0'>" + "TEAM<br/>" + "</t>",0,0.1,3,-1,0,3011] spawn bis_fnc_dynamicText;

sleep 5.5;

_cam camSetPos [(getMarkerPos "cam_pos_03" select 0), (getMarkerPos "cam_pos_03" select 1), 8];
_cam camSetTarget heli_veh_3; 
_cam camCommit 5;

sleep 5.5;

_cam camSetPos [(getMarkerPos "cam_pos_03" select 0), (getMarkerPos "cam_pos_03" select 1), 8];
_cam camSetTarget heli_veh_1; 
_cam camCommit 5;

sleep 5.5;

["<t font='PuristaSemiBold' size='2.0'>" + "OP: RED BEAR<br/>" + "</t>" + "<t color='#a10f2b' size='1.25'>" + "MISSION 02<br/>" + "</t>",0,0.2,3,-1,0,3011] spawn bis_fnc_dynamicText;

_cam camSetPos [(getMarkerPos "cam_pos_04" select 0), (getMarkerPos "cam_pos_04" select 1), 8];
_cam camSetTarget fass_01; 
_cam camCommit 5;


//["<t font='PuristaSemiBold' size='2.2'>" + "Kampagne XI<br/>" + "</t>" + "<t color='#a10f2b' size='2.75'>" + "EASTGATE<br/>" + "</t>",0,0.4,3,-1,0,3011] spawn bis_fnc_dynamicText;
//["<t font='PuristaSemiBold' size='2.0'>" + "TACTICAL TRAINING<br/>" + "</t>" + "<t color='#a10f2b' size='2.0'>" + "TEAM<br/>" + "</t>",0,0.1,3,-1,0,3011] spawn bis_fnc_dynamicText;
//["<t font='PuristaSemiBold' size='1.5'>" + "OP: Snow Crawler<br/>" + "</t>" + "<t size='1.0'>" + "Mission 05<br/>" + "</t>",0,0.2,3,-1,0,3011] spawn bis_fnc_dynamicText;
sleep 4;


_pname = name player;
_output =
"<t shadow='2' size='1' font='PuristaMedium'>WILLKOMMEN IM DIENST,<br/>" +_pname + "</t><br/>";
[_output, 0, 0.85, 12, 8, 0, 1001] spawn BIS_fnc_dynamicText;

sleep 10;

_cam cameraEffect ["terminate","back"]; 
camDestroy _cam;
enableSentences true;

20 fadeMusic 0;
2 fadeSound 1;

