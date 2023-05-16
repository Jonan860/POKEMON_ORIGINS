//if(global.phase=="choose_self" or global.phase=="amber")
if(phase="switch_pokemon")
{
if(global.turn="self" and global.phase!="riddle")
{
if(instance_find(obj_geodude,1).alive and instance_find(obj_geodude,1)!=global.current_self)
{
instance_create(600,450,obj_geodude_button);
}
if(instance_find(obj_charmander,1).alive and instance_find(obj_charmander,1)!=global.current_self)
{
instance_create(600,500,obj_charmander_button);
}
if(instance_find(obj_squirtle,1).alive and instance_find(obj_squirtle,1)!=global.current_self)
{
instance_create(600,550,obj_squirtle_button);
}
if(instance_find(obj_bulbasaur,1).alive and instance_find(obj_bulbasaur,1)!=global.current_self)
{
instance_create(600,600,obj_bulbasaur_button);
}
if(instance_find(obj_mewtwo,1).alive and instance_find(obj_mewtwo,1)!=global.current_self)
{
instance_create(600,650,obj_mewtwo_button);
}
phase="back"
global.phase="amber"
obj_win_girl.active=1
with(obj_move_button)
{
instance_destroy()
}
//with(obj_unit)
//{
//instance_place(1000,1000,self)
//}
with(obj_starters)
{
active=0
}
}
}
else
if(phase=="back")
{
global.current_self.active=1
global.phase="self_choose"
with(obj_starters_button)
{
instance_destroy()
}
obj_win_girl.active=0
phase="switch_pokemon"
}
