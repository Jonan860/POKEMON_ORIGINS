
if(!audio_is_playing(sound_hit)) {
	audio_resume_sound(global.background_music)
	instance_destroy()
}