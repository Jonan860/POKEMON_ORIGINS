global.event_continue = 0
name = ""
if(persistenceCreatePlacement()) {
event_inherited()
appear = 0
image_alpha = 0
info = 0
info_bubble = spr_ember_info
movesList = ds_list_create()
	
createMoveButtons = function() {
	for(var i = 0; i < ds_list_size(movesList); i++){
		instance_create_depth(200, 500 + 100 * i, -1, movesList[|i].button, {owner : movesList[|i]})
	}
}


global.event_continue = 1

}