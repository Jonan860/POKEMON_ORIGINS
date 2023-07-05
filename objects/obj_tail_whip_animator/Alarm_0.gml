/// @description Insert description here
// You can write your code in this editor
owner.owner.image_xscale *= -1
alarm_counter -= 1
if (alarm_counter>0){
	alarm[0]=5
}
else{
	instance_destroy()
}