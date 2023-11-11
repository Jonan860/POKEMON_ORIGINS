opponent = owner.getOpponent()
movementSpeed = 15
with(owner.owner) {
	move_towards_point(other.opponent.x, other.opponent.y, other.movementSpeed)
}