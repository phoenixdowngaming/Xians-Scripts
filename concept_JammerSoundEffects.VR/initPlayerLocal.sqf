/*
This section makes the script incredibly user friendly. Instead of giving every single jammer a variable
and using an array to declare it, we simply take a few extra seconds at load time to gather data on ALL data terminals
in the mission and add the effect to them
*/

{
	[[_x]] execVM "scripts\TFARjamRadios.sqf";
} forEach (allMissionObjects "Land_DataTerminal_01_F")

