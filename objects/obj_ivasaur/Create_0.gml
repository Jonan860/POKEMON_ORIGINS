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
	vineWhip = new moveConstructor(MOVES.VINE_WHIP)
	growl = new moveConstructor(MOVES.GROWL)
	movesSetup(vineWhip, growl)

	scr_ai = function() {
		global.move = choose(vineWhip, vineWhip, vineWhip, growl)
	}
}
