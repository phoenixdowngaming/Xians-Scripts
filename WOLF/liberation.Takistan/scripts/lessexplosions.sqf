SL_lessExposions = {
   private ["_obj","_damage","_ammoTypes"];
   _obj = _this select 0;
   _obj addEventHandler ["HandleDamage", {
       _damage = _this select 2;
       _ammoTypes = ["MissileCore","BombCore","RocketCore","GrenadeCore","TimeBombCore"];
       // or ( isNull (_this select 3) and "Air" == typeOf _obj)
       if ( [_this select 4,_ammoTypes] call SL_checkKinds and !isNull (_this select 3) and (_this select 4) != "" ) then {
           if ( (_this select 1 == "") and (_damage > 0.1) ) then { _damage = 0.1 };
           if ( (_this select 1 == "telo") and (_damage > 0.9) ) then { _damage = 0.3 };
           if ( (_this select 1 == "fuel") and (_damage > 0.9) ) then { _damage = 0.3 };
       };
       _damage;
       }];
   _obj setVariable ["lessened", true, true];
};

SL_checkKinds = {
   private ["_ammoType","_ammoTypes","_return"];
   _ammoType = _this select 0;
   _ammoTypes = _this select 1;
   _return = true;

   {
       if (_ammoType isKindOf _x) then { _return = false; };
   } forEach _ammoTypes;

   _return
};

[] spawn {
   if (isserver) then {
       while {true} do {
           {
                if ((!(_x getVariable ["lessened", false]))) then {
                   [[_x], "SL_lessExposions", _x] call BIS_fnc_mp;
                   // player sideChat format["Lessened: %1",_x];
               };
           }foreach vehicles;
           sleep 60;
       }
   };
};