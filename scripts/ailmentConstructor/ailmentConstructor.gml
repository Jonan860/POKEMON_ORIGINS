// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ailmentConstructor(ailmentEnum) constructor{
	effect = method(undefined, ailmentToEffect(ailmentEnum))
	apply = method(undefined, ailmentToApply(ailmentEnum))
	draw = method(undefined, ailmentToDraw(ailmentEnum))
	name = ailmentToName(ailmentEnum)
	shortName = ailmentToShortName(ailmentEnum)
	animator = ailmentToAnimator(ailmentEnum)
	sound = ailmentToSound(ailmentEnum)
	animationStart = function() {
		if(sound != noone) {
			audio_play_sound(sound, 0, 0)
		}
		instance_create_depth(owner.x, owner.y, -1, animator, {owner : other})
	}
	animationEnd = function() {
		effect()
		turnsLeft = max(turnsLeft - 1, 0)
		if(turnsLeft == 0) {
			applied = 0
		}
		owner.performStatusAilments()
	}
	applied = 0
	turnsLeft = 0
}

function ailmentToApply(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return function() {
			applied = 1
			turnsLeft = choose(3,4,5)
		}
		break
		
		case AILMENTS.REGENING : return function() {
			applied = 1
			turnsLeft = choose(3,4,5)
		}
		break;
	}
}

function ailmentToShortName(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return "slp"; break;
		case AILMENTS.REGENING : return "rgn"; break;
	}
}

function ailmentToDraw(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : 
			return function() {
				with(owner) {
					draw_sprite(spr_sleep, 0, x + sprite_width/2, y - sprite_width/2)
				}
			}
			break;
			
		case AILMENTS.REGENING :
			return function() {
				with(owner) {
					
				}
			}
			break;
	}
}

function ailmentToName(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return "SLEEPING"; break;
		case AILMENTS.REGENING : return "REGENING"; break;
	}
}

function ailmentToAnimator(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return obj_sleeping_animator; break;
		case AILMENTS.REGENING : return obj_regening_animator; break;
	}
}

function ailmentToSound(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return sound_sleep; break;
		case AILMENTS.REGENING : return noone; break;
	}
}

function ailmentToEffect(ailmentEnum) {
	switch(ailmentEnum) {
		case AILMENTS.SLEEPING : return function() {
			
		}; 
		break;
		
		case AILMENTS.REGENING : return function() {
			with(owner) {
				HP = min(HP + max_HP/6, max_HP)
			}
		};
		break;
	}
}
