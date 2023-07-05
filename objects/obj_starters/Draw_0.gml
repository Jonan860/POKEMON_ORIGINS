switch(room) {
case difficulty : draw_self(); break;
case winner : draw_self(); break;
case game : if (owner.active_pokemon == id) {
		draw_text(426,416,string_hash_to_newline("Stats"))
		draw_text(394,436,string_hash_to_newline("Defence Bonus:" + string(defence_bonus)))
		draw_text(394,456,string_hash_to_newline("Attack Bonus:" + string(attack_bonus)))
		draw_self();
		draw_healthbar(x - 80, y - 100, x + 80, y - 120, HP / max_HP * 100, c_black, c_red, c_lime, 0, true, true);
		draw_text(x, y - 150,string_hash_to_newline(name))

		draw_text(x + 90, y - 120,string_hash_to_newline("HP:" + string(HP)))
		if (distance_to_point(mouse_x, mouse_y) <= 0 ) {
			draw_sprite(info_bubble, 0, x + sprite_width / 8, y - sprite_get_height(info_bubble))
		}
	}; break;
}



