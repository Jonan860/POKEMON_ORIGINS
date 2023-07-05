// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instanceCreateReturnUnique(object){
	if(instance_exists(object)) {
		return instance_find(object, 0)
	} else {
		return instance_create_depth(x,y,0,object)
	}
}