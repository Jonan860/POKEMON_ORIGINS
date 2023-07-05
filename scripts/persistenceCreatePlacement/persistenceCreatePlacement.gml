// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function persistenceCreatePlacement() {
	if(instance_number(object_index) > 1) {
		with( object_index) {
			if(id != other.id) {
				x = other.x; y = other.y;
			}
		}
		instance_destroy()
		return false
	}
	return true // allows rest of event to run
}