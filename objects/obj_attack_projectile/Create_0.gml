var i = choose(0,1)
switch(global.turn){
	case TURNS.LILLESKUTT : 	move_towards_point(global.amber.active_pokemon.x + 100 + !miss * i * 10000
	, global.amber.active_pokemon.y + 100 + !miss * (1 - i) * 1000, spd); break;
	case TURNS.AMBER : 	move_towards_point(global.lilleSkutt.active_pokemon.x - 100 - 10000 * i * !miss, global.lilleSkutt.active_pokemon.y - 100 - !miss * (1 - i) * 1000, spd);break;	
}	

image_angle = 180 * owner.owner == global.lilleSkutt


