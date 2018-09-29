hint "security footage";
_cam1 = "camera" camCreate (position ATC_camera);
_cam1 setDir 321;
_cam1 camSetTarget ATC_cam_target;
_cam1 camCommit 0.1;
_cam1 camSetFov .75;
_cam1 cameraEffect ["Internal", "Back", "rendersurface"];
ATC_screen setObjectTextureGlobal [0,"#(argb,512,512,1)r2t(rendersurface,1)"];