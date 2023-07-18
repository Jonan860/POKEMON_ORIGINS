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

	bubble = new moveConstructor(MOVES.BUBBLE)
	defenceCurl = new moveConstructor(MOVES.DEFENCE_CURL)
	movesSetup(bubble, defenceCurl)
	
	defenceCurlSprite = spr_defence_curl
	scr_ai = function(){
		global.move = choose(bubble,bubble,bubble,defenceCurl)
	}
}