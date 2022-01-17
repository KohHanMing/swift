function draw_bbox_rectangle() {
	// Draw rectangle based on sprite bbox
	var _minimap_y_offset = obj_minimap.Y_OFFSET;
	draw_rectangle(bbox_left, bbox_bottom + 1 + _minimap_y_offset, bbox_right, bbox_top - 1 + _minimap_y_offset, false);
}

function draw_width_circle() {
	// Draw circle based on sprite width
	var _minimap_y_offset = obj_minimap.Y_OFFSET;
	draw_circle(sprite_x, sprite_y + _minimap_y_offset, sprite_width/2, false);
}

with (obj_wall) {
	draw_set_color(c_white);
	draw_bbox_rectangle();
}

with (obj_hole) {
	draw_set_color(c_black);
	draw_bbox_rectangle();
}

with (obj_enemy) {
	draw_set_color(c_red);
	draw_width_circle();
}

with(obj_player) {
	draw_set_color(c_lime);
	draw_width_circle();
}

draw_set_color(c_white);