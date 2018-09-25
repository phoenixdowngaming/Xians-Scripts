[
    switch_1,
    "Reset Power",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "_this distance _target < 5",
    "_caller distance _target < 5",
    {},
    {},
    {
        missionNameSpace setVariable ["LightsAreOut_One",true];
        publicVariable "LightsAreOut_One";
		[switch_1,["power_Up",10,1]] remoteExec ["say3D",0];
    },
    {},
    [],
    3,
    0,
    true,
    false
] remoteExec ["BIS_fnc_holdActionAdd",0,switch_1]; 

[
    switch_2,
    "Reset Power",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
    "_this distance _target < 5",
    "_caller distance _target < 5",
    {},
    {},
    {
        missionNameSpace setVariable ["LightsAreOut_One",true];
        publicVariable "LightsAreOut_One";
		[switch_2,["power_Up",10,1]] remoteExec ["say3D",0];
    },
    {},
    [],
    3,
    0,
    true,
    false
] remoteExec ["BIS_fnc_holdActionAdd",0,switch_2]; 