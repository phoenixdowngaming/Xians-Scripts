player setCustomAimCoef 0.15;
player addMPEventhandler ["MPRespawn", {player setCustomAimCoef 0.15}];
 
player setUnitRecoilCoefficient 0.7;
player addEventHandler ["Respawn", {player setUnitRecoilCoefficient 0.7}];

player enablestamina false;
player addEventHandler ["Respawn", {player enablestamina false}];

player enablefatigue false;
player addEventHandler ["Respawn", {player enablefatigue false}];
//Xian's JetService
player addEventhandler ["GetInMan",{call fnc_xian_vehicleCheck}];
player addMPEventHandler ["MPRespawn",{call fnc_xian_respawnEH}];