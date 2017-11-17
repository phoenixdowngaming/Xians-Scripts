// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons

if (!hasInterface) exitWith {};
player setVariable ["StartingHealth",(getDammage player)];
publicVariable "StartingHealth";

//_name_terr = worldName;
if (al_snow_indoor) then 
{
	circle_snow =0;
// function by Killzone Kid and adapted by ALIAS
	KK_fnc_inHouse = 
	{
	_house = lineIntersectsSurfaces [
		getPosWorld _this, 
		getPosWorld _this vectorAdd [0, 0, 50], 
		_this, objNull, true, 1, "GEOM", "NONE"
	];
	if (((_house select 0) select 3) isKindOf "house") exitWith 
	{
		in_da_house = true;
		missionNamespace setVariable ["under_cover_snow", true, false];
		player sideChat (format ["%1",in_da_house]);
		cladire = ((_house select 0) select 3);
		//hint str (getposatl cladire);
		casa=typeOf ((_house select 0) select 3);
		raza_snow = sizeof casa;
		//hint str raza_snow;
		////////////Heat Gain Function
		_health = getDammage player;
		[_health] execVM "AL_snowstorm\heat_gain.sqf";
	};

	in_da_house = false;
	missionNamespace setVariable ["under_cover_snow", false, false];
	player sideChat (format ["%1",in_da_house]);
	_health = getDammage player;
	[_health] execVM "AL_snowstorm\heat_loss.sqf";
//End of Edits
///////////////////////////////////////////
	};
	
	[] spawn 
	{
		while {true} do
		{
			while {al_snowstorm_om} do 
			{
			player call KK_fnc_inHouse;
			sleep 0.50;
			};
		waitUntil {al_snowstorm_om};
		};
	}
};

sleep 5;

start_effect_proces = true;
publicVariable "start_effect_proces";

enableCamShake true;

[] spawn {
	while {al_snowstorm_om} do {
		addCamShake [0.3,14,19];
		_tremurici = ["tremurat_1","tremurat_2","NoSound","tremurat_3","tremurat_4","rafala_8"] call BIS_fnc_selectRandom;
		playSound _tremurici;
// >>>>  tweak the sleep value to increase or decrease time between player's shivering
		sleep 60+random ambient_sounds_al;
	};
};

while {true} do 
{
private ["_alias_local_fog"];
while {al_snowstorm_om} do 
{
	effect_screen = ppEffectCreate ["FilmGrain", 2000]; 
	effect_screen ppEffectEnable true;
	effect_screen ppEffectAdjust [0.1,0.1,0.5,0.1,0.1,true];
	effect_screen ppEffectCommit 0;
if (al_snow_indoor) then 
{
	if (in_da_house) then 
	{
		if (al_local_fog_snow) then {
		_alias_local_fog = "#particlesource" createVehicleLocal (getpos vehicle player);
		if (vehicle player != player) then {_alias_local_fog attachto [vehicle player];} else {_alias_local_fog attachto [player];};
		_alias_local_fog setParticleCircle [raza_snow, [3, 3, 0]];
		_alias_local_fog setParticleRandom [0, [0, 0, 0], [0, 0, 0],0,0, [0, 0, 0,0], 0, 0];
		_alias_local_fog setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 12, [0, 0, 0], [-1, -1, 0], 110, 10.15, 7.9, 0.01, [10, 10, 20], [[1, 1, 1, 0.01], [1, 1, 1, 0.05+random 0.05], [1, 1, 1, 0]], [0.08], 1, 0, "", "", vehicle player];	
		_alias_local_fog setDropInterval alias_drop_fog_factor;
		};
		
		//_poz_obj_snow = "Sign_Sphere200cm_F" createVehiclelocal [0,0,0];	
		//_poz_obj_snow = "land_helipadempty_f" createVehiclelocal [0,0,0];	
		_poz_1 = [cladire, 10+raza_snow/2, 0] call BIS_fnc_relPos;
		_poz_obj_snow_1 = "land_helipadempty_f" createVehiclelocal _poz_1;
		_poz_obj_snow_1 setPosATL [_poz_1 select 0, _poz_1 select 1, (_poz_1 select 2) + raza_snow/2];
		_fulg_nea_1  = "#particlesource" createVehicle getPosATL _poz_obj_snow_1;
		_fulg_nea_1 attachto [_poz_obj_snow_1,[0,0,15]];
		_fulg_nea_1 setDropInterval fulg_p_drop*13;
		_fulg_nea_1 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_1 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_1 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_1];
		
		_poz_2 = [cladire, 10+raza_snow/2, 30] call BIS_fnc_relPos;
		_poz_obj_snow_2 = "land_helipadempty_f" createVehiclelocal _poz_2;
		_poz_obj_snow_2 setPosATL [_poz_2 select 0, _poz_2 select 1, (_poz_2 select 2) + raza_snow/2];
		_fulg_nea_2  = "#particlesource" createVehicle getPosATL _poz_obj_snow_2;
		_fulg_nea_2 attachto [_poz_obj_snow_2,[0,0,15]];
		_fulg_nea_2 setDropInterval fulg_p_drop*13;
		_fulg_nea_2 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_2 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_2 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_2];

		_poz_3 = [cladire, 10+raza_snow/2, 60] call BIS_fnc_relPos;
		_poz_obj_snow_3 = "land_helipadempty_f" createVehiclelocal _poz_3;
		_poz_obj_snow_3 setPosATL [_poz_3 select 0, _poz_3 select 1, (_poz_3 select 2) + raza_snow/2];
		_fulg_nea_3  = "#particlesource" createVehicle getPosATL _poz_obj_snow_3;
		_fulg_nea_3 attachto [_poz_obj_snow_3,[0,0,15]];
		_fulg_nea_3 setDropInterval fulg_p_drop*13;
		_fulg_nea_3 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_3 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_3 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_3];

		_poz_4 = [cladire, 10+raza_snow/2, 90] call BIS_fnc_relPos;
		_poz_obj_snow_4 = "land_helipadempty_f" createVehiclelocal _poz_4;
		_poz_obj_snow_4 setPosATL [_poz_4 select 0, _poz_4 select 1, (_poz_4 select 2) + raza_snow/2];
		_fulg_nea_4  = "#particlesource" createVehicle getPosATL _poz_obj_snow_4;
		_fulg_nea_4 attachto [_poz_obj_snow_4,[0,0,15]];
		_fulg_nea_4 setDropInterval fulg_p_drop*13;
		_fulg_nea_4 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_4 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_4 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_4];

		_poz_5 = [cladire, 10+raza_snow/2, 120] call BIS_fnc_relPos;
		_poz_obj_snow_5 = "land_helipadempty_f" createVehiclelocal _poz_5;
		_poz_obj_snow_5 setPosATL [_poz_5 select 0, _poz_5 select 1, (_poz_5 select 2) + raza_snow/2];
		_fulg_nea_5  = "#particlesource" createVehicle getPosATL _poz_obj_snow_5;
		_fulg_nea_5 attachto [_poz_obj_snow_5,[0,0,15]];
		_fulg_nea_5 setDropInterval fulg_p_drop*13;
		_fulg_nea_5 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_5 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_5 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_5];	

		_poz_6 = [cladire, 10+raza_snow/2, 150] call BIS_fnc_relPos;
		_poz_obj_snow_6 = "land_helipadempty_f" createVehiclelocal _poz_6;
		_poz_obj_snow_6 setPosATL [_poz_6 select 0, _poz_6 select 1, (_poz_6 select 2) + raza_snow/2];
		_fulg_nea_6  = "#particlesource" createVehicle getPosATL _poz_obj_snow_6;
		_fulg_nea_6 attachto [_poz_obj_snow_6,[0,0,15]];
		_fulg_nea_6 setDropInterval fulg_p_drop*13;
		_fulg_nea_6 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_6 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_6 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_6];

		_poz_7 = [cladire, 10+raza_snow/2, 180] call BIS_fnc_relPos;
		_poz_obj_snow_7 = "land_helipadempty_f" createVehiclelocal _poz_7;
		_poz_obj_snow_7 setPosATL [_poz_7 select 0, _poz_7 select 1, (_poz_7 select 2) + raza_snow/2];
		_fulg_nea_7  = "#particlesource" createVehicle getPosATL _poz_obj_snow_7;
		_fulg_nea_7 attachto [_poz_obj_snow_7,[0,0,15]];
		_fulg_nea_7 setDropInterval fulg_p_drop*13;
		_fulg_nea_7 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_7 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_7 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_7];

		_poz_8 = [cladire, 10+raza_snow/2, 210] call BIS_fnc_relPos;
		_poz_obj_snow_8 = "land_helipadempty_f" createVehiclelocal _poz_8;
		_poz_obj_snow_8 setPosATL [_poz_8 select 0, _poz_8 select 1, (_poz_8 select 2) + raza_snow/2];
		_fulg_nea_8  = "#particlesource" createVehicle getPosATL _poz_obj_snow_8;
		_fulg_nea_8 attachto [_poz_obj_snow_8,[0,0,15]];
		_fulg_nea_8 setDropInterval fulg_p_drop*13;
		_fulg_nea_8 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_8 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_8 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_8];
		
		_poz_9 = [cladire, 10+raza_snow/2, 240] call BIS_fnc_relPos;
		_poz_obj_snow_9 = "land_helipadempty_f" createVehiclelocal _poz_9;
		_poz_obj_snow_9 setPosATL [_poz_9 select 0, _poz_9 select 1, (_poz_9 select 2) + raza_snow/2];
		_fulg_nea_9  = "#particlesource" createVehicle getPosATL _poz_obj_snow_9;
		_fulg_nea_9 attachto [_poz_obj_snow_9,[0,0,15]];
		_fulg_nea_9 setDropInterval fulg_p_drop*13;
		_fulg_nea_9 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_9 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_9 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_9];

		_poz_91 = [cladire, 10+raza_snow/2, 270] call BIS_fnc_relPos;
		_poz_obj_snow_91 = "land_helipadempty_f" createVehiclelocal _poz_91;
		_poz_obj_snow_91 setPosATL [_poz_91 select 0, _poz_91 select 1, (_poz_91 select 2) + raza_snow/2];
		_fulg_nea_91  = "#particlesource" createVehicle getPosATL _poz_obj_snow_91;
		_fulg_nea_91 attachto [_poz_obj_snow_91,[0,0,15]];
		_fulg_nea_91 setDropInterval fulg_p_drop*13;
		_fulg_nea_91 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_91 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_91 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_91];

		_poz_92 = [cladire, 10+raza_snow/2, 300] call BIS_fnc_relPos;
		_poz_obj_snow_92 = "land_helipadempty_f" createVehiclelocal _poz_92;
		_poz_obj_snow_92 setPosATL [_poz_92 select 0, _poz_92 select 1, (_poz_92 select 2) + raza_snow/2];
		_fulg_nea_92  = "#particlesource" createVehicle getPosATL _poz_obj_snow_92;
		_fulg_nea_92 attachto [_poz_obj_snow_92,[0,0,15]];
		_fulg_nea_92 setDropInterval fulg_p_drop*13;
		_fulg_nea_92 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_92 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_92 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_92];
		
		_poz_93 = [cladire, 10+raza_snow/2, 330] call BIS_fnc_relPos;
		_poz_obj_snow_93 = "land_helipadempty_f" createVehiclelocal _poz_93;
		_poz_obj_snow_93 setPosATL [_poz_93 select 0, _poz_93 select 1, (_poz_93 select 2) + raza_snow/2];
		_fulg_nea_93  = "#particlesource" createVehicle getPosATL _poz_obj_snow_93;
		_fulg_nea_93 attachto [_poz_obj_snow_93,[0,0,15]];
		_fulg_nea_93 setDropInterval fulg_p_drop*13;
		_fulg_nea_93 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_93 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_93 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_93];
		
		_poz_94 = [cladire, 10+raza_snow/2, 360] call BIS_fnc_relPos;
		_poz_obj_snow_94 = "land_helipadempty_f" createVehiclelocal _poz_94;
		_poz_obj_snow_94 setPosATL [_poz_94 select 0, _poz_94 select 1, (_poz_94 select 2) + raza_snow/2];
		_fulg_nea_94  = "#particlesource" createVehicle getPosATL _poz_obj_snow_94;
		_fulg_nea_94 attachto [_poz_obj_snow_94,[0,0,15]];
		_fulg_nea_94 setDropInterval fulg_p_drop*13;
		_fulg_nea_94 setParticleRandom [6, [6, 6, 6], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_94 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_94 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_94];

		_poz_obj_snow_95 = "land_helipadempty_f" createVehiclelocal getposatl cladire;
		_poz_obj_snow_95 setPosATL [getposatl cladire select 0, getposatl cladire select 1, (getposatl cladire select 2) + raza_snow/2 +10];
		_fulg_nea_95  = "#particlesource" createVehicle getPosATL _poz_obj_snow_95;
		_fulg_nea_95 attachto [_poz_obj_snow_95,[0,0,0]];
		_fulg_nea_95 setDropInterval fulg_p_drop;
		_fulg_nea_95 setParticleRandom [1, [raza_snow, raza_snow, 1], [0, 0, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea_95 setParticleCircle [0, [0, 0, 0]];
		_fulg_nea_95 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 0.5, [0, 0, 0], [0,0, 0], 3, 0.9, 0.1, 0.05, [0.25], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", _poz_obj_snow_95];
		
		waitUntil {!in_da_house or !al_snowstorm_om};
		deletevehicle _fulg_nea_1;
		deletevehicle _fulg_nea_2;
		deletevehicle _fulg_nea_3;
		deletevehicle _fulg_nea_4;
		deletevehicle _fulg_nea_5;
		deletevehicle _fulg_nea_6;
		deletevehicle _fulg_nea_7;
		deletevehicle _fulg_nea_8;
		deletevehicle _fulg_nea_9;
		deletevehicle _fulg_nea_91;
		deletevehicle _fulg_nea_92;
		deletevehicle _fulg_nea_93;
		deletevehicle _fulg_nea_94;
		deletevehicle _fulg_nea_95;
		deleteVehicle _poz_obj_snow_1;
		deleteVehicle _poz_obj_snow_2;
		deleteVehicle _poz_obj_snow_3;
		deleteVehicle _poz_obj_snow_4;
		deleteVehicle _poz_obj_snow_5;
		deleteVehicle _poz_obj_snow_6;
		deleteVehicle _poz_obj_snow_7;
		deleteVehicle _poz_obj_snow_8;
		deleteVehicle _poz_obj_snow_9;
		deleteVehicle _poz_obj_snow_91;
		deleteVehicle _poz_obj_snow_92;
		deleteVehicle _poz_obj_snow_93;
		deleteVehicle _poz_obj_snow_94;
		deleteVehicle _poz_obj_snow_95;
		if (al_local_fog_snow) then {deletevehicle _alias_local_fog};

	} else {
		if (al_local_fog_snow) then {
		_alias_local_fog = "#particlesource" createVehicleLocal (getpos vehicle player);
		if (vehicle player != player) then {_alias_local_fog attachto [vehicle player];} else {_alias_local_fog attachto [player];};
		_alias_local_fog setParticleCircle [30, [3, 3, 0]];
		_alias_local_fog setParticleRandom [10, [5, 5, 0], [1, 1, 0], 1, 1, [0, 0, 0, 0.1], 0, 0];
		_alias_local_fog setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 12, [0, 0, 0], [-1, -1, 0], 110, 10.15, 7.9, 0.01, [10, 10, 20], [[1, 1, 1, 0.01], [1, 1, 1, 0.05+random 0.05], [1, 1, 1, 0]], [0.08], 1, 0, "", "", vehicle player];	
		_alias_local_fog setDropInterval alias_drop_fog_factor;			
		};
		
		_fulg_nea  = "#particlesource" createVehicle [getposasl hunt_alias select 0,getposasl hunt_alias select 1,(getposasl hunt_alias select 2)+10];
		if (vehicle player != player) then {_fulg_nea attachto [vehicle player,[0,0,10]];} else {_fulg_nea attachto [player,[0,0,10]];};
		_fulg_nea setDropInterval fulg_p_drop;
		_fulg_nea setParticleRandom [5, [25, 25, 5], [vitx, vity, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
		_fulg_nea setParticleCircle [0, [vitx, vity, -1]];
		_fulg_nea setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 6], [vity,vitx, 0], 3, 1.6, 1, 0.1, [0.09], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", vehicle player];
		
		waitUntil {in_da_house or !al_snowstorm_om};
		deletevehicle _fulg_nea;
		if (al_local_fog_snow) then {deletevehicle _alias_local_fog};
	};
} else 
	{
	if (al_local_fog_snow) then {
	_alias_local_fog = "#particlesource" createVehicleLocal (getpos vehicle player);
	if (vehicle player != player) then {_alias_local_fog attachto [vehicle player];} else {_alias_local_fog attachto [player];};
	_alias_local_fog setParticleCircle [25, [3, 3, 0]];
	_alias_local_fog setParticleRandom [10, [5, 5, 0], [1, 1, 0], 1, 1, [0, 0, 0, 0.1], 0, 0];
	_alias_local_fog setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 12, [0, 0, 0], [-1, -1, 0], 110, 10.15, 7.9, 0.01, [10, 10, 20], [[1, 1, 1, 0.01], [1, 1, 1, 0.05+random 0.05], [1, 1, 1, 0]], [0.08], 1, 0, "", "", vehicle player];	
	_alias_local_fog setDropInterval alias_drop_fog_factor;	
	};	
	
	_fulg_nea  = "#particlesource" createVehicle [getposasl hunt_alias select 0,getposasl hunt_alias select 1,(getposasl hunt_alias select 2)+10];
	if (vehicle player != player) then {_fulg_nea attachto [vehicle player,[0,0,10]];} else {_fulg_nea attachto [player,[0,0,10]];};
	_fulg_nea setDropInterval fulg_p_drop;
	_fulg_nea setParticleRandom [5, [25, 25, 5], [vitx, vity, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
	_fulg_nea setParticleCircle [0, [vitx, vity, -1]];
	_fulg_nea setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 6], [vity,vitx, 0], 3, 1.6, 1, 0.1, [0.09], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", vehicle player];
	
	waitUntil {!finishRotocol};
	deletevehicle _fulg_nea;
	if (al_local_fog_snow) then {deletevehicle _alias_local_fog};
	
	if (al_local_fog_snow) then {
	_alias_local_fog = "#particlesource" createVehicleLocal (getpos vehicle player);
	if (vehicle player != player) then {_alias_local_fog attachto [vehicle player];} else {_alias_local_fog attachto [player];};
	_alias_local_fog setParticleCircle [25, [3, 3, 0]];
	_alias_local_fog setParticleRandom [10, [5, 5, 0], [1, 1, 0], 1, 1, [0, 0, 0, 0.1], 0, 0];
	_alias_local_fog setParticleParams [["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 12, [0, 0, 0], [-1, -1, 0], 110, 10.15, 7.9, 0.01, [10, 10, 20], [[1, 1, 1, 0.01], [1, 1, 1, 0.05+random 0.05], [1, 1, 1, 0]], [0.08], 1, 0, "", "", vehicle player];	
	_alias_local_fog setDropInterval alias_drop_fog_factor;
	};
	
	_fulg_nea  = "#particlesource" createVehicle [getposasl hunt_alias select 0,getposasl hunt_alias select 1,(getposasl hunt_alias select 2)+10];
	if (vehicle player != player) then {_fulg_nea attachto [vehicle player,[0,0,10]];} else {_fulg_nea attachto [player,[0,0,10]];};
	_fulg_nea setDropInterval fulg_p_drop;
	_fulg_nea setParticleRandom [5, [25, 25, 5], [vitx, vity, -1], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
	_fulg_nea setParticleCircle [0, [vitx, vity, -1]];
	_fulg_nea setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 6, [0, 0, 6], [vity,vitx, 0], 3, 1.6, 1, 0.1, [0.09], [[1, 1, 1, 1]], [0.08], 1, 0, "", "", vehicle player];
	waitUntil {finishRotocol};
	deletevehicle _fulg_nea;
	if (al_local_fog_snow) then {deletevehicle _alias_local_fog};
	};
//waitUntil {!al_snowstorm_om};
};
	effect_screen ppEffectEnable false;
	ppEffectDestroy effect_screen;
	enableCamShake false;
waitUntil {al_snowstorm_om};
};