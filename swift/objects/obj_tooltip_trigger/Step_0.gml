/// @description Insert description here
// You can write your code in this editor

var inst;
inst = collision_rectangle(bbox_left-16, bbox_top-16, bbox_right+16, bbox_bottom+16, obj_player, false, true);
if (inst != noone) {
	is_displaying_tooltip = true;
	PROMPT.image_alpha = 0;
} else {
	is_displaying_tooltip = false;
	PROMPT.image_alpha = 1;
}