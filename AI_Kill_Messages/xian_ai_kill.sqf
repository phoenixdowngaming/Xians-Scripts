/*
_x addEventHandler ["Killed",{ [(_this select 0), (_this select 1)] execVM "xian_ai_Kill.sqf";}];
*/

private [
"_unit",
"_killer",
"_playerObj",
"_veh",
"_killMsg",
"_killMsgRoad",
"_roadKilled",
"_distance"
];

_unit           = _this select 0;
_killer         = _this select 1;
_playerObj      = objNull;
_roadKilled     = false;
_distance		= round (_unit distance _killer);


_killMsg = ["ENEMY WACKED","ENEMY CLIPPED","ENEMY ERASED","ENEMY WRECKED","ENEMY NEUTRALIZED","ENEMY SNUFFED","ENEMY WASTED","BAD GUY WACKED","BAD GUY CLIPPED","BAD GUY ERASED","BAD GUY WRECKED","BAD GUY NEUTRALIZED","BAD GUY SNUFFED","BAD GUY WASTED"] call BIS_fnc_selectRandom;
_killMsgRoad = ["ROADKILL","FENDER BENDER","ROAD RAGE","SPLATTERED","NEW PAINT JOB","VEHICULAR MANSLAUGHTER","WHOOPSIES","BEEP BEEP","SPEED BUMP"] call BIS_fnc_selectRandom;


if (isPlayer _killer) then
{
	_veh = vehicle _killer;
	_playerObj = _killer;
	if (isNull objectParent _killer)  then
	{
			_playerObj = driver _veh;
			_roadKilled = true;
	};
	
};
switch (_roadKilled) do
	{
		case (true) : {[format["<t size='0.5' color='#FF0000' t shadow='2'>%1<br/>%2 meters</t>",_killMsg, _distance],-0.8,0.8,6,2] spawn BIS_fnc_dynamicText;};
		
	};
