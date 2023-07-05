event_inherited()
if(global.event_continue) {
	max_HP = 150;	
	HP = 150;
	defence_bonus = 0; attack_bonus = 0;
	active = 0;
	type = ELEMENTS.water
	damage = 1 + 1/3
	name = "Wartortle"
	sound = sound_wartortle

	bubble = createBubble()
	defenceCurl = createDefenceCurl()
	ds_list_add(movesList, bubble, defenceCurl)

	scr_ai = function(){
		global.move = choose(bubble,bubble,bubble,defenceCurl)
		global.phase = PHASES.waitForAttack
		alarm[0] = 60
	}
}