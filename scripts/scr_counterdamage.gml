if(obj_mewtwo.HP<=0)
{global.state="win"
audio_stop_sound(sound_svenska)
audio_stop_sound(sound_norska)
instance_create(850,600,obj_win_girl);
/*if (object_exists(obj_poke_ball_button)=0)*/
instance_create(400,650,obj_poke_ball_button);
if !audio_is_playing(sound_elite_four)
{
audio_play_sound(sound_elite_four,0,1)
audio_sound_gain(sound_elite_four, 1, 0)
}
with(obj_starters)
{instance_destroy()}

with(obj_move_button)
{instance_destroy()}
with(obj_switch)
{instance_destroy()}
with(obj_damage_button)
{instance_destroy()}

}
else
{

instance_create(0,0,obj_psy_cutter)
with(obj_starters)
{
HP=HP-30*active*(1/(1-global.bonus*obj_mewtwo.attack_bonus))*(1-(defence_bonus)/(1/global.bonus+defence_bonus))
}

if obj_tail_whip.active=1
{with(obj_charmander)
{
HP=HP-30*(1/(1-global.bonus*obj_mewtwo.attack_bonus))*(1-(defence_bonus)/(1/global.bonus+defence_bonus))
}}}
/*if obj_defence_curl.active=1
{with(obj_squirtle)
{
HP=HP-30*(1/(1-global.bonus*obj_mewtwo.attack_bonus))*(1-(defence_bonus)/(1/global.bonus+defence_bonus))
}}
