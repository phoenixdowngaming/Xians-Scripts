_jammer = _this select 0;//The Jammer device itself
_jamsource = nearestObject [_jammer,"Land_HelipadEmpty_F"]; //The sound source
removeAllactions _jammer;//Remove action on box so we dont have multiple people turning them off
[_jammer,"green","green","green"] call BIS_fnc_DataTerminalColor;//change the colors from red
[_jammer,0] call BIS_fnc_dataTerminalAnimate;//animate the box to Close
deleteVehicle _jamsource;//deleting the sound source makes the sound cut off regardless of where it is in its loop
hint format ["Jammer Disabled\n\nRadio's Online"];//affirmation for the player the shut it down
_jammer say3D "power_down";
_jammer say3D "power_down";//here we play the power down sound twice to get it a slightly louder effect
player setVariable ["tf_receivingDistanceMultiplicator", 1];
player setVariable ["tf_transmittingDistanceMultiplicator", 1];//variable used to turn radios back on
