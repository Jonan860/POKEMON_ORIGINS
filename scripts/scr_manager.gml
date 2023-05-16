if(room==difficulty)
{
if(audio_is_playing(sound_pikachu_hej_vad_heter_du)==0 and audio_is_playing(sound_i_want_to_live)==0)
{
audio_play_sound(sound_i_want_to_live,0,0)
}
else
{

}
}
else
{
audio_stop_sound(sound_i_want_to_live)
global.lille_skutt_x=instance_find(obj_lille_skutt,0).x
global.exists=object_exists(obj_ember_button)
if global.state!="win" and global.state!="winwin"
{
if (!(audio_is_playing(sound_witcher)))
{audio_play_sound(sound_witcher,0,1)}
}
/*{
if !(audio_is_playing(sound_svenska) or  audio_is_playing(sound_norska))
{global.n = global.n+1 mod 2;
if global.n=1
{audio_play_sound(sound_norska,0,0)}
else
{audio_play_sound(sound_svenska,0,0)}
}
}*/
/*if global.state!="win"
{if(obj_mewtwo.HP<=0)
{
audio_stop_sound(sound_svenska)
audio_stop_sound(sound_norska)
/*room_goto(winner)*/
/*global.state="win"}

else
{*/
if global.state!="win" and global.state!="winwin"
{i=0
with(obj_starters)
{other.i+=alive}
if(i==0)
{audio_stop_all();
room_goto(loser);
}}
}
if(audio_is_playing(sound_sleep)==0 and audio_is_playing(sound_its_geodude)==0 and audio_is_paused(sound_red_army))
{
audio_resume_sound(sound_red_army)
}

if(audio_is_playing(sound_sleep)==0 and audio_is_playing(sound_its_geodude)==0 and audio_is_paused(sound_witcher))
{
audio_resume_sound(sound_witcher)
}

with(obj_snorlax)
{
if(zzz and sleep=max_sleep)
{audio_pause_sound(sound_red_army)}
}
/*}}*/

/*if (global.state="win")
{global.state="winwin"
/*if (object_exists(obj_win_girl)=0)*/
/*draw_sprite(obj_win_girl,0,obj_charmander.x,obj_charmander.y);
/*if (object_exists(obj_poke_ball_button)=0)*/
/*instance_create(400,650,obj_poke_ball_button);
if !audio_is_playing(sound_elite_four)
{audio_play_sound(sound_elite_four,0,1)}
with(obj_starters)
{instance_destroy()}

with(obj_move_button)
{instance_destroy()}
with(obj_switch)
{instance_destroy()}
with(obj_damage_button)
{instance_destroy()}

}

}









