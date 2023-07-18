function phaseTransitionSetup(_phase) {
	global.phase = _phase
	switch(global.turn) {
		case TURNS.AMBER : 
			switch (global.phase) {
				case PHASES.choosing :
				with(global.amber) {
					if(active_pokemon == noone) {
						visible = 1;
						x = xstart; y = ystart;
					}
				}
				break;
				case PHASES.switchingPokemon : 
					with(obj_move_button) {
						instance_destroy()
					}
					with(obj_starters_button) {
						instance_destroy()
					}
					with(global.amber) {
						move_towards_point(2 * room_width, y, 10)
					}
				    break;
				case PHASES.riddle : instance_create_depth(room_width / 2, room_height / 2, 0, obj_text_bar); break;
				case PHASES.attackHit : 
					keyboard_string = ""
					with(obj_text_bar) {
						global.move.animationStart()
						instance_destroy()
					}
				    break;
				case PHASES.attackMiss : 
					keyboard_string=""
					with(obj_text_bar) { 
						global.move.animationStart()
						instance_destroy()
					}
					break;
				case PHASES.pokeball : 
					global.amber.speed = 0
					instance_create_depth(x, y, 0, obj_poke_ball)
				    break;
			}; break;
		case TURNS.LILLESKUTT :
			switch (global.phase) {
				case PHASES.choosing : 
					with(obj_pokemon) {
						speed = 0
						x = xstart; y = ystart;
					}
					with(global.lilleSkutt) {
						global.phase = active_pokemon == noone or !active_pokemon.alive  ? PHASES.waitForSwitching : PHASES.waitForAttack
						phaseTransitionSetup(global.phase)
					}
					break;
				
				case PHASES.switchingPokemon : 
					with(global.lilleSkutt) {
						move_towards_point(x - 1000, y, 10)
					}
				    break;
				case PHASES.statusAilment : 
					with(global.lilleSkutt.active_pokemon) {
						performStatusAilments()
					}
					break;
				case PHASES.MOVE_ANIMATION : 
					global.lilleSkutt.active_pokemon.scr_ai()
					global.move.animationStart()
				    break;
				case PHASES.waitForSwitching : global.lilleSkutt.alarm[0] = 30; break;
				case PHASES.waitForAttack : global.lilleSkutt.active_pokemon.alarm[0] = 30; break;
				case PHASES.pokeball : 
					with(global.lilleSkutt) {
						speed = 0
						scr_ai()
						active_pokemon.visible = 0
					}
					instance_create_depth(500, 500, 0, obj_poke_ball); break;
					break;
			}; break;
	}
}