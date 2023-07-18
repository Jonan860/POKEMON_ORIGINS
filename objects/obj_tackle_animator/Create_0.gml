/// @description Insert description here
// You can write your code in this editor
var opponent = owner.getOpponent()
with(owner.owner) {
	move_towards_point(opponent.x, opponent.y, 10)
}