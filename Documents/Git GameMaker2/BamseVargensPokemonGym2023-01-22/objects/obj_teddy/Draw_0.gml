
if(room=room_teddy_gym){
	sprite_index=spr_teddy
	draw_self()
}

if(room=room_teddy_match){
	if(global.phase=PHASES.defeated)	{
switch (global.turn){
	case TURNS.enemy: draw_sprite_ext(spr_teddy_defeat_bubble,-1,x+sprite_width,y-sprite_height,1,1,0,c_white,1);
	case TURNS.Amber: draw_sprite_ext(spr_teddy_victory_bubble,-1,x+sprite_width,y-sprite_height,1,1,0,c_white,1);
	}
sprite_index=spr_teddy_bed

}
draw_self()
}



