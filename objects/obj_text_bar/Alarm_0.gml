if(timer == 0) {
	global.phase=PHASES.attackMiss
	keyboard_string=""
	instance_destroy()
}
else{
	timer-=1
	alarm[0]=room_speed
}

