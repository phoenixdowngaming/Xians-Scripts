
{
	_handle = [_x] execVM "scripts\intel_fileOne.sqf";
} forEach (allMissionObjects "Intel_File1_F");

{
	_handle = [_x] execVM "scripts\intel_fileTwo.sqf";
} forEach (allMissionObjects "Intel_File2_F");