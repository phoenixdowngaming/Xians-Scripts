enableSaving [ false, false ];

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call compileFinal preprocessFileLineNumbers "scripts\shared\liberation_functions.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_sectors.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_liberation_config.sqf";
[] call compileFinal preprocessFileLineNumbers "presets\init_presets.sqf";

[] execVM "Vcom\VcomInit.sqf";//VCOM 3.0 AI

[] execVM "GREUH\scripts\GREUH_activate.sqf";
//[] execVM "scripts\init_droneWork.sqf";

[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
	[] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
	[] spawn compileFinal preprocessFileLineNumbers "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
	waitUntil {alive player};
	if (debug_source != name player) then {debug_source = name player};
	[] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
} else {
	setViewDistance 1600;
};
[] execVM "scripts\lessExplosions.sqf";
enableSentences false;
showSubtitles false;

//Xian JetService
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