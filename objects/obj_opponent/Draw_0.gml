if(active){
	draw_self()
	var pc;
	pc = (HP / max_HP) * 100;
	draw_set_valign(fa_top)
	draw_set_valign(fa_left)
	draw_text(x, y - 150, string_hash_to_newline(name))
	draw_healthbar(x - 100, y - 100, x + 100, y - 120, pc, c_black, c_red, c_lime, 0, true, true)
	draw_text(x + 110, y - 120, string_hash_to_newline("HP: " + string(HP)))
	draw_text(x + 250, y - 50, string_hash_to_newline("Stats"))
	draw_text(x + 200, y - 30, string_hash_to_newline("Defence Bonus: " + string(defence_bonus)))
	draw_text(x + 200, y - 10, string_hash_to_newline("Attack Bonus: " + string(attack_bonus)))
}

