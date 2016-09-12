_unit = _this select 0;
_shooter = _this select 1;
_distance = _unit distance _shooter;

if (count weapons _unit > 0) exitWith {};//if already has a weapon, ignore everything else
if (_unit == _shooter) exitWith {};//if the shooter is himself, ignore everything else
if (side _shooter == civilian) exitWith {};//if the shooter is another civilian, ignore everything else
private _rnum = missionNamespace getVariable "_rnum";
if (isNil "_rnum") then
{
	_rnum = (floor random 15);
	missionnameSpace setVariable ["_rnum", _rnum];
} else {};

switch (_rnum) do
{
	case 0: {_unit addMagazine "9Rnd_45ACP_Mag";_unit addWeapon "hgun_ACPC2_F";HINT FORMAT ["%1",_rnum];};
	case 1: {_unit addMagazine "11Rnd_45ACP_Mag";_unit addWeapon "hgun_Pistol_heavy_01_F";HINT FORMAT ["%1",_rnum];};
	case 2: {_unit addMagazine "16Rnd_9x21_Mag";_unit addWeapon "hgun_P07_F";HINT FORMAT ["%1",_rnum];};
	case 3: {_unit addMagazine "6Rnd_45ACP_Cylinder";_unit addWeapon "hgun_Pistol_heavy_02_F";HINT FORMAT ["%1",_rnum];};
	case 4: {_unit addMagazine "16Rnd_9x21_Mag";_unit addWeapon "hgun_Rook40_F";HINT FORMAT ["%1",_rnum];};
	case 5: {HINT FORMAT ["%1",_rnum];};
	case 6: {HINT FORMAT ["%1",_rnum];};
	case 7: {HINT FORMAT ["%1",_rnum];};
	case 8: {HINT FORMAT ["%1",_rnum];};
	case 9: {HINT FORMAT ["%1",_rnum];};
	case 10: {HINT FORMAT ["%1",_rnum];};
	case 11: {HINT FORMAT ["%1",_rnum];};
	case 12: {HINT FORMAT ["%1",_rnum];};
	case 13: {HINT FORMAT ["%1",_rnum];};
	case 14: {HINT FORMAT ["%1",_rnum];};
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
