_health = _this select 0;

if !(isNull objectParent player) exitWith {
	_playervehicle = objectParent player;
	[_health] execVM "AL_snowstorm\heat_gain.sqf";
};

player setDamage [(_health + 0.008),true];
_displayHealth = floor (100 - (_health * 100));
hintSilent format ["You are too cold! Find shelter!\n\nCurrent Health at %1\n\nReal Health = %2",_displayHealth,_health];




/*

	switch (_displayHealth) do {
		case ((_displayHealth < 100) && (_displayHealth > 86)) : {hintSilent "Temp between 100 and 86"}; 
		case ((_displayHealth < 86) && (_displayHealth > 68)) : {hintSilent "Temp between 86 and 68"}; 
		};