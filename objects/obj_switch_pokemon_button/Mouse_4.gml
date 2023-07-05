//if(global.phase=="choose_self" or global.phase=="amber")
if(phase = "switch_pokemon"){
	if(global.turn == TURNS.AMBER and global.phase != "riddle"){
		var buttonHeight = sprite_get_height(obj_mewtwo_button)
		var aliveList = scr_filter_list(global.amber.pokemonList, "alive", 1)
		for(var i = 0; i < ds_list_size(aliveList); i++){
			with(aliveList[|i]){
				if(global.amber.active_pokemon != id){
					instance_create_depth(600, 450 + i * buttonHeight, 0, button)
				}
			}
		}
		
		
		phase = "back"
		global.phase = "amber"
		global.amber.active = 1
		with(obj_move_button){
			instance_destroy()
		}

		with(obj_starters){ /////////////?????
			active = 0
		}
	}
}
else if(phase == "back") {
	//with(global.amber.active_pokemon.active = 1
	global.phase = PHASES.choosing
	with(obj_starters_button){
		instance_destroy()
	}
	global.amber.active = 0
	phase = "switch_pokemon"
}


