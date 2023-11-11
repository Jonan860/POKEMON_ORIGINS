var pokeOwn = owner.owner
var oppPoke = owner.getOpponent()
image_angle = point_direction(pokeOwn.x, pokeOwn.y, oppPoke.x, oppPoke.y)
x = pokeOwn.x + cos(pi/180 * image_angle) * pokeOwn.sprite_width
y = pokeOwn.y - sin(pi/180 * image_angle) * pokeOwn.sprite_width
if(global.phase == PHASES.attackMiss) {
	audio_stop_sound(owner.sound)
	audio_play_sound(sound_cow, 0, 0)
}