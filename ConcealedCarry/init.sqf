{
	if (side _x == civilian) then 
	{
		_x addEventHandler ["FiredNear", 
			 {
				_shooter = _this select 1;//unit that fired near the civilian
				_distance = _this select 2;//how far away was the shooter from the civilian
				if (_distance < 20) then {[_this select 0,_this select 1] execVM "concealed_carry.sqf"} else {};//if the shooter is less than 20m, civilian will draw on weapon
			 } 
		];
	}
} forEach AllUnits;
