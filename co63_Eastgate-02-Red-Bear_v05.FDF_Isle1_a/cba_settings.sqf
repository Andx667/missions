// ACE Gehör
force ace_hearing_disableEarRinging = true;
//============================================

// ACE Sanitäter

force ace_medical_statemachine_cardiacArrestTime = 900;      				//Lifetime 15 min nach Herzstillstand oder ausbluten (Standard wären 1200)
force ace_medical_treatment_medicEpinephrine = 1;  							//Wer darf Epi verabreichen (0: Jeder| 1: Medics| 2: Doctors)    
force ace_medical_treatment_medicSurgicalKit = 2; 							//Wer darf Nähkits verwenden (0: Jeder| 1: Medics| 2: Doctors)
force ace_medical_treatment_locationSurgicalKit = 2;     					//Wo darf das Nähkit verwendet werden (0: Anywhere| 1: med. vehicles| 2: med. fecilities| 3: med. vehicles & facilities| 4: disabled)
force ace_medical_treatment_consumePAK = 0; 								//PAK wird nach gebrauch entfernt (0 für endlose Nutzung)(Standard wäre 1) 
             
//ACE Logistik

force ace_refuel_rate = 0.75;  												//Betankung mit Faktor 0.75 

//ACE Cookoff
force ace_cookoff_enableAmmobox = false;

//HC
force acex_headless_enabled = true;
force acex_headless_delay = 15;
