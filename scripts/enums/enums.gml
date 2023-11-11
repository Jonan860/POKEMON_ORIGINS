enum TURNS {
	AMBER,
	LILLESKUTT
}
function turnsToName(varEnum) {
	switch(varEnum) {
		case TURNS.AMBER : return "Amber"; break;
		case TURNS.LILLESKUTT : return "LilleSkutt"; break;
	}
}

enum PHASES {
	choosing,
	attackMiss,
	attackHit,
	start,
	switchingPokemon,
	win,
	riddle,
	MOVE_ANIMATION,
	waitForAttack,
	waitForSwitching,
	statusAilment,
	pokeball
}

function phasesToName(varEnum) {
	switch(varEnum) {
		case PHASES.choosing : return "choosing"; break;
		case PHASES.attackHit : return "attackHit"; break;
		case PHASES.attackMiss : return "attackMiss"; break;
		case PHASES.start : return "start"; break;
		case PHASES.switchingPokemon : return "switchingPokemon"; break;
		case PHASES.win : return "win"; break;
		case PHASES.riddle : return "riddle"; break;	
		case PHASES.MOVE_ANIMATION : return "MOVE_ANIMATION"; break;
		case PHASES.waitForAttack : return "waitForAttack"; break;
		case PHASES.waitForSwitching : return "waitForSwitching"; break;
		case PHASES.statusAilment : return "statusAilment"; break;
		case PHASES.pokeball : return "pokeball"; break;	
	}
}


enum ELEMENTS {
	fire, 
	water,
	grass,
	rock,
	bug,
	ghost,
	psychic,
	earth,
	dragon,
	normal,
}
function elementsToName(varEnum) {
	switch(varEnum) {
		case ELEMENTS.fire : return "fire"; break; 
		case ELEMENTS.water : return "water"; break;
		case ELEMENTS.grass : return "grass"; break;
		case ELEMENTS.rock : return "rock"; break;
		case ELEMENTS.bug : return "bug"; break;
		case ELEMENTS.ghost : return "ghost"; break;
		case ELEMENTS.psychic : return "psychic"; break;
		case ELEMENTS.earth : return "earth"; break;
		case ELEMENTS.dragon : return "dragon"; break;
		case ELEMENTS.normal : return "normal"; break
	}
}
enum PLAYERS {
	Nils,
	Ida,
	Jonathan
}
function playersToName(varEnum) {
	switch(varEnum) {
		case PLAYERS.Nils : return "Nils"; break;
		case PLAYERS.Ida : return "Ida"; break;
		case PLAYERS.Jonathan : return "Jonathan"; break;
	}
}

enum MOVES {
	BUBBLE,
	EMBER,
	VINE_WHIP,
	GROWL,
	TAIL_WHIP,
	DEFENCE_CURL,
	PSY_CUTTER,
	SLEEP,
	LEER,
	ROCK_THROW,
	TACKLE
}
function movesToName(varEnum) {
	switch(varEnum) {
		case MOVES.BUBBLE : return "bubble"; break;
		case MOVES.EMBER : return "ember"; break;
		case MOVES.VINE_WHIP : return "vine whip"; break;
		case MOVES.GROWL : return "growl"; break;
		case MOVES.TAIL_WHIP : return "tail whip"; break;
		case MOVES.DEFENCE_CURL : return "defence curl"; break;
		case MOVES.PSY_CUTTER : return "psy cutter"; break;
		case MOVES.SLEEP : return "sleep"; break; 
		case MOVES.LEER : return "leer"; break;
		case MOVES.ROCK_THROW : return "rock throw"; break;
		case MOVES.TACKLE : return "tackle"; break;
	}
} 

enum AILMENTS {
	SLEEPING,
	REGENING
}

function ailmentsToName (varEnum) {
	switch(varEnum) {
		case AILMENTS.SLEEPING : return "sleeping"; break;
		case AILMENTS.REGENING : return "regening"; break;
	}
}