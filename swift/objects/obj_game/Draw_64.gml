/// @description Insert description here
// You can write your code in this editor
if(paused) {
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	    draw_set_halign(fa_left);
}