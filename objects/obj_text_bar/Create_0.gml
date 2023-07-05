move = ""
damage = 1
keyboard_string = ""
n = choose("1","2","3","4","5","6","7","8","9","0")
m = choose("1","2","3","4","5","6","7","8","9","0")
switch(global.player){
case PLAYERS.Jonathan : {
	timer = 10
	alarm[0] = room_speed
}; break;
case PLAYERS.Ida : {
	timer = 15
	alarm[0] = room_speed
}; break;
}


