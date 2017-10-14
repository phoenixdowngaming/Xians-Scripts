_signUsedToTeleport = _this select 0;//this is the sign the player scrolls on (not used in this script)
_guyUsingTeleport = _this select 1;//this is the player DOING the action (IS used in this script)
_theScrollOptionItself = _this select 2;//the actual action in the scroll menu (not used in this script)

//here we DECLARE what the function is and what it does
fnc_spawnTeleport = 
	{
		teleport_points = [spot,spot_1,spot_2,spot_3,spot_4,spot_5,spot_6,spot_7,spot_8,spot_9,spot_10,spot_11,spot_12,spot_13,spot_14,spot_15];//I put down a bunch of empty markers with matching names as this array. this allows us to "group" those marker
		
		_selectRandomTele = selectRandom teleport_points;//we take our tele points array and select a random one
		_newPosition = getPos _selectRandomTele;//we then ask for the position of whichever teleport point was 'selected'
		_isEnemyNear = nearestObjects [_newPosition, ["MAN"], 100];//next, we check for nearby entities, in this case, a "MAN" class unit with 15 meters of the position
		if ((count _isEnemyNear) > 0) then {//then we say, if the count of those entities is greater than 0 (AKA someone is nearby)
		hint "Enemy Nearby. Choosing again.";//just a hint that pops up
		call fnc_spawnTeleport//we run the function again because it counted someone nearby. essentially "re-doing" everything
		} else {//if our count is NOT greater than 0, our 'else' command kicks in
			_guyUsingTeleport setPos _newPosition;//this puts our guy at the new position AKA spawns him in place
		}
	};

call fnc_spawnTeleport;
//finally, we actually RUN the function