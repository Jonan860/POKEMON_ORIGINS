
if(global.turn == TURNS.LILLESKUTT) {
	with(global.lilleSkutt.active_pokemon) {
		visible = 1
		audio_play_sound(sound, 0, 0);
	}
	swap_turn()
	instance_destroy()
	exit;
}

if(global.turn == TURNS.AMBER) {
	audio_play_sound(global.amber.active_pokemon.sound, 0, 0)
	if(global.amber.active_pokemon == global.geodude) {
		if(audio_is_playing(sound_red_army)) {
			audio_pause_sound(sound_red_army)
		}
		if(audio_is_playing(sound_witcher)) {
			audio_pause_sound(sound_witcher)
		}
	}
	swap_turn()
	instance_destroy()
	exit
}
