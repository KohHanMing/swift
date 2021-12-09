/// @description Insert description here
// You can write your code in this editor

var inst;
inst = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true);
if (inst != noone) {
	is_displaying_tooltip = true;
	PROMPT.image_alpha = 0;
} else {
	is_displaying_tooltip = false;
	PROMPT.image_alpha = 1;
}

depth = -(y + 100)