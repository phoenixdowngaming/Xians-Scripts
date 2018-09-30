private _jammer = _this select 0;											//The Jammer device itself
private _jamsource = nearestObject [_jammer,"Land_HelipadEmpty_F"];			//the sound effect source
private _jamDamage = getDammage _jammer;									//the jammers current damage

deleteVehicle _jamsource;													//stops the sound regardless of loop or length of sound effect
_jammer setDamage 0.75;														//set damage, can be any value really but I chose 75%
[_jammer,"green","green","green"] call BIS_fnc_DataTerminalColor;			//change the colors from red to green to let player now its "safe"
[_jammer,0] call BIS_fnc_dataTerminalAnimate;								//animate the box to Close, giving visually feedback to the player
[_jammer,["power_down",25,1]] remoteExec ["say3D",0];						//play the power down sound effect directly from the jammer itself

player setVariable ["tf_receivingDistanceMultiplicator", 1];				//variable used to turn radios back on
player setVariable ["tf_transmittingDistanceMultiplicator", 1];				//variable used to turn radios back on


