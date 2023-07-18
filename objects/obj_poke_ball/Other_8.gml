
var trainer = global.turn == TURNS.LILLESKUTT ? global.lilleSkutt : global.amber
with(trainer.active_pokemon) {
	visible = 1
	audio_play_sound(sound, 0, 0);
	switch(id) {
		case global.geodude : audio_pause_sound(global.background_music); break;
		case global.snorlax : global.background_music = sound_red_army; break;
	}
	if(owner = global.amber) {
		createMoveButtons()
	}
}
swap_turn()
instance_destroy()
	