trigger_doors = true;

// Spawn point 1
spawn[0,0] = 1087;
spawn[0,1] = 254;

// Spawn point 2
spawn[1,0] = 1087;
spawn[1,1] = 446;

// Wave 1
ds_list_add(waves, [0, obj_basic_ranged, 0, 0]);
ds_list_add(waves, [0, obj_basic_ranged, 1, 0.5 * room_speed]);
