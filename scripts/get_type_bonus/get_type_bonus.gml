function get_type_bonus(type_self, type_other) {
switch (type_self){
	case ELEMENTS.fire: 
	switch (type_other){
		case ELEMENTS.grass:
		return 1+type_bonus; break;
		case ELEMENTS.fire:
		return 1/(1+type_bonus);break;
		case ELEMENTS.water:
		return 1/(1+type_bonus);break;
		case ELEMENTS.psychic:
		return 1; break;
		case ELEMENTS.rock:
		return 1/(1+type_bonus);break;
		case ELEMENTS.normal:
		return 1; break;
	};break

	case ELEMENTS.grass:
	switch (type_other){
		case ELEMENTS.grass:
		return 1/(1+type_bonus); break;
		case ELEMENTS.fire:
		return 1/(1+type_bonus); break;
		case ELEMENTS.water:
		return 1+type_bonus; break;
		case ELEMENTS.psychic:
		return 1; break;
		case ELEMENTS.normal:
		return 1; break
		case ELEMENTS.rock:
	return 1+type_bonus; break;
	}; break;

	case ELEMENTS.water:
	switch (type_other){
		case ELEMENTS.grass:
		return 1/(1+type_bonus); break;
		case ELEMENTS.fire:
		return 1+type_bonus; break;
		case ELEMENTS.water:
		return 1/(1+type_bonus); break;
		case ELEMENTS.psychic:
		return 1; break;
		case ELEMENTS.normal:
		return 1; break
		case ELEMENTS.rock:
		return 1+type_bonus; break;
	}; break;

	case ELEMENTS.psychic:
	switch (type_other){
		case ELEMENTS.grass:
		return 1; break;
		case ELEMENTS.fire:
		return 1; break;
		case ELEMENTS.water:
		return 1; break;
		case ELEMENTS.psychic:
		return 1/(1+type_bonus); break;
		case ELEMENTS.normal:
		return 1; break
		case ELEMENTS.rock:
		return 1; break;
	}; break;

	case ELEMENTS.normal:
	switch (type_other){
		case ELEMENTS.grass:
		return 1; break;
		case ELEMENTS.fire:
		return 1; break;
		case ELEMENTS.water:
		return 1; break;
		case ELEMENTS.psychic:
		return 1; break;
		case ELEMENTS.normal:
		return 1; break
		case ELEMENTS.rock:
		return 1/(1+type_bonus); break;
	}; break;

	case ELEMENTS.rock:
	switch (type_other){
		case ELEMENTS.grass:
		return 1; break;
		case ELEMENTS.fire:
		return 1+type_bonus; break;
		case ELEMENTS.water:
		return 1; break;
		case ELEMENTS.psychic:
		return 1; break;
		case ELEMENTS.normal:
		return 1; break
		case ELEMENTS.rock:
		return 1; break;
	}; break;

	}




}
