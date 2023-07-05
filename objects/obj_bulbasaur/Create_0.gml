event_inherited()
if(global.event_continue) {
	max_HP = 100
	HP = 100;
	attack = 20;
	defence_bonus = 0;
	attack_bonus = 0;
	active = 0;
	type = ELEMENTS.grass;
	damage = 1;
	name = "Bulbasaur"
	alarm_counter = 5
	sound = sound_bulbasaur
	alarm[0] = 50 * room_speed	
	button = obj_bulbasaur_button
	info_bubble = spr_bulbasaur_info
	vineWhip = createvineWhip()
	growl = createGrowl()
	ds_list_add(movesList, vineWhip, growl)
	withList(movesList, function(inst){with(inst) {owner = other.id}})
}


