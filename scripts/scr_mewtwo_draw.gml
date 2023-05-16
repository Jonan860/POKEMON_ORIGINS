if(active)
{draw_self()
var pc;
pc = (HP / max_hp) * 100;
draw_healthbar(x+50, y-5, x+250, y-25, pc, c_black, c_red, c_lime, 0, true, true)
draw_text(x+260,y-25,"HP:"+string(HP))
draw_text(x+400,y+50,"Stats")
draw_text(x+350,y+70,"Defence Bonus:"+string(defence_bonus))
draw_text(x+350,y+90,"Attack Bonus"+string(attack_bonus))
}
