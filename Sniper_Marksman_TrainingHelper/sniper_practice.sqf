////////////////////////////////////
/*
Sniper/Marksman Practice Script
--------------------------------

-----------Step #1
In YOUR  player's INIT, paste the following code:

[player, 1] spawn BIS_fnc_traceBullets;

This will active visible bullet trajectory so you can see the angle and position of your shots.
You can also change the number in the [player,1] section to show more visible lines. For example,
if you wanted to see the last 5 shot trajectory, you simply use [player, 5] spawn BIS_fnc_traceBullets;

-----------Step #2
Next simply copy the code below into your targets INIT. 

Any questions, let me know!
Xian

*/
////////////////////////////////////


this addEventHandler ["HandleDamage",{
		_damage = ceil ((_this select 2) * 100);
		_unit = _this select 0;
		_unit setVariable ["DamageDone",_damage];
}];

this addEventHandler ["HitPart",{
    _target = (_this select 0) select 0;
    _shooter = (_this select 0) select 1;
    _bullet = (_this select 0) select 2;
    _bulletPOS = (_this select 0) select 3;
    _velocity = (_this select 0) select 4;
    _selection = (_this select 0) select 5;
    _ammoType = (_this select 0) select 6;
    _direction = (_this select 0) select 7;
    _sizeofHit = (_this select 0) select 8;
    _surfaceHit = (_this select 0) select 9;
    _directHit = (_this select 0) select 10;
    _damageDone = _target getVariable "DamageDone";
    hint format [
        "
        Target = %1\n\n
        Shooter = %2\n\n
        Bullet Information = %3\n\n
        Postion of Impact = %4\n\n
        Velocity of Bullet = %5\n\n
        Selection Array = %6\n\n
        Ammo info = %7\n\n
        Angle of Attack = %8\n\n
        Radius of hit = %9\n\n
        Surface Hit = %10\n\n
        Direct Hit = %11\n\n
        Damage Done = %12
        ",_target,_shooter,_bullet,_bulletPOS,_velocity,_selection,_ammoType,_direction,_sizeofHit,_surfaceHit,_directHit,_damageDone
    
        ]
}];

