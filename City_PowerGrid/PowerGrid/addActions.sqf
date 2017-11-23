[
    power_gen,
    "Shutdown Power Grid",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "_this distance _target < 5",
    "_caller distance _target < 5",
    {},
    {},
    {
        missionNameSpace setVariable ["LightsAreOut_One",true];
        publicVariable "LightsAreOut_One";
        deleteVehicle sound_gen1;
		[power_gen,["power_down",10,1]] remoteExec ["say3D",0];
    },
    {},
    [],
    3,
    0,
    true,
    false
] remoteExec ["BIS_fnc_holdActionAdd",0,power_gen]; 