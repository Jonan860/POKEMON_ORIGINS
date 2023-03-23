// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(){

if !file_exists("savedFile.sav") exit;

var buffer = buffer_load("savedFile.sav")
var json = buffer_read(buffer, buffer_string)
buffer_delete(buffer)

var loadArray = json_parse(json)
global.saveData = array_get(loadArray, 0)


with(obj_trainer){instance_destroy()} //may need to improve destroy event if pokemons aren't removed


scr_goto_room(asset_get_index(global.saveData._room))

global.phase = global.saveData._global.phase
global.turn = global.saveData._global.turn
global.background_music = global.saveData._global.background_music
global.enemy = global.saveData._global.enemy
global.last_room = global.saveData._global.last_room
global.move = global.saveData._global.move
global.numberofstartersleft = global.saveData._global.numberofstartersleft


if(variable_struct_exists(global.saveData,"Amber")){
global.amber=instance_create_depth(0,0,0,obj_amber)
with(global.amber){load()}
}

if(variable_struct_exists(global.saveData,"Jansson")){//global sets in create
global.Jansson = instance_create_depth(0,0,0,obj_jansson)
with(global.Jansson){load()}
}

if(variable_struct_exists(global.saveData,"Husmusen")){
with(instance_create_depth(0,0,0,obj_husmusen)){load()}
}

if(variable_struct_exists(global.saveData,"teddy")){
with(instance_create_depth(0,0,0,obj_teddy)){load()}
}

}