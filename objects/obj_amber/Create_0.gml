if(persistenceCreatePlacement()) {
	appear = 0
	active = 1;

	xstart = x; ystart = y;
	if(room == difficulty) {
		image_alpha = 0
		with(obj_amber_tease) {
			image_alpha = 0
		}
		alarm[0] = room_speed * 18
	}
	
	pokemonList = ds_list_create()
	global.charmander = instanceCreateReturnUnique(obj_charmander)
	global.squirtle = instanceCreateReturnUnique(obj_squirtle)
	global.bulbasaur = instanceCreateReturnUnique( obj_bulbasaur)
	global.geodude = instanceCreateReturnUnique( obj_geodude)
	global.mewtwo = instanceCreateReturnUnique( obj_mewtwo)
	ds_list_add(pokemonList, global.charmander, global.squirtle
	,global.bulbasaur, global.geodude, global.mewtwo)
	
	withList(pokemonList, function(inst){with(inst) {owner = other.id}})
	active_pokemon = noone
}

