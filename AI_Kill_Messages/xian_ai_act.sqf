{
	_x addEventHandler ["Killed",{ [(_this select 0), (_this select 1)] execVM "xian_ai_Kill.sqf";}];
} forEach (allUnits select {side _x == east});