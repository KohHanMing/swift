/// @description Insert description here
// You can write your code in this editor

// for shadow rendering
depth = -y 
var shadow = instance_create_depth(x,y,-10000,obj_wall_shadow);

//if there are adjacent walls, modify created shadows accordingly
//note that it is done here because shadow has no sprite to check collisions with
var has_wall_below = place_meeting(x, y + 48, obj_wall)

if (!has_wall_below) {
	shadow.has_wall_shadow = true;
} else {
	shadow.has_wall_shadow = false;
}

if (!has_wall_below) {
	shadow.has_floor_shadow = true;
} else {
	shadow.has_floor_shadow = false;
}

