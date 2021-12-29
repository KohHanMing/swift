/// @description Take Damage

// Damage Particles
repeat(50) instance_create_layer(sprite_x+random_range(-10,10),sprite_y+random_range(-10,10),"Instances",obj_particle_enemy_hurt);
