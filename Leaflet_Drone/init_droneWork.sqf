_isDroneUp = missionNameSpace getVariable "IsDroneUp";
if (_isDroneUp) exitWith {hint "Done is Already Up!"};
if (!_isDroneUp) then {
	_playerList = [];
	{_playerList pushBack _x} forEach allPlayers;
	_droneTarget = selectRandom _playerList;
	_pos = [_droneTarget, 40,80,20, 0, 0.25, 0] call BIS_fnc_findSafePos;
	drone = "C_UAV_06_F" createVehicle [_pos select 0, _pos select 1,10];
	createVehicleCrew drone;
	drone flyinHeight 8.5;
	drone allowdamage false;

	/*//NEED MORE WORK ON THE RESET CHECK
	
	_time = time + 30;
	while {(missionNameSpace getVariable "IsDroneUp")} do {
		if (time > _time) then {
			hint "Resetting Drone";
			deleteVehicle drone;
			missionNameSpace setVariable ["IsDroneUp",false];
			publicVariable "IsDroneUp";	
			[] execVM "init_droneWork.sqf";
			sleep 0.2;
			}
	};
	*/
	_randomLeaflet = selectRandom ["1Rnd_Leaflets_West_F","1Rnd_Leaflets_East_F","1Rnd_Leaflets_Guer_F","1Rnd_Leaflets_Civ_F","1Rnd_Leaflets_Custom_01_F","1Rnd_Leaflets_Custom_02_F","1Rnd_Leaflets_Custom_03_F"];
	//NEEDS NEW LEAFLET UPLOADS TO CAPTURE _CO PARAMETER
	
	drone addMagazine _randomLeaflet;
	drone addWeapon "Bomb_Leaflets";
	hint format ["Drone Target = %1\n\nPosition = %2\n\nDrone = %3\n\nPlayer List = %4\n\nLeaflet = %5\n\nMag Count = %6\n\nDrone Variable = %7",_droneTarget,_pos,drone,_playerList,_randomLeaflet,count (magazines drone),_isDroneUp];
	_wp1 = group drone addWaypoint [_droneTarget, 0];
	_wp1 setWaypointStatements ["true","drone fire 'Bomb_Leaflets'"];
	waitUntil {(count (magazines drone)) == 0};
	drone flyinHeight 40;
	_wp2 = group drone addWaypoint [[0,0,0], 0];
	_wp2 setWaypointStatements ["true","deleteVehicle drone"];
	missionNameSpace setVariable ["IsDroneUp",true];
	publicVariable "IsDroneUp";
	//NEEDS MORE WORK ON THE END CYCLE VVV
	sleep 30 + (random 30);
	hint "Drone Ready";
	deleteVehicle drone;
	missionNameSpace setVariable ["IsDroneUp",false];
	publicVariable "IsDroneUp";	
};

