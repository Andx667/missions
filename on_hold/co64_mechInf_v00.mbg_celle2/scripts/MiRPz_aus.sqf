_kfz = _this select 0;
_ID = _this select 2;
[_kfz, _ID] remoteExec ["removeAction"];

[_kfz, ["Raeumfahrt beginnen", "scripts\MiRPz_an.sqf", [], 6, false, true, "", "true", 3]] remoteExec ["addAction"];
raeumen = false;
publicVariable "raeumen";
// deletevehicle keilerStaub;
// deleteVehicle keilerBrocken;
