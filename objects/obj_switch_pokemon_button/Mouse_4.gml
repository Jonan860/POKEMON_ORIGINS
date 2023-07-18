//if(global.phase=="choose_self" or global.phase=="amber")
if(!displaysPokemonList) {
	if(global.turn == TURNS.AMBER and global.phase == PHASES.choosing) {
		var buttonHeight = sprite_get_height(spr_mewtwo_button)
		var aliveList = scr_filter_list(global.amber.pokemonList, "alive", 1)
		for(var i = 0; i < ds_list_size(aliveList); i++) {
			with(aliveList[|i]) {
				if(global.amber.active_pokemon != id) {
					instance_create_depth(600, 450 + i * buttonHeight, 0, button)
				}
			}
		}
		displaysPokemonList = true
		with(obj_move_button) {
			instance_destroy()
		}
	}
} else if(displaysPokemonList) {
	with(obj_starters_button) {
		instance_destroy()
	}
	with(global.amber.active_pokemon) {
		createMoveButtons()
	}
	displaysPokemonList = false
}


