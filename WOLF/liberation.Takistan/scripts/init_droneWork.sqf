_isDroneUp = missionNameSpace getVariable "IsDroneUp";
if (_isDroneUp) exitWith {hint "Done is Already Up!"};
if (!_isDroneUp) then {

	//Set Drone Variable true to make sure it never duplicates such as when a player joins the server eventually
	missionNameSpace setVariable ["IsDroneUp",true];
	publicVariable "IsDroneUp";

	//Find a player and a safe spot to spawn the drone
	_playerList = [];
	{_playerList pushBack _x} forEach allPlayers;
	_droneTarget = selectRandom _playerList;
	_pos = [_droneTarget, 40,80,20, 0, 0.25, 0] call BIS_fnc_findSafePos;
	
	//spawn the drone
	drone = "C_UAV_06_F" createVehicle [_pos select 0, _pos select 1,10];
	createVehicleCrew drone;
	drone flyinHeight 8.5;
	drone allowdamage false;

	//Give the drone a random leaflet
	_randomLeaflet = selectRandom ["1Rnd_Leaflets_West_F","1Rnd_Leaflets_East_F","1Rnd_Leaflets_Guer_F","1Rnd_Leaflets_Civ_F","1Rnd_Leaflets_Custom_01_F","1Rnd_Leaflets_Custom_02_F"];
	drone addMagazine _randomLeaflet;
	drone addWeapon "Bomb_Leaflets";
		//debug
	//hint format ["Drone Target = %1\n\nPosition = %2\n\nDrone = %3\n\nPlayer List = %4\n\nLeaflet = %5\n\nMag Count = %6\n\nDrone Variable = %7",_droneTarget,_pos,drone,_playerList,_randomLeaflet,count (magazines drone),_isDroneUp];
	
	//Give the drone directions to the player
	_wp1 = group drone addWaypoint [_droneTarget, 0];
	_wp1 setWaypointStatements ["true","drone fire 'Bomb_Leaflets'"];
	waitUntil {(count (magazines drone)) == 0};
	
	//Give the drone directions once they've released payload
	drone flyinHeight 40;
	_wp2 = group drone addWaypoint [[0,0,0], 0];
	
	//End the cycle and enter sleep mode before firing script again
	//sleep 20 + (random 30); //Debug sleep time
	sleep 1800 + (random 1800); //True sleep time
		//debug
	//hint "Drone Ready";
	deleteVehicle drone;
	missionNameSpace setVariable ["IsDroneUp",false];
	publicVariable "IsDroneUp";	
	[] execVM "init_droneWork.sqf";
};




//VVVVV NOT READY VVVVV
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
};^^^^^^^^^ NOT READY ^^^^^^^^^*/
