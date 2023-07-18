draw_self()
draw_set_colour(c_teal)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_text_transformed(x, y - string_height(question)
, question + "\n" + keyboard_string + "\n" + (global.player == PLAYERS.Nils ? "" :  timer)
, 2, 2, 0);	


draw_set_halign(fa_top)
draw_set_valign(fa_left)
draw_set_colour(c_black)

