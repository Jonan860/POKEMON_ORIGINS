event_inherited()
if(global.event_continue) {
	max_HP = 100
	HP = 100;
	attack = 20;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.water;
	damage = 1;
	name = "Squirtle"
	alarm_counter = 5
	sound = sound_squirtle
	miss = 0
	if(room == difficulty){
		alarm[2] = 39 * room_speed
	}
	button = obj_squirtle_button
	info_bubble = spr_squirtle_info
	defenceCurlSprite = spr_defence_curl

	bubble = createBubble()
	defenceCurl = createDefenceCurl()
	ds_list_add(movesList, bubble, defenceCurl)
	withList(movesList, function(){owner = other.id})
}