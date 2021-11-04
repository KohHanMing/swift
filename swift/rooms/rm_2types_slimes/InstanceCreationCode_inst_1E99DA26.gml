trigger_doors = false;

// Spawn point 1
spawn[0,0] = 384;
spawn[0,1] = 384;
// Spawn point 2
spawn[1,0] = 512;
spawn[1,1] = 384;
// Spawn point 3
spawn[2,0] = 640;
spawn[2,1] = 384;
// Spawn point 4
spawn[3,0] = 768;
spawn[3,1] = 384;
// Spawn point 5
spawn[4,0] = 384;
spawn[4,1] = 426;
// Spawn point 6
spawn[5,0] = 512;
spawn[5,1] = 426;
// Spawn point 7
spawn[6,0] = 640;
spawn[6,1] = 426;
// Spawn point 8
spawn[7,0] = 768;
spawn[7,1] = 426;

// Wave 1
ds_list_add(waves, [0, obj_melee_slime, 0, 0]);
//ds_list_add(waves, [0, obj_melee_slime, 1, 1 * room_speed]);
//ds_list_add(waves, [0, obj_melee_slime, 2, 1 * room_speed]);
ds_list_add(waves, [0, obj_melee_slime, 3, 0]);

//ds_list_add(waves, [0, obj_ranged_slime, 4, 1 * room_speed]);
ds_list_add(waves, [0, obj_ranged_slime, 5, 1 * room_speed]);
ds_list_add(waves, [0, obj_ranged_slime, 6, 1 * room_speed]);
//ds_list_add(waves, [0, obj_ranged_slime, 7, 1 * room_speed]);
