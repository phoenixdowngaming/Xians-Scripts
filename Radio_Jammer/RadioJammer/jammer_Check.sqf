private _jammer = _this select 0;//the jammer
if (typeof _jammer == "Land_DataTerminal_01_F") then //check if the object Zeus placed is a Data Terminal aka Jammer
	{
		[_jammer,3] call BIS_fnc_dataTerminalAnimate;//Animate the jammer to be open and "on"
		[_jammer] execVM "RadioJammer\TFARjamRadios.sqf";//activate Rebel's radio Jamming script, ALL CREDIT TO HIM FOR THIS, I MADE 0 EDITS TO HIS WORK
		
		_jamPos = getPos _jammer;//get the position of the jammer
		_jamSource = "Land_HelipadEmpty_F" createVehicle [0,0,0];//create an invisible helipad to use as our sound source
		_jamSource setPos _jamPos;
		_Zeus = allCurators;//get a list of Zeus's incase multiple are being used
		{_x addCuratorEditableObjects [[_jamSource],false ];} forEach _Zeus;//make sure to add the helipad to Zeus incase he wants to move or delete the jammer after its been placed
		_jamDamage = getDammage _jammer;//in order to loop the sound, I chose to use a damage check
		[_jammer,["Shutdown Jammer","RadioJammer\jammer_shutdown.sqf",[_jammer,_jamSource],1,false,true,"","_this distance _target < 3"]] remoteExec ["addAction",0];
		while {_jamDamage < 0.10} do
		{
			[_jamSource,["jammer_loop",25,1]] remoteExec ["say3D",0];
			sleep 3;
		};
		//this while loop checks the damage of the jammer every 3 seconds. apparently it can't be shot or blown up so we apply the damage manually in the shutdown script which ends the sound effects
};

