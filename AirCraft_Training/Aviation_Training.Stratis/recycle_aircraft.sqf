_trg = _this select 0;

_myHelicopters = [lb_1,lb_2,lb_3,lb_4,lb_5,mb_1,mb_2,mb_3,mb_4,mb_5,uh_1,uh_2,uh_3,uh_4,uh_5,gh_1,gh_2,gh_3,gh_4,gh_5,CO_1,CO_2,CO_3,CO_4,CO_5,AP_1,AP_2,AP_3,AP_4,AP_5,CH_1,CH_2,CH_3,CH_4,CH_5,UH60_1,UH60_2,UH60_3,UH60_4,UH60_5,SK_1,SK_2,SK_3,SK_4,SK_5];

_trg setVariable ["checkVehicles",_myHelicopters];
while {triggerActivated _trg} do {
	sleep 0.5;
	_trglist = +(list _trg);
	{
		if (_x in _trglist) then {
			//do your stuff here _x being each individual vehicle
			_unit = (driver _x);
			_unit action ["GETOUT",_x];
			hint format["%1 in trig1 and %2",_x,_unit];
			_unit attachTo [pilot_anchor,[0,0,0]];
			sleep 1.50;
			_x attachTo [remcycler,[0,0,0]];
			detach _unit;
			detach _x;
			sleep 0.75;
			_x setDamage 1;
			//remove each vehicle from the list so you only process it once
			_myHelicopters = _myHelicopters - [_x];
			_trg setVariable ["checkVehicles",_myHelicopters];

			//put vehicle back in list once it has left the trigger
			_handle = [_x, _trg] spawn {
				private ["_trg","_trglist"];
				_veh = _this select 0;
				_trg = _this select 1;
				_trglist = list _trg;
				waitUntil{!(_veh in _trglist)};
				_myHelicopters = _trg getVariable "checkVehicles";
				_myHelicopters set [count _myHelicopters, _veh];
				_trg setVariable ["checkVehicles",_myHelicopters];
			}; 
		};
	} forEach _myHelicopters;
	//hint str _myHelicopters;
};















/*hint "Aircraft Recycled";
_player = player;
_list = _this select 0;
hint format ["Aircraft Recycled\n\n%1",_list];
_player action ["Eject",vehicle _list];
{deleteVehicle _x} forEach _list;

*/