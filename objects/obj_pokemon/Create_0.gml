alive = 1
barLength = 200; barX = x - sprite_xoffset; barHeight = 20; barY = y - sprite_yoffset - barHeight - 10 ;
movesSetup = function() {
	movesList = ds_list_create()
	for(var i = 0; i < argument_count; i++){
		argument[i].owner = other.id
		ds_list_add(movesList, argument[i]);					    
	}
}

scr_death = function() {
	alive = 0
	visible = 0
		
	with(owner) {
		active_pokemon = noone
		
		
		if(id == global.amber) {
			with(obj_move_button) {
				instance_destroy()
			}
		}
	}
}

sleeping = new ailmentConstructor(AILMENTS.SLEEPING)
regening = new ailmentConstructor(AILMENTS.REGENING)
statusAilmentList = ds_list_create()
ds_list_add(statusAilmentList, sleeping, regening)
withList(statusAilmentList, function(inst) {with(inst) {owner = other.id}})
ailmentIterator = 0
performStatusAilments = function() {
	if(ailmentIterator < ds_list_size(statusAilmentList)) {
		with(statusAilmentList[|ailmentIterator]) {
			owner.ailmentIterator += 1
			if(applied) {
				animationStart(); exit;
			} else {
				owner.performStatusAilments()
			}
		}
	} else {
		ailmentIterator = 0
		if(canUseMove()) {
			phaseTransitionSetup(PHASES.MOVE_ANIMATION)
		} else {
			swap_turn()
		}
	}
}

canUseMove = function() {
	return !sleeping.applied
}

returnBackgroundGainAfterPokeSound = function() {
	if(!audio_is_playing(sound) and (audio_sound_get_gain(global.background_music) < 1)) {
		audio_sound_gain(global.background_music, 1, 0)
	}
}





