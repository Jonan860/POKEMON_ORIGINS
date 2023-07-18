event_inherited()
if(global.event_continue) {
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
	tackle = new moveConstructor(MOVES.TACKLE)
	sleep = new moveConstructor(MOVES.SLEEP)
	movesSetup(tackle, sleep)
	
	scr_ai = function() {
		global.move = HP <= 0.5 * max_HP ? choose(tackle, sleep) : tackle
	}
}

