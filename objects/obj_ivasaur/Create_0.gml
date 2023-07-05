event_inherited()
if(global.event_continue) {
	max_HP = 150;
	HP = 150;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.grass
	damage = 1 + 1/3
	name = "Ivasaur"
	alive = 1
	sound = sound_ivasaur
	vineWhip = createvineWhip()
	growl = createGrowl()
	ds_list_add(movesList, vineWhip, growl)

	scr_ai = function() {
		global.move = choose(vineWhip, vineWhip, vineWhip, growl)
		global.phase = PHASES.waitForAttack
		alarm[0] = 60
	}
}
