	event_inherited()
	if(global.event_continue) {
	max_HP = 100
	HP = 100;
	attack = 20;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.rock;
	damage = 1.5;
	name = "Geodude"
	alarm_counter = 5
	sound = sound_its_geodude
	alive = global.player != PLAYERS.Jonathan
	alarm[0] = 45 * room_speed
	info_bubble = spr_geodude_info
	button = obj_geodude_button

	rockThrow = createRockThrow()
	leer = createLeer()
	defenceCurl = createDefenceCurl()
	ds_list_add(movesList, rockThrow, leer, defenceCurl)
	withList(movesList, function(inst){with(inst) {owner = other.id}})

	defenceCurlSprite = spr_geodude_defence_curl
}
