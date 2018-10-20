private _vehicle = _this select 0;			//the vehicle you get in
private _role = _this select 1;				//what role you of the vehicle you got into (driver, commander, gunner etc)
private _unit = _this select 2;				//the player basically
private _turret = _this select 3;			//specifies the turret position if your vehicle has any, I didn't use this at all but its passed automatically
private _pilotList = ["B_Helipilot_F"];		//your list of approved pilot classes
private _crewList = ["B_crew_F"];			//your list of approved crew classes

isPilot = (typeOf _unit) in _pilotList;		//returns true or false
isCrewman = (typeOf _unit) in _crewList;	//returns true or false

hintSilent format ["%1\n%2\n%3\n%4",_vehicle,_role,_unit,_turret];	//used for DEBUG info


xian_fnc_restrictedSeat = {
	player action ["GETOUT", (vehicle player)];	
	systemChat format ["%1, you are not authorized to use this vehicle.",(name player)];
};

xian_fnc_unrestrictedSeat = {
	systemChat "Be Safe";
};

if(vehicle player != player) then {										//is the player IN the vehicle yet?
	if (_vehicle isKindof "AIR")  then {	//is the vehicle a type of aircraft AND player is driving?vehicle, helicopter, jet etc etc
		if (!isPilot) then {											//was he in the approved pilots list?
			switch (_role) do {
				case "driver": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "gunner": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "commander": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "cargo" : {[] spawn xian_fnc_unrestrictedSeat;};
			};
		};
		if (isPilot) then {												//if he WAS in the approved list, continue on!
		systemChat "Safe skies, Pilot!";								//visual feedback
		};
	};

	if (_vehicle isKindof "TANK") then {	//is the vehicle a type of tank AND player is driving?
		if (!isCrewman) then {											//was he in the approved pilots list?
		switch (_role) do {
				case "driver": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "gunner": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "commander": {[_vehicle] spawn xian_fnc_restrictedSeat;};
				case "cargo" : {[] spawn xian_fnc_unrestrictedSeat;};
			};
		};
		if (isCrewman) then {											//if he WAS in the approved list, continue on!
		systemChat "Safe travels, Crewman!";							//visual feedback
		};
	};
};