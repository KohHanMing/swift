/// @description Insert description here
// You can write your code in this editor

depth = 100;

var shadow = instance_create_depth(x,y,-10000,obj_hole_shadow);

var has_hole_below = 0;
var has_hole_above = 0;

shadow.hole_width = sprite_width;
shadow.hole_height = sprite_height;

var has_hole_below = place_meeting(x,y+1,obj_hole);
var has_hole_above = place_meeting(x,y-1,obj_hole);

shadow.has_shadow_top = !has_hole_above;
shadow.has_shadow_bottom = !has_hole_below;