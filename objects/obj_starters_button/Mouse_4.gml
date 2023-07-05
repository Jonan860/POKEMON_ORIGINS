if(pokemon.alive and global.phase=="amber"){
	global.active_pokemon=pokemon
	global.phase="amber_move"

	with(obj_starters_button){
		instance_destroy();
	}

	with(obj_switch_pokemon_button){
		phase="switch_pokemon"
	}
}

/* */
/*  */
