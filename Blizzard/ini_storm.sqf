// by ALIAS
// SNOW STORM SCRIPT DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons

/*
================================================================================================================================
>>>>> SNOW STORM Parameters =======================
================================================================================================================================

null = [direction_storm,duration_storm,effect_on_objects,ambient_sounds_al,breath_vapors,snow_burst_server_side,snow_burst_client_side,al_fog_snow,no_snow_indoor,local_fog] execvm "AL_snowstorm\al_snow.sqf";

direction_storm		- integer, from 0 to 360, direction towards the wind blows expressed in compass degrees
duration_storm		- integer, life time of the SNOW STORM expressed in seconds
effect_on_objects	- boolean, if is true occasionally a random object will be thrown in the air
ambient_sounds_al	- seconds/number, a random number will be generated based on your input value and used to set the frequency for played ambient sounds
					- also determines interval at which snow gusts are generated
					- i recommend a value of 120 or higher
breath_vapors		- boolean, if true you will see breath vapors for all units, however if you have many units in your mission you should set this false to diminish the impact on frames
snow_burst_server_side - boolean, if is true the effect is enabled
snow_burst_client_side - boolean, if is true the effect is enabled
al_fog_snow			- boolean, fog will be managed by the script if true, otherwise the values you set in editor will be used 
no_snow_indoor	    - boolean, when is true snow will not be generated while inside a building
local_fog			- boolean, if true particles will be used to create sort of waves of fog and snow
*/

>>>>>>>>>> EXAMPLE

// without breath vapors and no snow bursts, fog managed by script
null = [80,240,false,40,false,false,false,true,false,true] execvm "AL_snowstorm\al_snow.sqf";

// without breath vapors and snow bursts on server side, fog managed by script
null = [80,240,false,40,false,true,false,true,false,false] execvm "AL_snowstorm\al_snow.sqf";

// with breath vapors and snow bursts on client side, fog using values you set in editor
null = [80,240,false,40,true,false,true,false,false,false] execvm "AL_snowstorm\al_snow.sqf";