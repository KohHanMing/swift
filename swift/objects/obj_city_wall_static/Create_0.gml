/// @description Insert description here
// You can write your code in this editor

//Static Wall
depth = -y;

var shadow = instance_create_depth(x,y,-10000,obj_wall_shadow);

//if there are adjacent walls, modify created shadows accordingly
//note that it is done here because shadow has no sprite to check collisions with
var has_wall_below = place_meeting(x, y + 1 , obj_wall);
var has_wall_above = place_meeting(x, y - sprite_height - 1, obj_wall);

shadow.wall_width = sprite_width;
shadow.wall_height = sprite_height;

if (!has_wall_below) {
	shadow.has_wall_shadow = true;
	shadow.has_floor_shadow_below = true;
} else {
	shadow.has_wall_shadow = false;
	shadow.has_floor_shadow_below = false;
}

if (!has_wall_above) {
	shadow.has_floor_shadow_above = true;
} else {
	shadow.has_floor_shadow_above = false;
}

