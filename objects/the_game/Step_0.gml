switch (room) {
	case difficulty : {
		with(obj_starters) {
			image_alpha += 0.003 * appear
		}
		with(global.amber) {
			image_alpha += 0.1 * appear
			with(obj_amber_tease) {
				image_alpha = other.image_alpha
			}
		}
		
		if(!audio_is_playing(sound_pikachu_hej_vad_heter_du) and !audio_is_playing(sound_i_want_to_live)) {
				global.background_music = sound_i_want_to_live
				audio_play_sound(global.background_music, 0, 0)
		}	
	} break;

	case game : {
		switch (global.turn) {
			case TURNS.AMBER : 
				switch (global.phase) {
					case PHASES.switchingPokemon :
						with(global.amber) {
							if(x > room_width + sprite_get_width(spr_win_girl)) {
								phaseTransitionSetup(PHASES.pokeball)
							}
						}; break;
					case PHASES.choosing :	break;
				}; break;
	
			case TURNS.LILLESKUTT : 
				switch (global.phase) {
					case PHASES.MOVE_ANIMATION : break;
					case PHASES.statusAilment : break;
					case PHASES.switchingPokemon : global.lilleSkutt.scr_switching() ; break;	
				};
			break;
		}; break;
	}; break;
}
				
	
