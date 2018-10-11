private _jammer = _this select 0;//the jammer
if (typeof _jammer == "Land_DataTerminal_01_F") then 						//check if the object Zeus placed is a Data Terminal
	{	
		// VARIABLES
		private _Zeus = allCurators;										//get a list of Zeus's incase multiple are being used
		private _jamSource = "Land_HelipadEmpty_F" createVehicle [0,0,0];	//create an invisible helipad as sound source
		private _jamPos = getPos _jammer;									//get the position of the jammer
		private _jamDamage = getDammage _jammer;							//in order to loop the sound, I chose to use a damage check

		// CODE
		[_jammer,3] call BIS_fnc_dataTerminalAnimate;						//Animate the jammer to be open and "on"
		[[_jammer]] execVM "RadioJammer\TFARjamRadios.sqf";					//activate Rebel's radio Jamming script

		_jamSource setPos _jamPos;											//move sound source into jammers position
		_jamSource attachTo [_jammer,[0,0,0]];								//attach sound source so that if jammer is moved, sound is too
		
		[_jammer,["Shutdown Jammer","RadioJammer\jammer_shutdown.sqf",[_jammer,_jamSource],1,false,true,"","_this distance _target < 3"]] remoteExec ["addAction",0];											//add shutdown action for all players

		{
			_x addCuratorEditableObjects [[_jamSource],false ];
		} forEach _Zeus;													//add jammer to Zeus so they are able to move Jammer if needed

		while {_jamDamage < 0.10} do
		{
			[_jamSource,["jammer_loop",25,1]] remoteExec ["say3D",0];
			sleep 3;
		};
																			//checks its damaage every 3 seconds to see if it needs to loop the sound effect again. Damage comes from L.8 of jammer_shutdown.sqf
};

