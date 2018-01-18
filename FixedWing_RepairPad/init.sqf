fnc_xian_vehicleCheck = {
	_veh = _this select 0;
	_positiion = _this select 1;
	_unit = _this select 2;
	if (vehicle _unit isKindof "Plane") then {[_veh,_positiion,_unit]call fnc_xian_AddAction} else {};
};

fnc_xian_AddAction = {
	_veh = _this select 0;
	_positiion = _this select 1;
	_unit = _this select 2;
	_unit addAction ["Repair/Rearm/Refuel",{
		_localVeh = _this select 0;
		_unit =_this select 1;
		_action = _this select 2;
		[_localVeh,_unit,_action] call fnc_xian_checkDistance;
	},[1],0,false,true,"","player in _target"];
};

fnc_xian_checkDistance = {
	_veh = _this select 0;
	_unit= _this select 1;
	_action = _this select 2;
	_maxDist = 10;
	_repairPad = repairPad_1;
	if ((_veh distance _repairPad) <= _maxDist) then {0=[_veh] execVM "scripts\planeRepair.sqf";} else {
		hint format ["You are too far from a repair pad. Move %1 meters closer to begin servicing!",(floor (_veh distance _repairPad) -10)];
	}
};

fnc_xian_respawnEH = {
	_unit = _this select 0;
	_unit addEventhandler ["GetInMan",{call fnc_xian_vehicleCheck}];
};