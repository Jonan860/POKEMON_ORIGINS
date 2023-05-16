if active=1
{
if global.phase!="defence_curl"
{
draw_self();
}
if global.phase=="defence_curl"
{
if(image_yscale==1)
{draw_sprite(spr_defence_curl,0,x,y,)}
else 
if(image_yscale==-1)
{
draw_sprite(spr_defence_curl_miss,0,x,y)
}
}
HP_kvot=HP/max_HP*100
draw_text(x-420,y-190,"Stats")
draw_text(x-470,y-170,"Defence Bonus:"+string(defence_bonus))
draw_text(x-470,y-150,"Attack Bonus:"+string(attack_bonus))
draw_healthbar(x-80,y-180,x+80,y-200,HP_kvot, c_black, c_red, c_lime, 0, true, true);
draw_text(x+90,y-200,"HP:"+string(HP))
}

if(room==winner)
{
event_inherited()
}
