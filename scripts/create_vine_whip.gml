vine_whip_scale=1
audio_play_sound(sound_vine_whip,0,0)
if(global.turn="opponent")
image_angle=180
damage=noone
type="grass"
spd=9
miss=noone
sound=sound_vine_whip
event_inherited()
