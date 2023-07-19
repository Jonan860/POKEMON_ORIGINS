///get_damage(n,damage,attack_bonus)
n2=argument0
damage2=argument1
attack_bonus2=argument2
if(attack_bonus2>=0)
return n2*damage2*(1+attack_bonus2*stat_bonus)
else if(attack_bonus2<0)
return n2*damage2*1/(1-attack_bonus2*stat_bonus)

