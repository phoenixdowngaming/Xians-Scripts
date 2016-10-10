{
	removeAllactions _x;
	_x addAction ["Question Civilian","interrogate.sqf",[],1,false,true,"","_this distance _target < 2"];

} forEach (allUnits select {side _x == civilian});

