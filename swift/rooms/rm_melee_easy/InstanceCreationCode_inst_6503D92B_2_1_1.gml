trigger_doors = true;

// Spawn point 1
spawn[0,0] = 127;
spawn[0,1] = 318;
// Spawn point 2
spawn[1,0] = 191;
spawn[1,1] = 640;

// Wave 1
ds_list_add(waves, [0, obj_basic_ranged, 0, 0]);
// Wave 2
ds_list_add(waves, [1, obj_basic_melee, 1, 2 * room_speed]);
