event_inherited()
/*if(global.phase=="self_choose")
{
if (instance_exists(global.current_self))
{
if(global.current_self.active=1 and global.turn="self")
{
global.phase="riddle"
var riddle=instance_create(room_width/2,room_height/2,obj_text_bar)
with(riddle)
{
damage=other.damage
move=other.move
}
}
}
}
//{
//{
//ember.damage=damage*20
//}
//}
//}
//}
