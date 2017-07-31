_laptop = _this select 0;
_unit = _this select 1;
_action = _this select 2;

_intelligence = missionNameSpace getVariable "Intelligence";

switch (_intelligence) do
{
	case 0: 
		{
			"Intel" hintC [
			"We have taken over the city of port city of La Riviere",
			"We can begin using this port to start sending supply shipments to our facility in Vigny",
			"They requested basic supplies, medical, food and such before the 'good stuff'",
			"We should be able to start moving things soon..",
			"***** MAP UPDATED ************"];
			"vigny_mark" setMarkerAlpha 1;
			_intelligence = missionNameSpace getVariable "Intelligence";
			_intelligence = _intelligence + 1;
			missionNameSpace setVariable ["Intelligence",_intelligence, true];
			publicVariable "intelligence";
			_laptop removeAction _action;
		};
	case 1:
		{
			"Intel" hintC [
			"We just got word about Lolisse...",
			"Those guys were testing out a new bomb of some kind",
			"Looks like it all went south on them, wiped out the entire base",
			"There's a lesson to be learned there for sure. We need to be careful",
			"***** MAP UPDATED ************"];
			"lolisse_mark" setMarkerAlpha 1;
			_intelligence = missionNameSpace getVariable "Intelligence";
			_intelligence = _intelligence + 1;
			missionNameSpace setVariable ["Intelligence",_intelligence, true];
			publicVariable "intelligence";
			_laptop removeAction _action;
		};
	case 2:
		{
			"Intel" hintC [
			"Has anyone heard from our base up north?",
			"Weren't we supposed to get some type of EMP weapon?",
			"I'm sure the boss is pissed about them not being in contact",
			"Anyway, we finally managed to get the Long Range Jammer equipment over to the new sites"];
			_intelligence = missionNameSpace getVariable "Intelligence";
			_intelligence = _intelligence + 1;
			missionNameSpace setVariable ["Intelligence",_intelligence, true];
			publicVariable "intelligence";
			_laptop removeAction _action;
		};
	case 3:
		{
			"Instant Messenger" hintC [
			"Did you hear they are building a base INTO the mountains?!",
			"Wait, like in those old James Bond movies?",
			"Yeah! That's freaking awesome. Wonder if we can get re-assigned there",
			"Those never work out. Some asshole in a tux always finds a way to parachute in without ANYONE seeing them and blows it up, with a paperclip and a rubberband or some shit. Good luck buddy..."];
			_intelligence = missionNameSpace getVariable "Intelligence";
			_intelligence = _intelligence + 1;
			missionNameSpace setVariable ["Intelligence",_intelligence, true];
			publicVariable "intelligence";
			_laptop removeAction _action;
		};
	case 4:
		{
			"Intel" hintC [
			"Long range Jamming sites have been selected and they've started construction",
			"Sites we are sending supplies to are: Ridgeline south of Arudy, Monte hill North of La Porte and Mont Chauve",
			"Defenses are already in place, jammers themselves should be up within the week",
			"We've also begun fulfilling the shipments to El Jeffe himself at the Northwest Airfield",
			"***** MAP UPDATED ************"];
			"airfield_mark" setMarkerAlpha 1;
			"arudy_mark" setMarkerAlpha 1;
			"arudy_mark_1" setMarkerAlpha 1;
			"arudy_mark_2" setMarkerAlpha 1;
			_intelligence = missionNameSpace getVariable "Intelligence";
			_intelligence = _intelligence + 1;
			missionNameSpace setVariable ["Intelligence",_intelligence, true];
			publicVariable "intelligence";
			_laptop removeAction _action;

		};
};
