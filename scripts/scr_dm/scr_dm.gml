function scr_dm() {

	with(obj_starters)
		if(active){
			if (global.mewtwo.defence_bonus=0 and attack_bonus=0){
				global.mewtwo.HP=global.mewtwo.HP-20
				}
				else{
				if (global.mewtwo.defence_bonus>=0 and attack_bonus>=0){
						global.mewtwo.HP=global.mewtwo.HP-20*(1-(global.mewtwo.defence_bonus)/(1/global.bonus+global.mewtwo.defence_bonus))*(1+global.bonus*attack_bonus)
				}
				if (global.mewtwo.defence_bonus<=0 and attack_bonus<=0){
					global.mewtwo.HP=global.mewtwo.HP-20*(1-global.bonus*global.mewtwo.defence_bonus)*(1+global.bonus*attack_bonus)
				}
		}
	}




}
