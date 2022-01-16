/// @description Insert description here
// You can write your code in this editor
var ref_x = camera_get_view_x(obj_camera.CAMERA);
var ref_y = camera_get_view_y(obj_camera.CAMERA);
var offset_x = obj_camera.VIEW_W*0.85;
var offset_y = obj_camera.VIEW_H*0.05;
var border_w = MINIMAP_W/window_get_width()*obj_camera.VIEW_W;
var border_h = MINIMAP_H/window_get_height()*obj_camera.VIEW_H;

draw_set_color(c_yellow);
draw_rectangle(
	ref_x+offset_x-3, 
	ref_y+offset_y-3, 
	ref_x+offset_x+border_w+2, 
	ref_y+offset_y+border_h+2, 
	false);

with (obj_wall) {
	draw_set_color(c_white);
	draw_rectangle(x, y+obj_minimap.Y_OFFSET-sprite_height/2, x+sprite_width, y+obj_minimap.Y_OFFSET, false);
}

with (obj_hole) {
	draw_set_color(c_black);
	draw_rectangle(x, y+obj_minimap.Y_OFFSET-sprite_height, x+sprite_width, y+obj_minimap.Y_OFFSET, false);
}

with (obj_enemy) {
	draw_set_color(c_red);
	draw_rectangle(x-sprite_width/2, y+obj_minimap.Y_OFFSET-sprite_height/2, x+sprite_width/2, y+obj_minimap.Y_OFFSET, false);
}

with(obj_player) {
	draw_set_color(c_green);
	draw_rectangle(x-sprite_width/2, y+obj_minimap.Y_OFFSET-sprite_height/2, x+sprite_width/2, y+obj_minimap.Y_OFFSET, false);
}

draw_set_color(c_white);