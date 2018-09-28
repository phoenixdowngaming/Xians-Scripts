/*
This script is what loops the sound when a player gets inside the jammer trigger. This is NOT the jammer radius
only the radius at which the sound of the jammer can be heard.
*/
_trig = _this select 0;//the trigger itself
_jamsource = nearestObject [_trig,"Land_HelipadEmpty_F"]; //the sound source
while {true} do {
		if ({isPlayer _x} count list _trig > 0) then
	{
		_jamsource say3D ["jammer_loop",20,0.25];
		sleep 3;
	};
};//the sound effect is 14.65 seconds long so every sound loop, we check if the player is within the triggers radius
