
event_inherited();
var ownPoke = owner.owner
var oppPoke = owner.getOpponent()
if(point_distance(ownPoke.x, ownPoke.y, oppPoke.x, oppPoke.y) < 10) {
	instance_destroy()
}