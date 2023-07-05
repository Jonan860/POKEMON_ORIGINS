// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_filter_list(list, variableString, value){
	var filteredList = ds_list_create()
	for(var i = 0; i < ds_list_size(list); i++){
		if(variable_instance_get(list[|i], variableString) == value){
			ds_list_add(filteredList, list[|i])
		}
	}
	return filteredList
}