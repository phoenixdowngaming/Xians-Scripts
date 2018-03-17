
{
	_handle = [_x] execVM "scripts\intel_fileOne.sqf";
} forEach (allMissionObjects "Intel_File1_F");

{
	_handle = [_x] execVM "scripts\intel_fileTwo.sqf";
} forEach (allMissionObjects "Intel_File2_F");

if (isServer) then {
	this setVariable ["RscAttributeDiaryRecord_texture","a3\structures_f_epc\Items\Documents\Data\document_secret_01_co.paa", true];
	[this,"RscAttributeDiaryRecord",["Top Secret Documents","These documents reveal all the information regarding the experiments they were doing here! It's hard to make out but the words 'Wormhole',  and 'Entity' keep showing up a few times....We better get his back to HQ for further study.",""]] call bis_fnc_setServerVariable;
	this setVariable ["recipients", west, true];
};`