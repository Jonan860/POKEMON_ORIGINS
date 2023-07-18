with(owner.owner) {
	image_yscale *= global.phase == PHASES.attackMiss ? -1 : 1
	sprite_index = defenceCurlSprite
}