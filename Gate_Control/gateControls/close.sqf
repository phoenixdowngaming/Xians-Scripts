_laptop = _this select 0;
_gateController = _this select 1;
_laptopAction = _this select 2;
_time = time;
_laptop removeAction _laptopAction;
_gates = [gate_1,gate_2,gate_3,gate_4,gate_5];

hint "Gates Closing";
[gate_voice,["gate_control",25,1]] remoteExec ["say3D",0]; 

while {time < (_time + 3.4)} do 
{
	gate_1 setpos [ getPos gate_1 select 0, getPos gate_1 select 1, (getPos gate_1 select 2) + 0.025];
	gate_2 setpos [ getPos gate_2 select 0, getPos gate_2 select 1, (getPos gate_2 select 2) + 0.025];
	gate_3 setpos [ getPos gate_3 select 0, getPos gate_3 select 1, (getPos gate_3 select 2) + 0.025];
	gate_4 setpos [ getPos gate_4 select 0, getPos gate_4 select 1, (getPos gate_4 select 2) + 0.025];
	gate_5 setpos [ getPos gate_5 select 0, getPos gate_5 select 1, (getPos gate_5 select 2) + 0.025];
	sleep 0.02;
};


gate_1 setpos [ getPos gate_1 select 0, getPos gate_1 select 1, 0];
gate_2 setpos [ getPos gate_2 select 0, getPos gate_2 select 1, 0];
gate_3 setpos [ getPos gate_3 select 0, getPos gate_3 select 1, 0];
gate_4 setpos [ getPos gate_4 select 0, getPos gate_4 select 1, 0];
gate_5 setpos [ getPos gate_5 select 0, getPos gate_5 select 1, 0];

_laptop addAction ["Open Gate","gateControls\open.sqf"];