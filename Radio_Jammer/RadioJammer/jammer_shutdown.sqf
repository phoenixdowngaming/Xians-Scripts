private _jammer = _this select 0;											//The Jammer device itself
private _jamsource = nearestObject [_jammer,"Land_HelipadEmpty_F"];			//the sound effect source
private _jamDamage = getDammage _jammer;									//the jammers current damage
private _jamPos = getPos _jammer;											//jammers position
private _jamDir = getDir _jammer;											//jammers direciton

deleteVehicle _jamsource;													//stops the sound effect
_jammer setDamage 0.75;														//set damage to trigger L.22 in jammer_Check.sqf
[_jammer,"green","green","green"] call BIS_fnc_DataTerminalColor;			//aesthetics
[_jammer,0] call BIS_fnc_dataTerminalAnimate;								//animate the box to Close
[_jammer,["power_down",25,1]] remoteExec ["say3D",0];						//play the power down sound effect 
sleep 4;																	//delay script for 4 seconds
_jamDummy = "Land_DataTerminal_01_F" createVehicle [0,0,0];					//spawn a 'dummy' data terminal
_jamDummy setDir _jamDir;													//face the dummy in the same direction as jammer
_jamDummy setPos _jamPos;													//position dummy in jammers spot
deleteVehicle _jammer;														//delete jammer to stop jamming (dummy in place)

{
	_x setVariable ["tf_receivingDistanceMultiplicator", 1];
	_x setVariable ["tf_transmittingDistanceMultiplicator", 1];	
} forEach allPlayers;														//double check to ensure jamming code is off
