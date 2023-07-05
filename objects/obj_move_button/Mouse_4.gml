if(global.phase == PHASES.choosing and global.turn == TURNS.AMBER) {
	global.phase = PHASES.riddle
	var riddle=instance_create_depth(room_width / 2, room_height / 2, 0, obj_text_bar)
}

