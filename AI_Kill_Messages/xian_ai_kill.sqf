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
_distance	= round (_unit distance _killer);

_killMsg = ["AI WACKED","AI CLIPPED","AI ERASED","AI WRECKED","AI NEUTRALIZED","AI SNUFFED","AI WASTED"] call BIS_fnc_selectRandom;
_killMsgRoad = ["ROADKILL","FENDER BENDER","ROAD RAGE","SPLATTERED","NEW PAINT JOB"] call BIS_fnc_selectRandom;

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
		case (true) : {hint format ["%1\n\n%2\n\n%3", _killMsg,_distance];};
		case (false) : {hint format ["%1\n\n%2\n\n%3", _killMsgRoad,_distance];};
	};
