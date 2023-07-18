event_inherited()
if(global.event_continue) {
	max_HP = 150;
	HP = 150;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.fire
	damage = 1 + 1/3
	name = "Charmeleon"
	sound = sound_charmeleon

	ember = new moveConstructor(MOVES.EMBER)
	tailWhip = new moveConstructor(MOVES.TAIL_WHIP)
	movesSetup(ember, tailWhip)
	scr_ai = function() {
		global.move = choose(ember, ember, ember, tailWhip)
	}
}