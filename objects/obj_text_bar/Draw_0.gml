draw_self()
draw_set_colour(c_teal)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
var scaleFactor = 2
var text =  question  + "=" + keyboard_string + "\n" + " " + (global.player == PLAYERS.Nils ? "" :  string(timer))
image_xscale = scaleFactor * string_width(text)/sprite_get_width(sprite_index)
image_yscale = scaleFactor * string_height(text) / sprite_get_height(sprite_index)
draw_text_transformed(x, y -  string_height(text), text
, scaleFactor, scaleFactor, 0);	


draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_colour(c_black)

