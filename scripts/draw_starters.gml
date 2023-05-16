if active=1
{
draw_text(x-360,y-130,"Stats")
draw_text(x-410,y-110,"Defence Bonus:"+string(defence_bonus))
draw_text(x-410,y-90,"Attack Bonus:"+string(attack_bonus))

draw_self();
draw_healthbar(x-80,y-100,x+80,y-120,HP/max_HP*100, c_black, c_red, c_lime, 0, true, true);
draw_text(x,y-150,name)

draw_text(x+90,y-120,"HP:"+string(HP))
}
