/// @description Insert description here
// You can write your code in this editor
var curr_spr = ds_list_find_value(tutorial_sequence_list, current_tutorial);
var curr_alpha;
if (is_visible) {
	curr_alpha = 1;
} else {
	curr_alpha = 0;
}
draw_sprite_ext(curr_spr, 0, 0, 0, 1, 1, 0, c_white, curr_alpha);