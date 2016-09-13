{
    if (random 1 < 0.15) then {
        _x addEventHandler ["FiredNear", {
            params ["_unit", "_shooter", "_distance"];
            if (
                _distance > 25 ||
				(isPlayer _unit) ||
                {_unit getVariable ["hasTarget", false]} ||
                {side _shooter == civilian}
            ) exitWith {};
 
            _weapon = selectRandom ["hgun_ACPC2_F", "hgun_P07_F", "hgun_P07_F", "hgun_Rook40_F"];
            _mag = selectRandom (getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines"));
 
            _unit addMagazine _mag;
            _unit addWeapon _weapon;
            
            [_unit] joinSilent createGroup sideEnemy;
            _unit allowFleeing 0;
            _unit setSkill ["courage", 1];
            _unit reveal [_shooter, 3.75];
 
            _unit setVariable ["hasTarget", true];
            [_unit, _shooter, _weapon] spawn {
                params ["_unit", "_shooter", "_weapon"];
                waitUntil {
                    sleep 0.1;
                    !alive _unit ||
                    {_shooter distance _unit > 50}
                };
                _unit setVariable ["hasTarget", false];
                _unit removeWeapon _weapon;
            };
        }];
    };
} forEach (allUnits select {side _x == civilian});
sleep 60;

0 = [] execVM "concealed_carry.sqf";