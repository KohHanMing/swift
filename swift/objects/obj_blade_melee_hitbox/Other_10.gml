/// @description Manual Projectile Collision

center = find_sprite_center(collision_target);
for (var i=0;i<50;i++) {
	instance_create_layer(center[0]+random_range(-20,20),center[1]+random_range(-20,20),"Instances",obj_particle_blade_hit);
}
