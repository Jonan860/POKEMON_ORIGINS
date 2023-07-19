///get_defence_bonus(defence_bonus2)
defence_bonus2=argument0
if(defence_bonus2>=0)
{
return 1/(1+defence_bonus2*stat_bonus)
}
else
{
return 1-defence_bonus2*stat_bonus
}
