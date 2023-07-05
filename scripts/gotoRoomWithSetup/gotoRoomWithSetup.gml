// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gotoRoomWithSetup(_room) {
	audio_stop_all()
	switch (_room) {
		case game : {
			global.turn = TURNS.LILLESKUTT
			global.phase = PHASES.switchingPokemon
			global.amber.image_alpha = 1
			global.lilleSkutt.image_alpha = 1
		}
		case loser : {
			sound_global_volume(1);
			audio_play_sound(sound_luffy,0,1)
		}
		case winner : {
			sound_global_volume(0.3);
			audio_play_sound(sound_minato,0,0)
		}
	}
	room_goto(_room)
}