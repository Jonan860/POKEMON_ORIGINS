if obj_charmander.active==1
{
    obj_charmander.active=0;
    obj_tail_whip.active=1;
}
else
{
 obj_charmander.active=1;
    obj_tail_whip.active=0;
}
alarm_counter=alarm_counter-1
if (alarm_counter>0)
{
alarm[0]=5
}
else
{swap_turn()
global.phase="opponent_choose"
}
