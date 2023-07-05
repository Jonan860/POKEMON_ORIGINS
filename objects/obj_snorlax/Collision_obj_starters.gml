if(other.id == global.amber.active_pokemon){
	other.HP -= max(ceil(get_damage(20, damage, attack_bonus) * get_defence_bonus(other.defence_bonus) * get_type_bonus("normal", other.type)), 5)
	speed = 0
	x = xstart; y = ystart;
	global.turn = TURNS.AMBER
	global.phase = PHASES.choosing
}

