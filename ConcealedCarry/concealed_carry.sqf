_unit = _this select 0;//our civilian
_shooter = _this select 1;//the shooter
_distance = _unit distance _shooter;//the distance between our civilian and the shooter
_unit addMagazine "9Rnd_45ACP_Mag";//add the mag first so they dont have to reload when they draw
_unit addWeapon "hgun_ACPC2_F";//add the weapon
civilian setFriend [west, 0];//this will make sure they "panic" and fire at basically anyone around with a gun (opfor players/AI)
while {true} do
	{
		if ((_unit distance _shooter) > 50) exitWith//next we monitor the distance so that if they get too far from shooter, they will put the gun away and be a normal civilian
			{
				_unit removeWeapon "hgun_ACPC2_F";
			}
	};
	
hint "Jigsaw's awesome!";