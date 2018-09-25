_jammer = _this select 0;
_jamSource = "Land_HelipadEmpty_F" createVehicle position _jammer;
removeAllactions _jammer;
[_jammer,"red","purple","red"] call BIS_fnc_DataTerminalColor;
[_jammer,3] call BIS_fnc_dataTerminalAnimate;

hint format ["Jammer Enabled\n\nRadio's Offline"];
_jammer say3D "jammer_loop";

player setVariable ["tf_receivingDistanceMultiplicator", 0];
player setVariable ["tf_transmittingDistanceMultiplicator", 0];
while {true} do {
		if ((player distance _jammer) < 25) then
	{
		_jamsource say3D ["jammer_loop",20,0.25];
		sleep 14.65;
	};
};