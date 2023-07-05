global.event_continue = 0
if(persistenceCreatePlacement()) {
	alive = 1
	movesList = ds_list_create()
	scr_death = function() {
		alive = 0
		var alivePokemonList = scr_filter_list(pokemonList, "alive", 1)
		if(ds_list_empty(alivePokemonList)) {
			gotoRoomWithSetup(winner)
			exit;
		}
		global.phase = PHASES.switchingPokemon
		global.amber.active_pokemon = noone
		exit;
	}
	global.event_continue = 1
}