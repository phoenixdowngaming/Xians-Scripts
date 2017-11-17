_health = _this select 0;
_displayHealth = floor (100 - (_health * 100));

if !(isNull objectParent player) exitWith {
	_playervehicle = objectParent player;
	_isVehicleEngineOn = isEngineOn _playervehicle;
	_displayHealth = floor (100 - (_health * 100));

	
	if (_isVehicleEngineOn) exitWith {
		_health = getDammage player;
		player setDamage [(_health - 0.005),true];
		hintSilent format ["You are warming up using your vehicle's heaters!\n\n\nCurrent Health at %1\n\nReal Health = %2",_displayHealth,_health];
	};
	hintSilent format ["You are out of the cold but not warming up!\nTurn your vehicle's Engine on to use the heaters!\n\n\nCurrent Health at %1\n\nReal Health = %2",_displayHealth,_health];
};
player setDamage [(_health - 0.005),true];
_displayHealth = floor (100 - (_health * 100));
hintSilent format ["Out of the Cold and Warming up!\n\nCurrent Health at %1\n\nReal Health = %2",_displayHealth,_health];

