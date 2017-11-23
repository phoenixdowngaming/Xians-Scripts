
_lampArray = [lights,lights_1,lights_2,lights_3,lights_4,lights_5,lights_6,lights_7,lights_8];
//Lamp array can be edited to add more Light logics

Lightlist = ["Lamps_base_F","Land_LampStreet_small_F","Land_LampStreet_F","Land_LampDecor_F","Land_LampHalogen_F","Land_LampHarbour_F","Land_LampShabby_F"];
//Additional class names may need to be added if custom lamps were used

_randomTime = random 2;

{
	_lamps = nearestObjects [_x,Lightlist,750];
	[_x,["bass_kick",700,1]] remoteExec ["say3D",0];
	{_x setHit ["light_1_hitpoint",0.99]} forEach _lamps;
	{_x setHit ["light_2_hitpoint",0.99]} forEach _lamps;
	{_x setHit ["light_3_hitpoint",0.99]} forEach _lamps;
	{_x setHit ["light_4_hitpoint",0.99]} forEach _lamps;
	sleep _randomTime;
} forEach _lampArray;





