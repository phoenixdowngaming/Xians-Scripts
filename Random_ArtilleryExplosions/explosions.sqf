fnc_xian_RandomBomb = {
	_marker = _this select 0;
	_pos = [[[getMarkerPos _marker, 25]],[]] call BIS_fnc_randomPos;
	_randomBomb = selectRandom ["Bo_Mk82","Bo_GBU12_LGB","R_60mm_HE","HelicopterExploSmall","HelicopterExploLarge"];
	_bomb = _randomBomb createVehicle _pos;
	//hint format ["Marker = %1\nBomb = %2\nPosition = %3",_marker,_randomBomb,_pos];
};

_randomMarker = selectRandom ["boom_1","boom_2","boom_3","boom_4","boom_5","boom_6","boom_7","boom_8"];
[_randomMarker] call fnc_xian_RandomBomb;

//////////IF YOU WANT IT TO LOOP, UNCOMMENT THESE LINES
//sleep (random 5);
//0=[] execVM "explosions.sqf";
/*TO END THE LOOP, SIMPLY ADD AN EXIT CONDITION BEFORE THE FUNCTION (LINE #1) SUCH AS:

if (!alive arty1 && !alive arty2) exitWith {
	hint "artillery is dead"
	};
*/
//THIS WOULD END THE LOOP AFTER TWO UNITS, NAMED ARTY1 AND ARTY2 ARE DESTROYED