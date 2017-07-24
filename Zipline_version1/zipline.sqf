hint "Zipline Activated";
_zipper = _this select 1;
_zipper allowdamage false;
_zipline = [s,s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,s_21,s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29];
{_x setDir (getDir _zipper)} forEach _zipline;
{
	_zipper attachTo [_x,[0,0,-0.5]];
	sleep 0.06;
} forEach _zipline;

detach _zipper;
sleep 3;
_zipper allowdamage true;

/*             TO DO LIST
-player position needs to be public variable so all players can see the transition down the line
-speed needs tweaking down a bit, slightly too fast
-direction needs work, probably set the direction of the first pole and then snap players direction to that
-need a scalability option, how can I use this more than once in the same Operation? (sphere = a_,b_,c_? possibly)