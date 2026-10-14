//debugging for timer
if(keyboard_check(ord("X"))) {
	time_source_reconfigure(time_source, 10, time_source_units_seconds, loopGame);
	time_source_start(time_source);
}

