// Inherit the parent event
event_inherited();

// Trails!
repeat(1) {
	var trail = instance_create_layer(x,y,"Instances",obj_particle_deadeye_trail);
	apply_vector(trail,1,point_direction(phy_speed_x, phy_speed_y, 0, 0));
	trail.phy_rotation = -point_direction(0, 0, phy_speed_x, phy_speed_y);
}