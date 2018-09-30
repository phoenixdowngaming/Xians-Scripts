Duke_AddToZeus_fnc = {
	if ( !isNull(findDisplay 312) ) then {
		{
			[_x addCuratorEditableObjects [allUnits,true]] remoteExec ["bis_fnc_call",0];
			[_x addCuratorEditableObjects [vehicles,true]]; remoteExec ["bis_fnc_call",0];
		} forEach allCurators;
	};
};

[] call Duke_AddToZeus_fnc;