{
	_x addEventHandler ["Killed",
	{
		active_count2 = active_count2 - 1;
		hint format ["Current Enemy Count / Total Enemy Count\n\n%1 / %2",active_count2,active_count];
	}];
} forEach KH_guys;