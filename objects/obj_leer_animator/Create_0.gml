var ownPoke = owner.owner
var oppPoke = owner.getOpponent()
x = (ownPoke.x + oppPoke.x) / 2
y = (ownPoke.y + oppPoke.y) / 2
image_angle = point_direction(ownPoke.x, ownPoke.y, oppPoke.x, oppPoke.y)
image_xscale = (ownPoke.x - oppPoke.x) / sprite_width
if(global.phase == PHASES.attackMiss) {
	image_xscale *= 0.5; image_yscale *= 0.5;
	x = (owner.owner.x + x) / 2
	y = (owner.owner.y + y) / 2
}

