var ownPoke = owner.owner
var oppPoke = owner.getOpponent()
var maxLength = point_distance(ownPoke.x, ownPoke.y, oppPoke.x, oppPoke.y)
var durationSec = 2
var startLength = sprite_get_width(spr_vine_whip)
var currentLength = startLength
currentLength += (maxLength - startLength)  / (durationSec * room_speed)
image_xscale *= currentLength/startLength
if( point_distance(x + cos(pi / 180 * image_angle) * sprite_width, y - sin(pi/180 * image_angle) * sprite_width
, oppPoke.x + cos(pi / 180 * image_angle) * oppPoke.sprite_width/2, oppPoke.y - sin(pi/180 * image_angle) * oppPoke.sprite_width/2) < 20) {
	instance_destroy()
}
if(sprite_width > room_width) {
	instance_destroy()
}






