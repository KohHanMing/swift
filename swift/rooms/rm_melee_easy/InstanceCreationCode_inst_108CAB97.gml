trigger_doors = true;

is_level_complete = false;

// Spawn point 1
spawn[0,0] = 544;
spawn[0,1] = 224;
// Spawn point 2
spawn[1,0] = 544;
spawn[1,1] = 320;
// Spawn point 3
spawn[2,0] = 544;
spawn[2,1] = 416;

// Wave 1
ds_list_add(waves, [0, obj_swarmer, 0, 0]);
ds_list_add(waves, [0, obj_swarmer, 1, 0]);
ds_list_add(waves, [0, obj_swarmer, 2, 0]);
