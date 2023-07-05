switch(global.player) {
	case PLAYERS.Ida : global.phase = ifElseReturn(real(n) + real(m) = real(keyboard_string), PHASES.attackHit, PHASES.attackMiss); break;
	case PLAYERS.Nils : global.phase = ifElseReturn(abs(5-real(n))+abs(5-real(m))==real(keyboard_string), PHASES.attackHit, PHASES.attackMiss); break;
	case PLAYERS.Jonathan : global.phase = ifElseReturn((10*real(n)+real(m))*(10*real(n)+real(m))==real(keyboard_string), PHASES.attackHit, PHASES.attackMiss); break;
}
move.animationStart()
keyboard_string = ""
instance_destroy()

