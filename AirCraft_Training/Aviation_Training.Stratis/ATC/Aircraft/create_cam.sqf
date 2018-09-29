_screen = _this select 0;
_atcPerson = _this select 1;
_action = _this select 2;
_actor = _this select 3 select 0;
//hint format ["%1\n%2\n%3\n%4",_screen,_atcPerson,_action,_actor];

//Camera Work
camera = "camera" camCreate (position _actor);
camera camSetRelPos [1,1,1.5];
camera cameraEffect ["Internal", "Back", "rendersurface"];
_screen setObjectTextureGlobal [0,"#(argb,512,512,1)r2t(rendersurface,1)"];
camera camSetTarget _actor;
camera camSetRelPos [4.25,8,1.5];
camera camCommit 2;
waitUntil {camCommitted camera;};

sleep 5;
camDestroy camera;

//_screen setObjectTextureGlobal [0, "pdg_Logo_CO.paa"];
