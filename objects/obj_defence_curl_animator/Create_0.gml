poke_xscale = owner.owner.image_xscale
poke_yscale = owner.owner.image_yscale
pokeWidth = owner.owner.sprite_width
pokeHeight = owner.owner.sprite_height
poke_sprIndex = owner.owner.sprite_index
with(owner.owner) {
	sprite_index = global.phase == PHASES.attackMiss ? defenceCurlSpriteMiss : defenceCurlSprite
	image_xscale *= other.pokeWidth / sprite_width
	image_yscale *=	other.pokeHeight / sprite_height
}