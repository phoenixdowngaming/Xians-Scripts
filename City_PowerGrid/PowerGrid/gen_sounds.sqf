hint "Generator Sounds";

_trig = _this select 0;
_jamsource1 = sound_gen1;

while {true} do {
	if ({isPlayer _x} count list _trig > 0) then
	{
		_jamsource1 say3D ["electric_hum",25,1];
		sleep 3;
	};
};