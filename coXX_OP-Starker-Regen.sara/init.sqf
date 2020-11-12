// Streamator
enableSaving [false, false];
enableEnvironment [false, true];
enableSentences false;
if !(isNil "CLib_fnc_loadModules") then { call CLib_fnc_loadModules; };

JK_UAVOperator connectTerminalToUAV JK_UAV;
JK_UAV lockCameraTo [JK_UAVOperator, [0]];

JK_UAVOperator_1 connectTerminalToUAV JK_UAV_1;
JK_UAV_1 lockCameraTo [JK_TANK, [0]];

//Exec Vcom AI function
[] execVM "vcom\vcomInit.sqf";
//End of Vcom commands
