	global.event_continue = 0
	if(persistenceCreatePlacement()) {
	event_inherited()
	appear = 0
	image_alpha = 0
	info = 0
	info_bubble = spr_ember_info
	movesList = ds_list_create()
	
	createMoveButtons = function() {
		for(var i = 0; i < ds_list_size(moveList); i++){
			instance_create_depth(200, 500 + 100 * i, 0, movesList[|i].button, {move : movesList[|i]})
		}
	}

	scr_death = function() {
		alive = 0
		global.amber.active_pokemon = noone
		with(global.amber) {
			var team_alive = scr_pokelist_check_alive( pokemonList)
			if(!team_alive) {
				gotoRoomWithSetup(loser)
				exit;
			}
		}
		owner.x = xstart; owner.y = ystart;
		global.phase = PHASES.choosing
		with(obj_move_button){
			instance_destroy()
		}
	}
	
	global.event_continue = 1
}