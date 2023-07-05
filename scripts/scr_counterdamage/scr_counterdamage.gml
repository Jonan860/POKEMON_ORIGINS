function scr_counterdamage() {
	if(global.mewtwo.HP <= 0) {
		global.phases = PHASES.win
		audio_stop_sound(sound_svenska)
		audio_stop_sound(sound_norska)
		instance_create_depth(850, 600, 0, obj_amber);
		/*if (object_exists(obj_poke_ball_button)=0)*/
		instance_create_depth(400, 650, 0, obj_poke_ball_button);
		if (!audio_is_playing(sound_elite_four)) {
			audio_play_sound(sound_elite_four, 0, 1)
			audio_sound_gain(sound_elite_four, 1, 0)
		}
		with(obj_starters) {
			instance_destroy()
		}
		with(obj_move_button) {
			instance_destroy()
		}
		with(obj_switch_pokemon_button) {
			instance_destroy()
		}
	}
	else{
		instance_create_depth(0, 0, 0, obj_psy_cutter_animator)
		with(obj_starters){
			HP = HP - 30 * active * (1 / (1 - global.bonus * global.mewtwo.attack_bonus))
			* (1 - (defence_bonus) / (1/global.bonus + defence_bonus))
		}
		if (instance_exists(obj_tail_whip_animator)){
			with(obj_charmander){
				HP = HP - 30 * (1 / (1 - global.bonus * global.mewtwo.attack_bonus))
				* (1 - (defence_bonus) / (1 / global.bonus + defence_bonus))
			}
		}
	}
}
