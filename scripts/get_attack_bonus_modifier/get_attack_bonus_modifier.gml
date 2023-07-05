/// @description get_damage(n,damage,attack_bonus)
function get_attack_bonus_modifier() {
with(owner){
	return ifElseReturn(attack_bonus>=0, 1+attack_bonus2*stat_bonus, 1/(1-attack_bonus2*stat_bonus))
}
}
