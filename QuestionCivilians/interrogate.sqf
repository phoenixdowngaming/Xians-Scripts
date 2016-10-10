_unit = _this select 0;
_player = _this select 1;

_rawEC = [];
{
	if ((_x distance _unit) < 200) then 
	{
		_rawEC pushback _x;
		_id = format ["enemyCountid%1", _x];
		_text = "Enemy Last Known";
		_mkr = createMarker [_id, getPosAsl _x];
		_mkr setMarkerShape "ICON";
		_mkr setMarkerType "hd_warning";
		_mkr setMarkerText _text;
		_mkr setMarkerColor "colorRed";
		_mkr setMarkerAlpha 0.5;
		_x addEventHandler ["Killed",
			{
				_victim = (_this select 0);
				_killer = (_this select 1);
				_nearestMarker = [allMapMarkers, _victim] call BIS_fnc_nearestPosition;
				_killedtext = format ["Killed by %1", name _killer];
				_nearestMarker setMarkerColor "colorGreen";
				_nearestMarker setMarkerText _killedtext;
			}];
	};
} forEach (allUnits select {side _x == east});

_rawEC;
_enemyCount = count _rawEC;
hintSilent format ["Enemy Count New Code: %1", _enemyCount];
if (_enemyCount < 1) exitWith {hint "Sorry, I haven't seen anyone around except for you"; _unit playMove "";};
_unit playMove "Acts_CivilTalking_1";


//////////////////////////////////////
/*
NEEDS WORK ON ANIMATIONS SO THAT IF CIVILIAN IS KILLED DURING QUESTIONING, EXITS THE ANIMATION AND ACTUALLY DIES.