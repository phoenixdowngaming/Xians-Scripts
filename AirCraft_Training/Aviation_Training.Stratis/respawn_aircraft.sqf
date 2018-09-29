_vehicle = _this select 0;
_respawntime = 15;
_facingofvehicle = getDir _vehicle;
_positionofvehicle = getPosATL _vehicle;
_vehicletype = typeOf _vehicle;
_vehicleName = vehicleVarName _vehicle;
//DEBUG
//hint format ["%1\n%2\n%3\n%4\n%5\n%6",_vehicle,_respawntime,_facingofvehicle,_positionofvehicle,_vehicletype,_vehicleName];
if(isServer) then{
	while {true} do { //Loop forever
		if((!alive _vehicle) || (!canMove _vehicle)) then 
		{
			waitUntil {count crew _vehicle == 0};
			deleteVehicle _vehicle;
			sleep _respawntime;
			_vehicle = _vehicletype createVehicle _positionofvehicle;
			_vehicle setPosATL _positionofvehicle;
			_vehicle setDir _facingofvehicle;
			missionNamespace setVariable [_vehicleName, _vehicle];
			publicVariable _vehicleName;
		};
		sleep 15;
	};
};