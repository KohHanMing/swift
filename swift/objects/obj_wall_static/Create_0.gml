/// @description Insert description here
// You can write your code in this editor

//Static Wall
depth = -y;

var shadow = instance_create_depth(x,y,-10000,obj_wall_shadow);

var has_wall_above = false;
var has_wall_below = false;

with obj_wall {
	if !object_is_ancestor(object_index,obj_door) && id != other.id {
		with other if place_meeting(x,y-1,other.id) has_wall_above = true;
		with other if place_meeting(x,y+1,other.id) has_wall_below = true;
	}
}

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

