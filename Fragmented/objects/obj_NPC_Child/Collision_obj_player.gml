if(keyboard_check(ord("Z"))) {
	
	//prompt_on = false;
	CreateDialogue(npc_dialogue);
	time_source_pause(obj_manager.time_source);
	obj_player.paused = true;
	
}