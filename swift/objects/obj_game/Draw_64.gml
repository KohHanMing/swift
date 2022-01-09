/// @description Draw GUI

// Pause
if(game_paused) {
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, global.gui_width, global.gui_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(global.gui_width / 2, global.gui_height / 2, "game_paused", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	    draw_set_halign(fa_left);
}