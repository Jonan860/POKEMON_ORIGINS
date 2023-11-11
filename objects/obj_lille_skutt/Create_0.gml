if(persistenceCreatePlacement()) {
	appear = 0
	xstart = x; ystart = y;
	active = 1;
	move = 0;
	if(room == difficulty) {
		image_alpha = 0
		with(obj_speech_lille_skutt_boast) {
			image_alpha = 0
		}
		alarm[1] = room_speed * 6
	}

	pokemonList = ds_list_create()

	global.charmeleon = instanceCreateReturnUnique( obj_charmeleon)
	global.ivasaur = instanceCreateReturnUnique(obj_ivasaur)
	global.wartortle = instanceCreateReturnUnique((obj_wartortle))
	global.snorlax = instanceCreateReturnUnique(obj_snorlax)
	ds_list_add(pokemonList, global.charmeleon, global.wartortle, global.ivasaur, global.snorlax)
	withList(pokemonList, function(inst){with(inst) {owner = other.id}})
	active_pokemon = noone
	scr_switching = function() {
		var alivePokemonList = scr_filter_list(pokemonList, "alive", 1)
		if (x < -sprite_width and !instance_exists(obj_poke_ball)) {
			phaseTransitionSetup(PHASES.pokeball)
		}
	}
}

scr_ai = function() {
	var starterList = ds_list_create()
	ds_list_add(starterList, global.charmeleon, global.ivasaur, global.wartortle)
	var aliveStarters = scr_filter_list(starterList, "alive", 1)
	if(ds_list_size(aliveStarters) > 0) {
		active_pokemon = scr_choose_from_list(aliveStarters)
	} else {
		active_pokemon = global.snorlax
		audio_stop_sound(global.background_music)
	}
}
		

