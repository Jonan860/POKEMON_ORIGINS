function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_starters
	global.__objectDepths[1] = 0; // obj_charmander
	global.__objectDepths[2] = 0; // obj_tail_whip
	global.__objectDepths[3] = 0; // obj_squirtle
	global.__objectDepths[4] = 0; // obj_bulbasaur
	global.__objectDepths[5] = 0; // obj_mewtwo
	global.__objectDepths[6] = 0; // obj_geodude
	global.__objectDepths[7] = 0; // obj_unit
	global.__objectDepths[8] = 0; // obj_opponent
	global.__objectDepths[9] = 0; // obj_snorlax
	global.__objectDepths[10] = 0; // obj_ivasaur
	global.__objectDepths[11] = 0; // obj_charmeleon
	global.__objectDepths[12] = 0; // obj_wartortle
	global.__objectDepths[13] = 0; // obj_charmander_button
	global.__objectDepths[14] = 0; // obj_squirtle_button
	global.__objectDepths[15] = 0; // obj_bulbasaur_button
	global.__objectDepths[16] = 0; // obj_starters_button
	global.__objectDepths[17] = 0; // obj_switch_pokemon_button
	global.__objectDepths[18] = 0; // obj_mewtwo_button
	global.__objectDepths[19] = 0; // obj_geodude_button
	global.__objectDepths[20] = 0; // obj_tail_whip_button
	global.__objectDepths[21] = 0; // obj_move_button
	global.__objectDepths[22] = 0; // obj_tackle_button
	global.__objectDepths[23] = -2; // obj_bubble_button
	global.__objectDepths[24] = 0; // obj_damage_button_anv_nd_kod_till_WIN_LOSS
	global.__objectDepths[25] = 0; // obj_growl_button
	global.__objectDepths[26] = 0; // obj_defence_curl_button
	global.__objectDepths[27] = 0; // obj_ember_button
	global.__objectDepths[28] = 0; // obj_wine_whip_button
	global.__objectDepths[29] = 0; // obj_psy_cutter_button
	global.__objectDepths[30] = 0; // obj_leer_button
	global.__objectDepths[31] = 0; // obj_rock_throw_button
	global.__objectDepths[32] = 0; // obj_text_bar
	global.__objectDepths[33] = 0; // obj_nils_button
	global.__objectDepths[34] = 0; // obj_ida_button
	global.__objectDepths[35] = 0; // obj_jonathan_button
	global.__objectDepths[36] = -2; // obj_bubble
	global.__objectDepths[37] = -2; // obj_ember
	global.__objectDepths[38] = -2; // obj_vine_whip
	global.__objectDepths[39] = -2; // obj_psy_cutter
	global.__objectDepths[40] = -1; // obj_growl
	global.__objectDepths[41] = 0; // obj_defence_curl
	global.__objectDepths[42] = 0; // obj_attack_projectile
	global.__objectDepths[43] = -1; // obj_rock_throw
	global.__objectDepths[44] = -1; // obj_leer
	global.__objectDepths[45] = 0; // manager
	global.__objectDepths[46] = 0; // obj_poke_ball_button
	global.__objectDepths[47] = 0; // obj_win_girl
	global.__objectDepths[48] = 0; // obj_lille_skutt
	global.__objectDepths[49] = -10; // obj_poke_ball
	global.__objectDepths[50] = 0; // obj_pikachu
	global.__objectDepths[51] = 0; // obj_skalman
	global.__objectDepths[52] = 0; // obj_bamse
	global.__objectDepths[53] = 0; // object41
	global.__objectDepths[54] = 0; // obj_speech_lille_skutt_boast
	global.__objectDepths[55] = 0; // obj_bamse_cheer
	global.__objectDepths[56] = 0; // obj_hej
	global.__objectDepths[57] = 0; // obj_skalman_cheer
	global.__objectDepths[58] = 0; // obj_amber_tease
	global.__objectDepths[59] = 0; // obj_lille_skutt_winning_boast
	global.__objectDepths[60] = 0; // obj_skalman_speech_time_for_food
	global.__objectDepths[61] = 0; // obj_bamse_concrats
	global.__objectDepths[62] = 0; // obj_jag_ar_bast
	global.__objectDepths[63] = 0; // object63


	global.__objectNames[0] = "obj_starters";
	global.__objectNames[1] = "obj_charmander";
	global.__objectNames[2] = "obj_tail_whip";
	global.__objectNames[3] = "obj_squirtle";
	global.__objectNames[4] = "obj_bulbasaur";
	global.__objectNames[5] = "obj_mewtwo";
	global.__objectNames[6] = "obj_geodude";
	global.__objectNames[7] = "obj_unit";
	global.__objectNames[8] = "obj_opponent";
	global.__objectNames[9] = "obj_snorlax";
	global.__objectNames[10] = "obj_ivasaur";
	global.__objectNames[11] = "obj_charmeleon";
	global.__objectNames[12] = "obj_wartortle";
	global.__objectNames[13] = "obj_charmander_button";
	global.__objectNames[14] = "obj_squirtle_button";
	global.__objectNames[15] = "obj_bulbasaur_button";
	global.__objectNames[16] = "obj_starters_button";
	global.__objectNames[17] = "obj_switch_pokemon_button";
	global.__objectNames[18] = "obj_mewtwo_button";
	global.__objectNames[19] = "obj_geodude_button";
	global.__objectNames[20] = "obj_tail_whip_button";
	global.__objectNames[21] = "obj_move_button";
	global.__objectNames[22] = "obj_tackle_button";
	global.__objectNames[23] = "obj_bubble_button";
	global.__objectNames[24] = "obj_damage_button_anv_nd_kod_till_WIN_LOSS";
	global.__objectNames[25] = "obj_growl_button";
	global.__objectNames[26] = "obj_defence_curl_button";
	global.__objectNames[27] = "obj_ember_button";
	global.__objectNames[28] = "obj_wine_whip_button";
	global.__objectNames[29] = "obj_psy_cutter_button";
	global.__objectNames[30] = "obj_leer_button";
	global.__objectNames[31] = "obj_rock_throw_button";
	global.__objectNames[32] = "obj_text_bar";
	global.__objectNames[33] = "obj_nils_button";
	global.__objectNames[34] = "obj_ida_button";
	global.__objectNames[35] = "obj_jonathan_button";
	global.__objectNames[36] = "obj_bubble";
	global.__objectNames[37] = "obj_ember";
	global.__objectNames[38] = "obj_vine_whip";
	global.__objectNames[39] = "obj_psy_cutter";
	global.__objectNames[40] = "obj_growl";
	global.__objectNames[41] = "obj_defence_curl";
	global.__objectNames[42] = "obj_attack_projectile";
	global.__objectNames[43] = "obj_rock_throw";
	global.__objectNames[44] = "obj_leer";
	global.__objectNames[45] = "manager";
	global.__objectNames[46] = "obj_poke_ball_button";
	global.__objectNames[47] = "obj_win_girl";
	global.__objectNames[48] = "obj_lille_skutt";
	global.__objectNames[49] = "obj_poke_ball";
	global.__objectNames[50] = "obj_pikachu";
	global.__objectNames[51] = "obj_skalman";
	global.__objectNames[52] = "obj_bamse";
	global.__objectNames[53] = "object41";
	global.__objectNames[54] = "obj_speech_lille_skutt_boast";
	global.__objectNames[55] = "obj_bamse_cheer";
	global.__objectNames[56] = "obj_hej";
	global.__objectNames[57] = "obj_skalman_cheer";
	global.__objectNames[58] = "obj_amber_tease";
	global.__objectNames[59] = "obj_lille_skutt_winning_boast";
	global.__objectNames[60] = "obj_skalman_speech_time_for_food";
	global.__objectNames[61] = "obj_bamse_concrats";
	global.__objectNames[62] = "obj_jag_ar_bast";
	global.__objectNames[63] = "object63";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
