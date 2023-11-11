var i = choose(-1, 1)
var miss = global.phase == PHASES.attackMiss
var ownPoke = owner.owner
var oppPoke = owner.getOpponent()
image_angle = point_direction(ownPoke.x, ownPoke.y, oppPoke.x, oppPoke.y)
x = ownPoke.x + ownPoke.sprite_width/2 * cos(pi / 180 * image_angle)
y = ownPoke.y - ownPoke.sprite_width/2 * sin(pi / 180 * image_angle)
//y = owner.owner.y + translationSign * owner.owner.sprite_height/2
var spd = 9
switch(global.turn) {
	case TURNS.LILLESKUTT : var target = global.amber.active_pokemon; break;
	case TURNS.AMBER : 	var target = global.lilleSkutt.active_pokemon; break;
}

if(miss) {
	var NWcorner = [target.x - target.sprite_xoffset, target.y - target.sprite_yoffset]
	var NEcorner = [NWcorner[@0] + target.sprite_width, NWcorner[@1]]
	var SWcorner = [NWcorner[@0], NWcorner[1] + target.sprite_height]
	
	var missCorner = choose(NEcorner, SWcorner)
	move_towards_point(missCorner[@0], missCorner[@1], spd);
	depth += missCorner == NEcorner ? 5 : -5;
} else {
	move_towards_point(target.x , target.y , spd)
}
