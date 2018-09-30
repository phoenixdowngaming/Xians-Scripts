Dukes_Speed_Adjuster_fnc = {
	while {true} do {
		if (underwater player) then {
			player setAnimSpeedCoef 3;
				} else {
					overLand = !(position player isFlatEmpty [-1, -1, -1, -1, 0, false] isEqualTo []);
					gradAngle = [getPos player, getDir player] call BIS_fnc_terrainGradAngle;
					if (overLand && gradAngle >= 18) then {
						player setAnimSpeedCoef 3;
							} else {
								player setAnimSpeedCoef 1;
							};
					};
				//hintSilent format ["Is UnderWater? %1\n Overland variable: %2\n gradAngle variable: %3\nPlayer Anim Speed: %4",(eyePos player select 2), overland, gradAngle,(getAnimSpeedCoef player)];
			sleep 0.50; 
		};
	};
	
[] call Dukes_Speed_Adjuster_fnc;
