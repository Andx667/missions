/*
 copied from G. Wagner OP Thesaurus
*/

if(isServer) then {
params ["_myVeh1"];

for "_i" from 1 to 5 do 
	{
		[_myVeh1] spawn compile preprocessFileLineNumbers "scripts\dropAmmo.sqf";
		// null = [_myVeh1] execVM "scripte\dropAmmo.sqf";
		sleep 0.5;
	};
};