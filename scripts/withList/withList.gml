// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function withList(list, func) {
	for(var i = 0; i < ds_list_size(list); i++) {
		func(list[|i])
	}
}