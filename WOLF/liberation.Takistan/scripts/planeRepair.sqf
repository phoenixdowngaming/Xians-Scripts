private ["_veh","_vehType"];
_veh = _this select 0;
removeAllActions _veh;
_vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");
if ((_veh isKindOf "plane") && (driver _veh == player)) exitWith { 
	_veh sidechat format ["Servicing %1.", _vehType];
	_veh setFuel 0;
	[repairPad_1,["mech_clamp",15,1]] remoteExec ["say3D",0];
	sleep 5;
	_veh setVehicleAmmo 1;	
	_veh sidechat format ["%1 Rearmed.", _vehType];
	[repairPad_1,["air_wrench",15,1]] remoteExec ["say3D",0];
	sleep 5;
	
	_veh setDamage 0;	
	_veh sidechat format ["%1 Repaired.", _vehType];
	[repairPad_1,["liquid",15,1]] remoteExec ["say3D",0];	
	sleep 5;
	_veh setFuel 1;
	_veh sidechat format ["%1 Refueled.", _vehType];
	sleep 2;
	
	_veh sidechat format ["Service Complete", _vehType];
};


hint "Sully";