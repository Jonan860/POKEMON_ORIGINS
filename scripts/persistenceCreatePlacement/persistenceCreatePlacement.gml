function persistenceCreatePlacement() {
	if(instance_number(object_index) > 1) {
		with( object_index) {
			if(id != other.id) {
				x = other.x; y = other.y;
				xstart = x; ystart = y
				image_xscale = other.image_xscale; image_yscale = other.image_yscale;
				if(object_is_ancestor(object_index, obj_pokemon)) {
					barLength = 200; barHeight = 20; barX = x - sprite_xoffset; barY = y - sprite_yoffset - barHeight - 10 
				}
			}
		}
		instance_destroy()
		return false
	}
	return true // allows rest of event to run
}