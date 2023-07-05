event_inherited()
if(global.event_continue){
	max_HP = 300;
	HP = 300;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.normal
	damage = 1 + 1/3
	name = "Snorlax"
	alive = 1
	sleep = 0
	xstart = x; ystart = y;
	sound = sound_snorlax
	max_sleep = 100
	tackle = createTackle()
	sleep = createSleep()
	ds_list_add(movesList, tackle, sleep)
	
	scr_ai = function() {
		global.move = ifElseReturn(HP <= 0.5 * max_HP, choose(tackle, sleep), tackle)
		global.phase = PHASES.waitForAttack
		alarm[0] = 60
	}
}

