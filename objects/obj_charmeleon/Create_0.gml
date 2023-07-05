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

	ember = createEmber()
	tailWhip = createTailWhip()
	ds_list_add(movesList, ember, tailWhip)

	scr_ai = function() {
		global.move = choose(ember, ember, ember, tailWhip)
		global.phase = PHASES.waitForAttack
		alarm[0] = 60
	}
}