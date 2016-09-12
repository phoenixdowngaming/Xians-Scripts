_unit = _this select 0;
_shooter = _this select 1;
_distance = _unit distance _shooter;

if (count weapons _unit > 0) exitWith {};
if (_unit == _shooter) exitWith {};
if (side _shooter == civilian) exitWith {};

private ["_rnum"];
_rnum = missionNamespace getVariable "_rnum";
if (isNil "_rnum") then
{
	_rnum = (floor random 10);
};

switch (_rnum) do
{
	case 0: {_unit addMagazine "9Rnd_45ACP_Mag";_unit addWeapon "hgun_ACPC2_F";};
	case 1: {_unit addMagazine "11Rnd_45ACP_Mag";_unit addWeapon "hgun_Pistol_heavy_01_F";};
	case 2: {_unit addMagazine "16Rnd_9x21_Mag";_unit addWeapon "hgun_P07_F";};
	case 3: {_unit addMagazine "6Rnd_45ACP_Cylinder";_unit addWeapon "hgun_Pistol_heavy_02_F";};
	case 4: {_unit addMagazine "16Rnd_9x21_Mag";_unit addWeapon "hgun_Rook40_F";};
	case 5: {};
	case 6: {};
	case 7: {};
	case 8: {};
	case 9: {};
};
	

_unit allowFleeing 0;
_unit setSkill ["Courage",1];
civilian setFriend [west, 0];
civilian setFriend [east, 0];

while {true} do
	{	

		if ((_unit distance _shooter) > 50) exitWith
			{
				removeAllWeapons _unit;
			}
	};
