// Inherit the parent event
event_inherited();

// Alpha
if !game_paused image_alpha = lerp(image_alpha,0,0.05);

// Push Enemies Away
var _x = x;
var _y = y
var _range = KNOCKBACK_RANGE
with(obj_enemy) {
	if distance_to_point(_x,_y) > _range continue;
	apply_vector(id,0.5,-point_direction(_x,_y,x,y));
	instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"Instances",obj_particle_subwoofer_knockback)
}