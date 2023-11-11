function moveConstructor (moveEnum) constructor {
	name = moveToName(moveEnum)
	damage = moveToDamage(moveEnum);
	animator = moveToAnimator(moveEnum)
	effect = method(undefined, moveToEffect(moveEnum))
	element = moveToElement(moveEnum)
	button = moveToButton(moveEnum)
	sound = moveToSound(moveEnum)
	owner = noone
	opponent = noone
	animationEnd = function() {
		audio_stop_sound(sound)
		with(owner) {
			sprite_index = object_get_sprite(object_index)
			x = xstart
			y = ystart
			speed = 0
		}
		if(global.phase != PHASES.attackMiss) {
			effect()
			with(getOpponent()) {
				if(HP <= 0 and alive) {
					scr_death()
					var team_alive = scr_pokelist_check_alive( owner.pokemonList)
					if(!team_alive) {
						if(owner.id == global.lilleSkutt) {
							with(global.amber) {
								global.mewEnding = true
								withList(pokemonList, function(poke) {with(poke) {global.mewEnding = (alive and global.mewEnding)}})
							}
							gotoRoomWithSetup(global.mewEnding ? room_mew : winner); exit;
						}
						else {
							gotoRoomWithSetup(loser); exit;
						}
					}
				}
			}
		}
		if(room == game) {
			swap_turn()
		}
	}
	animationStart = function() {
		audio_play_sound(sound, 0, 0)
		var varAnimator = instance_create_depth(owner.x, owner.y, -1, animator, {owner : other})
	}
	getOpponent = function() { return (global.turn == TURNS.LILLESKUTT ? global.amber : global.lilleSkutt).active_pokemon}
}

function moveToName(moveEnum) {
	switch(moveEnum) {
		case MOVES.BUBBLE : return "bubble"
		case MOVES.EMBER : return "ember"
		case MOVES.VINE_WHIP : return "vineWhip"
		case MOVES.TACKLE : return "Tackle"
		case MOVES.DEFENCE_CURL : return "defence curl"
		case MOVES.PSY_CUTTER : return "psy cutter"
		case MOVES.GROWL : return "growl"
		case MOVES.SLEEP : return "sleep"
		case MOVES.TAIL_WHIP : return "tail Whip"
	}
}

function moveToDamage(moveEnum) {
	switch(moveEnum) {
		case MOVES.BUBBLE : return 20
		case MOVES.EMBER : return 20
		case MOVES.DEFENCE_CURL : return 0
		case MOVES.GROWL : return 0
		case MOVES.VINE_WHIP : return 20
		case MOVES.TACKLE : return 20
		case MOVES.PSY_CUTTER : return 30
		case MOVES.TAIL_WHIP : return 0
		case MOVES.SLEEP : return 0
		case MOVES.ROCK_THROW : return 20
		case MOVES.LEER : return 0
	}
}

function moveToButton(moveEnum) {
	switch(moveEnum) {
		case MOVES.EMBER : return obj_ember_button
		case MOVES.BUBBLE : return obj_bubble_button
		case MOVES.VINE_WHIP : return obj_vine_whip_button
		case MOVES.ROCK_THROW : return obj_rock_throw_button
		case MOVES.PSY_CUTTER : return obj_psy_cutter_button
		case MOVES.TACKLE : return noone
		case MOVES.DEFENCE_CURL : return obj_defence_curl_button
		case MOVES.GROWL : return obj_growl_button
		case MOVES.TAIL_WHIP : return obj_tail_whip_button
		case MOVES.SLEEP : return noone
		case MOVES.LEER : return obj_leer_button
	}
}

function moveToAnimator(moveEnum) {
	switch(moveEnum) {
		case MOVES.EMBER : return obj_ember_animator
		case MOVES.BUBBLE : return obj_bubble_animator
		case MOVES.VINE_WHIP : return obj_vine_whip_animator
		case MOVES.PSY_CUTTER : return obj_psy_cutter_animator
		case MOVES.ROCK_THROW : return obj_rock_throw_animator
		case MOVES.TACKLE : return obj_tackle_animator
		case MOVES.DEFENCE_CURL : return obj_defence_curl_animator
		case MOVES.GROWL : return obj_growl_animator
		case MOVES.TAIL_WHIP : return obj_tail_whip_animator
		case MOVES.LEER : return obj_leer_animator
		case MOVES.SLEEP : return obj_sleep_move_animator
	}
}

function moveToSound(moveEnum) {
	switch(moveEnum) {
		case MOVES.EMBER : return sound_ember
		case MOVES.BUBBLE : return sound_bubble
		case MOVES.TAIL_WHIP : return sound_tail_whip
		case MOVES.VINE_WHIP : return sound_vine_whip
		case MOVES.PSY_CUTTER : return sound_psy_cutter
		case MOVES.ROCK_THROW : return sound_rock_throw
		case MOVES.TACKLE : return sound_snorlax
		case MOVES.GROWL : return sound_growl
		case MOVES.LEER : return sound_leer
		case MOVES.SLEEP : return sound_sleep
		case MOVES.DEFENCE_CURL : return sound_defence_curl
	}
}

function moveToElement(moveEnum) {
	switch(moveEnum) {
		case MOVES.EMBER : return ELEMENTS.fire
		case MOVES.BUBBLE : return ELEMENTS.water
		case MOVES.VINE_WHIP : return ELEMENTS.grass
		case MOVES.PSY_CUTTER : return ELEMENTS.psychic
		case MOVES.ROCK_THROW : return ELEMENTS.rock
		case MOVES.TACKLE : return ELEMENTS.normal
		case MOVES.GROWL : return ELEMENTS.normal
		case MOVES.DEFENCE_CURL : return ELEMENTS.normal
		case MOVES.SLEEP : return ELEMENTS.normal
		case MOVES.TAIL_WHIP : return ELEMENTS.normal
		case MOVES.LEER : return ELEMENTS.normal
	}
}

function moveToEffect(moveEnum) {
	switch(moveEnum) {
		case MOVES.EMBER : return doDamage
		case MOVES.BUBBLE : return doDamage
		case MOVES.VINE_WHIP : return doDamage
		case MOVES.PSY_CUTTER : return doDamage 
		case MOVES.ROCK_THROW : return doDamage
		case MOVES.TACKLE : return doDamage
		case MOVES.GROWL : return function(){modifyStat("attack_bonus", -1, getOpponent())}
		case MOVES.TAIL_WHIP : return function(){modifyStat("defence_bonus", -1, getOpponent())}
		case MOVES.SLEEP : return function () {
			with(owner) {
				sleeping.apply()

				regening.apply()
				
				HP = max_HP
			}
		}
		case MOVES.DEFENCE_CURL : return function(){modifyStat("defence_bonus", 1, owner)}
		case MOVES.LEER : return function() {modifyStat("defence_bonus", -1, getOpponent())}
	}
}

// var ember=instance_create_depth(x+250,y+80,0,obj_ember_animator)
	
function modifyStat(statString, amount, target) {
	var stat = variable_instance_get(target, statString)
	variable_instance_set(target, statString, stat + amount)
}
//var ember=instance_create_depth(x-200,y-120,0,obj_ember_animator)
	
//if(global.phase="tail_whip_hit"){
//	if(global.turn=TURNS.AMBER){
//		global.lilleSkutt.active_pokemon.defence_bonus-=1
//		audio_play_sound(sound_tail_whip,0,0)
//		alarm[1]=2
//		global.charmander.active=0
//		obj_tail_whip.active=1
//		alarm_counter=5
//		alarm[0]=5;
		
//	}
//}

//switch(global.turn){
//case TURNS.LILLESKUTT : bubble = instance_create_depth(x+300,y+100,0,obj_bubble_animator);
//case TURNS.AMBER : bubble = instance_create_depth(x-200,y-150,0,obj_bubble_animator)
//}	
	//with(bubble){
	//	image_xscale=0.8; image_yscale=0.8
	//}

	//var vine_whip = instance_create_depth(x-150,y-150,0,obj_vine_whip_animator)
	//var wine = instance_create_depth(x+200,y+200,0,obj_vine_whip_animator)
	
	//var growl = instance_create_depth(x-300,y-300,0,obj_growl_animator)
	//var growl=instance_create_depth(x+300,y+300,0,obj_growl_animator)
	
	//var psy_cutter = instance_create_depth(x-50*!miss,y-40*!miss,0,obj_psy_cutter_animator)
	//var rock_throw = instance_create_depth(x-200,y-120,0,obj_rock_throw_animator)
	
function startRiddle() {	
	if(global.phase == PHASES.choosing and global.turn == TURNS.AMBER){
		if (instance_exists(global.amber.active_pokemon)){
			if(global.amber.active_pokemon.active and global.turn == TURNS.AMBER) {
				global.phase = PHASES.riddle
				var riddle = instance_create_depth(room_width/2, room_height/2, 0, obj_text_bar)
			}
		}
	}
}

function get_defence_bonus(poke) {
	with(poke){
		return defence_bonus >= 0 ?
		1/(1 + defence_bonus * stat_bonus) :
		1 - defence_bonus * stat_bonus
	}
}

function get_attack_bonus_modifier(poke) {
	with(poke){
		return attack_bonus >= 0 ? 1 + attack_bonus * stat_bonus : 1 / (1 - attack_bonus * stat_bonus)
	}
}

function doDamage() {
	var opponent = getOpponent()
	opponent.HP -= max(ceil(damage * owner.damage * get_attack_bonus_modifier(owner) * get_defence_bonus(opponent) * get_type_bonus(owner.type, opponent.type )))
}