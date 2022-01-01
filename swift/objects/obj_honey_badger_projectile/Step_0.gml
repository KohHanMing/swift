// Inherit the parent event
event_inherited();

// Trails!
repeat(1) {
	var trail = instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Instances",obj_particle_honey_badger_trail);
	apply_vector(trail,random_range(0.5,1),point_direction(0, 0, phy_speed_x, phy_speed_y));
}