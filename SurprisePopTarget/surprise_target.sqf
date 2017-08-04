_tc = missionNameSpace getVariable "TargetCount";
_tc = _tc + 1;
missionNameSpace setVariable ["TargetCount",_tc];

if (_tc < 2) exitWith {};

target_3 animate ["terc",0];
target_3 addEventHandler ["Hit",{
		_tc = 0;
		missionNameSpace setVariable ["TargetCount",_tc];
		target_3 animate ["terc",1];
		target_3 removeEventHandler ["Hit", 0]
	}
];

