setDate [2035, 10, 15, 10, 30];						//Jahr, Monat, Tag, Stunde, Minute wird bei Missionsstart gesetzt (so kann man eine Nachtmission bei hellen 1200 Uhr bearbeiten ohne ständigen wechsel)

//Setup ACEX Fortify
[
	west, 
	1000,
	[
	  ["EFM_wood_wall_2m_single", 1],
	  ["Land_BagFence_Short_F", 1],
	  ["Land_Net_Fence_4m_F", 1],
	  ["Land_Shoot_House_Wall_Long_F", 1],
	  ["Land_Plank_01_4m_F", 1]
	
	]
] call acex_fortify_fnc_registerObjects;