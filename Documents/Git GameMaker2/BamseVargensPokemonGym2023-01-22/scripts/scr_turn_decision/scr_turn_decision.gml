///returns enemy chose or amber choose phase
function scr_turn_decision() {
	global.phase=PHASES.choosing
	var amber=global.amber
	if(amber.active_pokemon!=noone){
		var amberActionBar=amber.active_pokemon.action_bar
		var enemyActionBar=global.enemy.active_pokemon.action_bar
	
	var minimi=min(enemyActionBar,amberActionBar);
	global.enemy.active_pokemon.action_bar-=minimi
	amber.active_pokemon.action_bar-=minimi
	
	var zero= amber.active_pokemon.action_bar==0
	global.turn=zero*TURNS.Amber+!zero*TURNS.enemy
	}
	else{global.turn=TURNS.Amber}
}
