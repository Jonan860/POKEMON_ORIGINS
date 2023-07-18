event_inherited()
switch(room) {
case difficulty : draw_self(); break;
case winner : draw_self(); break;
case game : {
		draw_set_halign(fa_center)
		draw_self()
		draw_set_color(c_black)
		var statText = "Stats\n" + "Defence Bonus: " + string(defence_bonus) + "\n" + "Attack Bonus: " + string(attack_bonus)
		draw_text(465, 416, statText)
		var barLength = 160; var barX = x - 80; var barY = y - 120; var barHeight = 20
		draw_healthbar(barX, barY, x + barLength, barY + barHeight   , HP / max_HP * 100, c_black, c_red, c_lime, 0, true, true);
		statusText = ""	
		withList(statusAilmentList, function(ailment) {with(ailment) {
			if(applied) {
				other.statusText += shortName + "/"
			}
		}})
		draw_text(barX + barLength/2, barY - string_height("a"), name + " " + statusText)
		draw_set_halign(fa_left)
		draw_text(x + barLength, barY, " HP:" + string(HP))
		if (distance_to_point(mouse_x, mouse_y) <= 0 ) {
			draw_sprite(info_bubble, 0, x + sprite_width / 8, y - sprite_get_height(info_bubble))
		}
	}; break;
}



