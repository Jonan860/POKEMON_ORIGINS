owner.owner.image_xscale *= -1
alarm_counter -= 1
if(alarm_counter == 1 ) {
	owner.owner.image_angle = 90 * (global.phase == PHASES.attackMiss)
}
if (alarm_counter > 0) {
	alarm[0] = alarm_counter == 1 ? 15 : 5
} else {
	owner.owner.image_angle = 0
	instance_destroy()
}