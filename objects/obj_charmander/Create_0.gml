event_inherited()
if(global.event_continue) {
	max_HP = 100
	HP = 100;
	attack = 20;
	defence_bonus = 0;
	attack_bonus = 0;
	active = 0;
	type = ELEMENTS.fire;
	damage = 1;
	name = "Charmander"
	alarm_counter = 5
	sound = sound_charmander
	appear = 0
	alarm[1] = 30 * room_speed
	info_bubble = spr_charmander_info
	button = obj_charmander_button

	ember = createEmber()
	tailWhip = createTailWhip()
	ds_list_add(movesList, ember, tailWhip)
	withList(movesList, function(inst){with(inst) {owner = other.id}})
}