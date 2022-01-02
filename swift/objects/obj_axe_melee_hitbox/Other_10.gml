/// @description Manual Projectile Collision

center = find_sprite_center(collision_target);
repeat (10) instance_create_layer(center[0]+random_range(-10,10),center[1]+random_range(-10,10),"Instances",obj_particle_axe_hit);
