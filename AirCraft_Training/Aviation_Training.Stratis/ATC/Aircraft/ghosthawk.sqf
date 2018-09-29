hint "Ghost Hawk List";

_screen = ATC_screen;
removeAllActions _screen;
_ghostHawks = [gh_1,gh_2,gh_3,gh_4,gh_5];

{
	_vehVarname = str formatText ["Ghost Hawk (%1)", (vehicleVarName _x)];
	format [_screen addAction [_vehVarname,"ATC\Aircraft\create_cam.sqf",[_x]],_x];
} forEach _ghostHawks;

_screen addAction ["Back to List","ATC\aircraft_list.sqf"];