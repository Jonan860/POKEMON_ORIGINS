
with(obj_starters)
if(active)
{
if (obj_mewtwo.defence_bonus=0 and attack_bonus=0)
{
obj_mewtwo.HP=obj_mewtwo.HP-20}
else
{if (obj_mewtwo.defence_bonus>=0 and attack_bonus>=0)
{obj_mewtwo.HP=obj_mewtwo.HP-20*(1-(obj_mewtwo.defence_bonus)/(1/global.bonus+obj_mewtwo.defence_bonus))*(1+global.bonus*attack_bonus)
}
if (obj_mewtwo.defence_bonus<=0 and attack_bonus<=0)
{obj_mewtwo.HP=obj_mewtwo.HP-20*(1-global.bonus*obj_mewtwo.defence_bonus)*(1+global.bonus*attack_bonus)
}
}
}

