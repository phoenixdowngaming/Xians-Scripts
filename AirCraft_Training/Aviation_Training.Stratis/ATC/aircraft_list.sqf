_armedlittleBirds = [lb_1,lb_2,lb_3,lb_4,lb_5];
_unarmedlittleBirds = [mb_1,mb_2,mb_3,mb_4,mb_5];
_hueys = [uh_1,uh_2,uh_3,uh_4,uh_5];

_comanches = [CO_1,CO_2,CO_3,CO_4,CO_5];
_apaches = [AP_1,AP_2,AP_3,AP_4,AP_5];
_chinooks = [CH_1,CH_2,CH_3,CH_4,CH_5];
_uhs = [UH60_1,UH60_2,UH60_3,UH60_4,UH60_5];
_seaKings = [SK_1,SK_2,SK_3,SK_4,SK_5];



_screen = _this select 0;
_caller = _this select 1;
_action = _this select 2;
removeAllActions _screen;

_screen addAction ["Armed Little Birds","ATC\Aircraft\armedLB.sqf"];
_screen addAction ["Unarmed Little Birds","ATC\Aircraft\unarmedLB.sqf"];
_screen addAction ["Hueys","ATC\Aircraft\huey.sqf"];
_screen addAction ["Ghost Hawks","ATC\Aircraft\ghosthawk.sqf"];
_screen addAction ["Comanches","ATC\Aircraft\comanche.sqf"];
_screen addAction ["Apaches","ATC\Aircraft\apache.sqf"];
_screen addAction ["Chinooks","ATC\Aircraft\chinook.sqf"];
_screen addAction ["UH60s","ATC\Aircraft\uh60.sqf"];
_screen addAction ["Sea Kings","ATC\Aircraft\seaKing.sqf"];
/*
_playerList = [];

{
	_playerList pushBack _x;
	if (vehicle _x != player) exitWith {};
	_playerName = str formatText ["%1", _playerList];
	format [ATC_screen addAction [_playerName,"ATC\Aircraft\create_cam.sqf",[_x]],_x];
} forEach allPlayers;

hintSilent format ["%1",_playerList];
