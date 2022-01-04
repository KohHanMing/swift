/// @description Projectile Explodes

// Spawn Particles
repeat(20) instance_create_layer(x+random_range(-1,1),y+random_range(-1,1),"Instances",obj_particle_honey_pot_expire);
instance_create_layer(x+random_range(-1,1),y+random_range(-1,1),"Instances",obj_particle_honey_pot_explosion);

// Create FLash of Light
create_following_light(id,$FF00FFFF,16);

instance_create_layer(x,y,"Instances",obj_honey_pot_explosion);