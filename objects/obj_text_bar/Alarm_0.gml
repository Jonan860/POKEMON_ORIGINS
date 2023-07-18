if(timer == 0) {
	phaseTransitionSetup(PHASES.attackMiss)
}
else {
	timer-=1
	alarm[0] = room_speed
}

