/*
 copied from G. Wagner OP Thesaurus
*/

params ["_myVeh"];

if ((getPosATL(_myVeh) select 2) > 35) then							// h1 = Fahrzeug / Mindest Abwurfhöhe (hier 0)
	{
	private _para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];
	_para setPosATL (_myVeh modelToWorld[0,0,-35]);           						//wo Objekt spawnt
	private _ammoBoxOrVeh = createVehicle ["CFP_B_DEARMY_WDL_SupplyBox", [0,0,80], [], 0, ""];     					//was spawnt, höhe nicht relevant
	_ammoBoxOrVeh attachTo [_para,[0,0,0]];

	//Inhalt der Ammo Box

	clearWeaponCargo _ammoBoxOrVeh;
	clearMagazineCargo _ammoBoxOrVeh; 
	clearItemCargo _ammoBoxOrVeh;    

	_ammoBoxOrVeh addMagazineCargoGlobal ["hlc_30rnd_556x45_T_PMAG", 8];    
	_ammoBoxOrVeh addMagazineCargoGlobal ["hlc_30rnd_556x45_M_PMAG", 24];
	_ammoBoxOrVeh addMagazineCargoGlobal ["hlc_200rnd_556x45_M_SAW", 10];
	_ammoBoxOrVeh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];  
	_ammoBoxOrVeh addItemCargoGlobal ["ACE_fieldDressing", 24];
	_ammoBoxOrVeh addItemCargoGlobal ["ACE_packingBandage", 16]; 
	_ammoBoxOrVeh addItemCargoGlobal ["rnt_mg3_kasten_fake", 4];
	_ammoBoxOrVeh addItemCargoGlobal ["ACE_morphine", 8];        
	_ammoBoxOrVeh addItemCargoGlobal ["BWA3_RGW90_Loaded", 2];
	_ammoBoxOrVeh addItemCargoGlobal ["ACE_salineIV_250", 10];  
	_ammoBoxOrVeh addItemCargoGlobal ["ACE_SurgicalKit", 5];    
	
	 //Land safely if stuck in tree

	private _ammoBoxOrVehOldPos = getPosATL _ammoBoxOrVeh;
	sleep 55;
	private _ammoBoxOrVehCurPos = getPosATL _ammoBoxOrVeh;
	waitUntil{
		_ammoBoxOrVehCurPos = getPosATL _ammoBoxOrVeh;
		sleep 5;
		if (isNull _para) then {true} 
			else {if (_ammoBoxOrVehOldPos distance _ammoBoxOrVehCurPos < 2) 
			then {_ammoBoxOrVehCurPos set [2,0]; detach _ammoBoxOrVeh; _ammoBoxOrVeh setPosATL _ammoBoxOrVehCurPos; true}
			else {_ammoBoxOrVehOldPos = _ammoBoxOrVehCurPos; false};}
			};

	//Signale um Box zu finden

	private _signal1 = "SmokeShellYellow" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;			//Rauchgranate
	private _signal2 = "F_40mm_Red" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;					//Flare Granate
	sleep 30;
	private _signal5 = "F_40mm_Red" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;					//Flare Granate
	sleep 30;
	private _signal3 = "SmokeShellRed" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;				//Rauchgranate
	private _signal6 = "F_40mm_Red" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;					//Flare Granate
	sleep 8;
	private _signal4 = "F_40mm_Red" createVehicle position _ammoBoxOrVeh; _ammoBoxOrVeh allowDamage false;					//Flare Granate
	};
