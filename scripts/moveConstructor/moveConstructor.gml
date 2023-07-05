// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveConstructor (_damage, _animator, _animationEnd = animationEndStandard , _animationStart = animationStartStandard, _effect = function(){}, _element = ELEMENTS.normal, _button) constructor{
	damage = _damage;
	animator = _animator;
	animationEnd = method(undefined, _animationEnd)
	animationStart = method(undefined, _animationStart)
	effect = _effect
	element = _element
	button = _button
}

function createBubble() {
	return new moveConstructor(20,obj_bubble_animator,,,ELEMENTS.water)
}

function createEmber() {
	return new moveConstructor(20,obj_ember_animator,,,ELEMENTS.fire)
}

function createvineWhip() {
	return new moveConstructor(20,obj_vine_whip_animator,,,ELEMENTS.grass)
}

function createTackle() {
	return new moveConstructor(20,obj_tackle_animator,,,ELEMENTS.normal)
}

function createPsyCutter() {
	return new moveConstructor(20,obj_bubble_animator,,,ELEMENTS.psychic)
}

function createRockThrow() {
	return new moveConstructor(20,obj_rock_throw_animator,,,ELEMENTS.rock)
}

function createLeer() {
	return new moveConstructor(,obj_leer_animator,,,ELEMENTS.normal)
}

function createDefenceCurl() {
	return new moveConstructor(,obj_defence_curl_animator,,	, function(){owner.owner.defence_bonus+=1}
, ELEMENTS.normal, obj_defence_curl_button)
}

function createGrowl() {
	return new moveConstructor(,obj_growl_animator,,,ELEMENTS.normal)
}

function createTailWhip() {
	return new moveConstructor(,obj_growl_animator,,, function(){opponent.defence_bonus -= 1}, ELEMENTS.normal)
}


function createSleep() {
	return new moveConstructor(20,obj_sleep_animator,,,ELEMENTS.normal)
}

function sleepEffect(){
	with(opponent){
		sleep.turns = choose(3,4,5)
		sleep.applied = 1
		max_sleep = sleep
		HP=max_HP
	}
}

function animationEndStandard() {
audio_stop_sound(sound)
effect()
}
	
// var ember=instance_create_depth(x+250,y+80,0,obj_ember_animator)
		

function animationStartStandard(){
var varAnimator = instance_create_depth
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
			global.phase=PHASES.riddle
			var riddle=instance_create_depth(room_width/2,room_height/2,0,obj_text_bar)
		}
	}
}
}




	


	
	
	
		