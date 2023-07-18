move = ""
damage = 1
keyboard_string = ""
var n = choose("1","2","3","4","5","6","7","8","9","0")
var m = choose("1","2","3","4","5","6","7","8","9","0")

switch(global.player) {
	case PLAYERS.Ida :  {
		answer = real(n) + real(m)
		question = n + "+" + m
	}; break;
	case PLAYERS.Nils : {
		answer = abs(5 - real(n)) + abs(5 - real(m))
		question = string(abs(5 - real(n))) + "+" + string(abs(5 - real(m)))
	}; break;
	case PLAYERS.Jonathan : {
		answer = (10 * real(n) + real(m)) * (10 * real(n) + real(m));
		question = "(" + string(10 * real(n) + real(m)) + ")^2"
	}; break;
}
switch(global.player)	{
	case PLAYERS.Jonathan : timer = 10; break;
	case PLAYERS.Ida : timer = 15; break;
	case PLAYERS.Nils : timer = 99999; break;
}
alarm[0] = room_speed


