event_inherited()
if(global.event_continue) {
	max_HP = 200
	HP = 200;
	attack = 20;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.psychic;
	damage = 2;
	name = "Mewtwo"
	sound = sound_mewtwo
	alarm[0] = 60 * room_speed
	button = obj_mewtwo_button
	info_bubble = spr_mewtwo_info
	psyCutter = new moveConstructor(MOVES.PSY_CUTTER)
	movesSetup(psyCutter)
}

