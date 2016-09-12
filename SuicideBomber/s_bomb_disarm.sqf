_unit = _this select 0;
_player = _this select 1;
removeAllActions _unit;
_player playMove "AinvPercMstpSrasWrflDnon_Putdown_AmovPercMstpSrasWrflDnon";

if (random 1 < 0.10) then 
	{
		_expl = "APERSMine_Range_Ammo" createVehicle position _unit;
		removeVest _unit;
		hint "Bad Disarm!";
		sleep 2;
		_expl setDamage 1;
		sleep 5;
		hint "";
	} else
	{
		removeVest _unit;
		hint "Vest Disarmed and Removed";
		sleep 5;
		hint "";

	};