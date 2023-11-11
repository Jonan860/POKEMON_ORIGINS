if(image_xscale < maxScale) {
	image_xscale += (maxScale - xscaleStart) / (durationSec * game_get_speed(gamespeed_fps))
	image_yscale += (maxScale - xscaleStart) / (durationSec * game_get_speed(gamespeed_fps))
}

image_alpha += 1/(durationSec * game_get_speed(gamespeed_fps))