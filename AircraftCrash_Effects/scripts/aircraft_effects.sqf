xian_CrashEffects_fnc = {
	private _sparkSource = _this select 0;
	private _sparkPos = position _sparkSource;
	private _light = "#lightpoint" createVehicle [0,0,0];

	private _xvalue = ((random 2)+3);
	private _yvalue = ((random 2)+3);
	private _zvalue = ((random 2)+1);
	private _spark = "#particlesource" createVehicleLocal [0,0,0];

	_light setLightBrightness 0.30;
	_light setLightAmbient [1.0, 0.30, 0.0];
	_light setLightColor [0.0, 0.0, 0.0];
	_light lightAttachObject [_sparkSource, [0,0,0]];

	
	_fire = "#particlesource" createVehicleLocal [0,0,0];
	_fire setParticleClass "ObjectDestructionFire1Smallx";
	_fire attachTo [_sparkSource,[0,-7,6]];;

	_spark setParticleCircle [0, [0, 0, 0]];
	_spark setParticleRandom 		/*LifeTime*/		[6,
									/*Position*/		[0,0,0],
									/*MoveVelocity*/	[_xvalue,_yvalue,_zvalue],
									/*rotationVel*/		30,
									/*Scale*/		0.25,
									/*Color*/		[0.75,0.75,0,1],
									/*randDirPeriod*/	0.50,
									/*randDirIntesity*/	0.50,
									/*Angle*/		30];
	_spark setParticleParams [["\A3\data_f\cl_water", 1, 0, 1], "", "Billboard", 1, 3, [0.10, 0, 0.90],[(random 0.50),(random 0.50),-2], 500, 1050, 7.9, 0.1, [0.10,0.10], [[0.75,0.75,0, 1], [0.75,0.75,0,1]], [0.16], 0, 0, "", "", _sparkSource,0,false,0.20,[[0,0,0,1]]];
	_spark attachTo [_sparkSource,[0,0,0]];
	_spark setDropInterval 0.010;
	uiSleep ((random 2)+0.10);
	deleteVehicle _spark;

	sleep ((random 5)+3);
	[_sparkSource] spawn xian_CrashEffects_fnc;
	sleep 1;
	deleteVehicle _light;
	deleteVehicle _fire;
};

[effect_Source] spawn xian_CrashEffects_fnc;
