/// @description Insert description here
// You can write your code in this editor

//Static Wall
depth = -y;

var shadow = instance_create_depth(x,y,-10000,obj_wall_shadow);

var has_wall_below = 0;
var has_wall_above = 0;

with(obj_wall_static) {
	if(id!=other.id) {
		
		// Apparently, physics_test_overlap returns true when objects are beside each other.
		// Here, we make sure that the walls collide if placed leftwards and rightwards to make sure
		// we are not detecting a wall beside.
		
		if (physics_test_overlap(x+1,y+1,0,other)&&physics_test_overlap(x-1,y+1,0,other)) has_wall_above = 1;
		if (physics_test_overlap(x+1,y-1,0,other)&&physics_test_overlap(x-1,y-1,0,other)) has_wall_below = 1;
		
	}
}

show_debug_message(" ");


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

