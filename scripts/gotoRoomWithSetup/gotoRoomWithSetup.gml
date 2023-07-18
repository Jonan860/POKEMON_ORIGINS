// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gotoRoomWithSetup(_room) {
	audio_stop_all()
	switch (_room) {
		case game : {
			global.turn = TURNS.LILLESKUTT
			global.lilleSkutt.image_alpha = 1
			global.amber.image_alpha = 1
			with(obj_pokemon) {
				visible = 0
				image_alpha = 1
			}
			global.background_music = sound_witcher
			phaseTransitionSetup(PHASES.choosing)
		}; break;
		case loser : {
			sound_global_volume(1);
			global.background_music = sound_luffy
		}; break;
		case winner : {
			sound_global_volume(0.3);
			global.background_music = sound_minato
		}; break;
	}
	audio_play_sound(global.background_music, 0, 1)
	room_goto(_room)
}