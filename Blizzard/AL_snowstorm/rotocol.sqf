// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons

private ["_mov_obj","_rotocoale","_dir_x","_dist_x","_mov_obj","_fct_dir"];

if (!hasInterface) exitWith {};

//_name_terr = worldName;
waitUntil {start_effect_proces};

_dir_x	 = _this select 0;
_dist_x	 = _this select 1;
_fct_dir = _this select 2;

_mov_obj= "Land_HelipadEmpty_F" createVehicle [0,0,0];
_pos_rotocol = [hunt_alias,5+random 10, random 360] call BIS_fnc_relPos;
_mov_obj setpos [_pos_rotocol select 0,_pos_rotocol select 1,0];

if ((player distance _mov_obj) > 2000) exitWith {};

if (al_snow_indoor) then 
{
if !(missionNamespace getVariable "under_cover_snow") then 
{
	_rotocoale = "#particlesource" createVehicleLocal getpos _mov_obj;
	_rotocoale setParticleCircle [size_rotocol, [5, -5, 2]];
	_rotocoale setParticleRandom [0, [0.25, 0.25, 0], [-3, 3, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
	_rotocoale setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, life_part_rot, [3, 3, 0], [-3, 3, 1], 15, 10.5, 7.9, 0.075, [3, 5, 7], [[1, 1, 1, 0.01], [1, 1, 1, 0.01+random 0.03], [1, 1, 1, 0]], [0.08], 1, 0, "", "",_mov_obj];
	_rotocoale setDropInterval drop_int_rot;
	
	_i=0;
	while {finishRotocol} do {
		if (_dir_x == "x") then 
		{
			_mov_obj setpos [(getPos _mov_obj select 0)+_i,getPos _mov_obj select 1,0];
		} else 
		{
			_mov_obj setpos [getPos _mov_obj select 0,(getPos _mov_obj select 1)+_i,0];
		};
		_i=_i+_fct_dir;
		_viteza_rotocol = 0.1;
		sleep _viteza_rotocol;
	};
	deleteVehicle _rotocoale;
	deleteVehicle _mov_obj;
};
} else 
{
	_rotocoale = "#particlesource" createVehicleLocal getpos _mov_obj;
	_rotocoale setParticleCircle [size_rotocol, [5, -5, 2]];
	_rotocoale setParticleRandom [0, [0.25, 0.25, 0], [-3, 3, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
	_rotocoale setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, life_part_rot, [3, 3, 0], [-3, 3, 1], 15, 10.5, 7.9, 0.075, [3, 5, 7], [[1, 1, 1, 0.01], [1, 1, 1, 0.01+random 0.03], [1, 1, 1, 0]], [0.08], 1, 0, "", "",_mov_obj];
	_rotocoale setDropInterval drop_int_rot;
	
	_i=0;
	while {finishRotocol} do {
		if (_dir_x == "x") then 
		{
			_mov_obj setpos [(getPos _mov_obj select 0)+_i,getPos _mov_obj select 1,0];
		} else 
		{
			_mov_obj setpos [getPos _mov_obj select 0,(getPos _mov_obj select 1)+_i,0];
		};
		_i=_i+_fct_dir;
		_viteza_rotocol = 0.1;
		sleep _viteza_rotocol;
	};
	deleteVehicle _rotocoale;
	deleteVehicle _mov_obj;
};