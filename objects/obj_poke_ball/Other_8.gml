var trainer = global.turn == TURNS.LILLESKUTT ? global.lilleSkutt : global.amber
with(trainer.active_pokemon) {
	visible = 1
	audio_play_sound(sound, 0, 0);
	
	if(id == global.snorlax) {
		audio_stop_sound(global.background_music)
		global.background_music = sound_red_army;
		audio_play_sound(global.background_music, 0, 1);
		break;
	}
	audio_sound_gain(global.background_music, 0.5, 0)
	if(owner = global.amber) {
		createMoveButtons()
	}
}
swap_turn()
instance_destroy()