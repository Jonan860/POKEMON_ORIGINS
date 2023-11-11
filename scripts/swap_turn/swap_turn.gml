function swap_turn() {
	global.turn = 1 - global.turn
	phaseTransitionSetup(PHASES.choosing)
}