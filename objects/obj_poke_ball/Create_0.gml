	image_xscale *= 0.1; image_yscale *= 0.1
	path_start(ifElseReturn(global.turn == TURNS.LILLESKUTT, path_ball_opponent
	, path_ball_self) , 10, path_action_stop, 1)


