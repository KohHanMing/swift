/// @description Break Pod

center = find_sprite_center(id);
repeat (100) instance_create_layer(center[0]+random_range(-32,32),center[1]+random_range(-32,32),"Instances",obj_particle_enemy_hurt);

spawn_pod_opening();