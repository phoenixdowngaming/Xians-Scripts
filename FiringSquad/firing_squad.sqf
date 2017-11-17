_firingSquad = [fs_1,fs_2,fs_3,fs_4,fs_5];

{
	_fsWep = currentWeapon _x;
	_x setBehaviour "COMBAT";
	_x setUnitPos "UP";

} forEach _firingSquad;
sleep 1.5;
{
	_fsWep = currentWeapon _x;
	_x forceWeaponFire [_fsWep, "FullAuto"];
	sleep 0.1;
	_x forceWeaponFire [_fsWep, "FullAuto"];
	sleep 0.1;
	_x forceWeaponFire [_fsWep, "FullAuto"];
	sleep 0.1;
	_x forceWeaponFire [_fsWep, "FullAuto"];
	sleep 0.1;
	_x forceWeaponFire [_fsWep, "FullAuto"];
	sleep 0.1;
	_x forceWeaponFire [_fsWep, "FullAuto"];

} forEach _firingSquad;






/*
//////////////////////////////////////
////First Guy
_fsWep1 = currentWeapon fs_1;
fs_1 setBehaviour "COMBAT";
fs_1 setUnitPos "UP";
fs_1 doTarget tar_1;
sleep 2;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];
sleep 0.1;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];
sleep 0.1;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];
sleep 0.1;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];
sleep 0.1;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];
sleep 0.1;
fs_1 forceWeaponFire [_fsWep1, "FullAuto"];

////First Guy
_fsWep2 = currentWeapon fs_2;
fs_2 setBehaviour "COMBAT";
fs_2 setUnitPos "UP";
fs_2 doTarget tar_2;
sleep 2;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];
sleep 0.1;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];
sleep 0.1;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];
sleep 0.1;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];
sleep 0.1;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];
sleep 0.1;
fs_2 forceWeaponFire [_fsWep2, "FullAuto"];

////First Guy
_fsWep3 = currentWeapon fs_3;
fs_3 setBehaviour "COMBAT";
fs_3 setUnitPos "UP";
fs_3 doTarget tar_3;
sleep 2;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];
sleep 0.1;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];
sleep 0.1;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];
sleep 0.1;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];
sleep 0.1;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];
sleep 0.1;
fs_3 forceWeaponFire [_fsWep3, "FullAuto"];

////First Guy
_fsWep4 = currentWeapon fs_4;
fs_4 setBehaviour "COMBAT";
fs_4 setUnitPos "UP";
fs_4 doTarget tar_4;
sleep 2;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];
sleep 0.1;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];
sleep 0.1;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];
sleep 0.1;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];
sleep 0.1;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];
sleep 0.1;
fs_4 forceWeaponFire [_fsWep4, "FullAuto"];

////First Guy
_fsWep5 = currentWeapon fs_5;
fs_5 setBehaviour "COMBAT";
fs_5 setUnitPos "UP";
fs_5 doTarget tar_5;
sleep 2;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];
sleep 0.1;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];
sleep 0.1;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];
sleep 0.1;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];
sleep 0.1;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];
sleep 0.1;
fs_5 forceWeaponFire [_fsWep5, "FullAuto"];