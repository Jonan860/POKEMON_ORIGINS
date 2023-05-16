with(obj_starters)
if (active)
{
defence_bonus=defence_bonus+1
}
audio_play_sound(sound_defence_curl,0,0)
alarm[1]=2
global.state="defence curl"
/*obj_squirtle.active=0
obj_defence_curl.active=1*/
alarm[0]=13;

