{
    if (random 1 < 0.10) then {
        _x addEventHandler ["FiredNear", {
            params ["_unit", "_shooter", "_distance"];
            if (
                _distance > 30 ||
                {_unit getVariable ["hasTarget", false]} ||
                {side _shooter == civilian}||
                {side _shooter == east}
            ) exitWith {};
			
////////////Handle putting on Vest////////////
			_unit setUnitPos "UP";
			_unit addVest "V_TacChestrig_cbr_F";
			_expl = "APERSMine_Range_Ammo" createVehicle position _unit;
			_expl attachTo [_unit, [0, 0.15, 0.15], "Pelvis"];
			_expl setVectorDirAndUp [ [1, 0, 0], [0, 1, 0] ];
			
////////////Handle unit attributes////////////			
            [_unit] joinSilent createGroup sideEnemy;
            _unit allowFleeing 0;
            _unit setSkill ["courage", 1];
            _unit reveal [_shooter, 3.75];
            _unit setVariable ["hasTarget", true];
			
////////////Handle bomber's movements////////////
            [_unit, _shooter,_expl] spawn {
                params ["_unit", "_shooter","_expl"];
                waitUntil {
					_unit doMove (position _shooter);
                    sleep 1;
					!alive _unit ||
                    {_shooter distance _unit < 3}
                };
				if (!alive _unit) exitWith {deleteVehicle _expl;_unit addAction ["Disarm & Remove Vest","s_bomb_disarm.sqf",[],1,false,true,"","_this distance _target < 2"];};
                _unit setVariable ["hasTarget", false];
				detach _expl;
				_expl setDamage 1;
				
            };
        }];
    };
} forEach (allUnits select {side _x == civilian});
sleep 60;

0 = [] execVM "s_bomber.sqf";


