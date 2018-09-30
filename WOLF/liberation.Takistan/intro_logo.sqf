_video = "PDGlogo.ogv";
billboard_1 setObjectTexture [0, _video];
[billboard_Voice,["PDG_Logo",20,1]] remoteExec ["say3D",0];
[_video, [10, 10]] call BIS_fnc_playVideo;

