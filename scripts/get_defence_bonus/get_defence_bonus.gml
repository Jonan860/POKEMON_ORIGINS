/// @description get_defence_bonus(defence_bonus2)
/// @param defence_bonus2
function get_defence_bonus() {
	with(owner){
		return ifElseReturn(defence_bonus>=0,
		1/(1+defence_bonus*stat_bonus),
		1-defence_bonus*stat_bonus)
	}
}