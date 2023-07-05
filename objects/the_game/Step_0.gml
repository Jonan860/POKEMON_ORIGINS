/// @description Insert description here
// You can write your code in this editor
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
		
		if(!audio_is_playing(sound_pikachu_hej_vad_heter_du) and !audio_is_playing(sound_i_want_to_live)){
				audio_play_sound(sound_i_want_to_live, 0, 0)
		}	
	} break;

	case game : {
		scr_game_jukebox()
		switch (global.turn) {
			case TURNS.AMBER : {
				switch (global.phase) {
					case PHASES.switchingPokemon : {
						if(x > room_width + sprite_get_width(spr_win_girl) and !instance_exists(obj_poke_ball)) {
							speed = 0
							with(obj_starters_button) {
								instance_destroy()
							}
							instance_create_depth(x, y, 0, obj_poke_ball)
						}
					}; break;

					case PHASES.choosing : with(global.amber.active_pokemon) {
						if(HP <= 0 and alive) {
							scr_death()
						}
					}; break;		
				}
			}; break;
	
			case TURNS.LILLESKUTT : {
					switch (global.phase) {
						case PHASES.chooseMove : {
							with(global.lilleSkutt.active_pokemon) {
								if(HP <= 0 and alive) {
									scr_death(); exit;
								}
							}
							active_pokemon.scr_ai();
						} break;
						case PHASES.statusAilment : {
							if(!instance_exists(obj_statusAilment_animator))
							with(global.lilleSkutt.active_pokemon) {
								if(sleep > 0) {
									if(sleep == max_sleep) {
										audio_pause_sound(sound_red_army)
									}
									instance_create(x,y, obj_sleep_animator, {owner : id})
									audio_play_sound(sound_sleep, 0, 0)
								}
							}
						}; break;
						case PHASES.switchingPokemon : global.lilleSkutt.scr_switching() ; break;
						
					}
			}; break;
		}
	};  break
}
				
	
