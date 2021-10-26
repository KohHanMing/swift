trigger_doors = true;

is_level_complete = false;

// Spawn point 1
spawn[0,0] = 384;
spawn[0,1] = 448;
// Spawn point 2
spawn[1,0] = 384;
spawn[1,1] = 576;
// Spawn point 3
spawn[2,0] = 768;
spawn[2,1] = 448;
// Spawn point 4
spawn[3,0] = 768;
spawn[3,1] = 576;

// Wave 1
ds_list_add(waves, [0, obj_melee_slime, 0, 1 * room_speed]);
//ds_list_add(waves, [0, obj_melee_slime, 1, 1.5 * room_speed]);
ds_list_add(waves, [0, obj_melee_slime, 2, 2 * room_speed]);
//ds_list_add(waves, [0, obj_melee_slime, 3, 2.5 * room_speed]);
