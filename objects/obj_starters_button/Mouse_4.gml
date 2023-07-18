if(pokemon.alive and global.phase == PHASES.choosing) {
	with(global.amber.active_pokemon) {
		visible = 0
	}
	global.amber.active_pokemon = pokemon
	with(obj_switch_pokemon_button) {
		displaysPokemonList = false
	}
	phaseTransitionSetup(PHASES.switchingPokemon)
}
