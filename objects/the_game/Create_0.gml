/// @description Insert description here
// You can write your code in this editor
global.phase = PHASES.start
global.turn = TURNS.LILLESKUTT
global.player = noone
global.phase = noone
audio_play_sound(sound_pikachu_hej_vad_heter_du,0,0)
global.amber = instanceCreateReturnUnique(obj_amber)
global.lilleSkutt = instanceCreateReturnUnique(obj_lille_skutt)

global.enumListPlayers = ds_list_create()
global.enumListElements = ds_list_create()
global.enumListPhases = ds_list_create()
global.enumListTurns = ds_list_create()
ds_list_add(global.enumListPlayers, "Nils", "Ida", "Jonathan")
ds_list_add(global.enumListElements, "fire", "water", "grass", "rock", "bug"
, "ghost", "psychic", "earth", "dragon", "normal")
ds_list_add(global.enumListPhases, "choosing", "attackMiss", "attackHit", "start")
ds_list_add(global.enumListTurns, "AMBER", "LILLESKUTT")

scr_game_jukebox = function() {
	if(global.lilleSkutt.active_pokemon != global.snorlax) {
		if (!(audio_is_playing(sound_witcher))) {
			audio_play_sound(sound_witcher, 0, 1)
		}
	} else {
		if(!audio_is_playing(sound_red_army) and !audio_is_playing(sound_snorlax) and !audio_is_paused(sound_red_army) and global.lilleSkutt.active_pokemon.max_sleep != global.lilleSkutt.active_pokemon.sleep){
			audio_play_sound(sound_red_army, 0, 1)
		}
		if(!(audio_is_playing(sound_sleep) or audio_is_playing(global.amber.active_pokemon.sound))) {
			if(audio_is_paused(sound_red_army)) {
				audio_resume_sound(sound_red_army)
			}
			if(audio_is_paused(sound_witcher)) {
				audio_resume_sound(sound_witcher)
			}
		}
	}
}


