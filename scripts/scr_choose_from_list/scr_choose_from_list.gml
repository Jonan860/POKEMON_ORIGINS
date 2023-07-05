// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_choose_from_list(list){
	var pos = irandom(ds_list_size(list)-1)
	return list[|pos]
}