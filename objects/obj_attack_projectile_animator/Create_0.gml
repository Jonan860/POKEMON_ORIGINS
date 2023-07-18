var i = choose(-1,1)
var miss = global.phase == PHASES.attackMiss
var ownPoke = owner.owner
var oppPoke = owner.getOpponent()
image_angle = point_direction(ownPoke.x, ownPoke.y, oppPoke.x, oppPoke.y)
x = ownPoke.x + ownPoke.sprite_width/2 * cos(pi / 180 * image_angle)
y = ownPoke.y - ownPoke.sprite_width/2 * sin(pi / 180 * image_angle)
//y = owner.owner.y + translationSign * owner.owner.sprite_height/2
spd = 9
switch(global.turn) {
	case TURNS.LILLESKUTT : move_towards_point(global.amber.active_pokemon.x
	, global.amber.active_pokemon.y, spd); break;
	case TURNS.AMBER : 	move_towards_point(global.lilleSkutt.active_pokemon.x - 10000 * i * miss
	, global.lilleSkutt.active_pokemon.y + miss * i * 1000, spd); break;	
}




