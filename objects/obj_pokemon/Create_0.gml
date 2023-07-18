/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event



alive = 1
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
		var team_alive = scr_pokelist_check_alive( pokemonList)
		if(!team_alive) {
			gotoRoomWithSetup(id == global.lilleSkutt ? winner : loser)
			exit;
		}
		
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





