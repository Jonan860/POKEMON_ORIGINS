event_inherited()
if(room == game) {
	draw_set_color(c_green)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_self()
	var pc;
	pc = (HP / max_HP) * 100;
	statusText = ""
	withList(statusAilmentList, function(ailment) {with(ailment) {
			if(applied) {
				other.statusText += shortName + "/"
			}
		}})
	var barLength = 200; var barHeight = 20; var barX = x - 100; var barY = y - 110
	draw_healthbar(barX, barY, barX + barLength, barY + barHeight, pc, c_black, c_red, c_lime, 0, true, true)
	draw_set_halign(fa_left)
	draw_text(barX + barLength, barY , " HP: " + string(HP))
	draw_text(barX + barLength/2, barY - string_height("a"), name + " " + statusText)
	draw_set_halign(fa_center)
	var stattext = "Stats\n" + "Defence Bonus: " + string(defence_bonus) + "\n" + "Attack Bonus: " + string(attack_bonus)
	draw_text(x + 250, y - 50, stattext)
	//draw_text(x + 250, y - 50, string_hash_to_newline("Stats"))
	//draw_text(x + 200, y - 30, string_hash_to_newline("Defence Bonus: " + string(defence_bonus)))
	//draw_text(x + 200, y - 10, string_hash_to_newline("Attack Bonus: " + string(attack_bonus)))
}