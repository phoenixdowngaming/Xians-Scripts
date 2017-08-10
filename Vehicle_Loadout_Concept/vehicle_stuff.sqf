_car = (_this select 0) select 0;
trig = _this select 1;
removeAllActions _car;
_car addAction ["<t color = '#d4212e'>Clear All Cargo</t>",
	{
		_car = _this select 0;
		_act = _this select 2;
		clearWeaponCargo _car;
		clearMagazineCargo _car;
		clearItemCargo _car;
		hint "Vehicle Cargo Cleared";
	},[], 8, false, false, "", "_target in list trig"];

_car addAction ["<t color = '#d4212e'>Add RPGs to Cargo</t>",
	{
		_car = _this select 0;
		_car addWeaponCargoGlobal["launch_RPG7_F",5];
		_wepCargo = {_x == "launch_RPG7_F"} count weaponCargo _car;
		hint format ["5 RPGs Added\n\nInventory Count = %1",_wepCargo];
	},[], 8, false, false, "", "_target in list trig"];

_car addAction ["<t color = '#d4212e'>Add Magazines to Cargo</t>",
	{
		_car = _this select 0;
		_car addMagazineCargoGlobal["30Rnd_65x39_caseless_mag",50];
		_magCargo = {_x == "30Rnd_65x39_caseless_mag"} count magazineCargo _car;
		hint format ["50 Magazines Added\n\nInventory Count = %1",_magCargo];
	},[], 8, false, false, "", "_target in list trig"];

_car addAction ["<t color = '#d4212e'>Add Bandages to Cargo</t>",
	{
		_car = _this select 0;
		_car addMagazineCargoGlobal["ACE_fieldDressing",50];
		_itemCargo = {_x == "ACE_fieldDressing"} count itemCargo _car;
		hint format ["50 Bandages Added\n\nInventory Count = %1",_itemCargo];
	},[], 8, false, false, "", "_target in list trig"];
