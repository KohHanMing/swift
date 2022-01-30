/// @description Projectile Deflected

// Inherit the parent event
event_inherited();

repeat(10) instance_create_layer(x+random_range(-1,1),y+random_range(-1,1),"Instances",obj_particle_floater_projectile_expire);
