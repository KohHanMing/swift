trigger_doors = true;

is_level_complete = false;

// Spawn point 1
spawn[0,0] = 767;
spawn[0,1] = 351;

// Spawn point 2
spawn[1,0] = 576;
spawn[1,1] = 351;

// Wave 1
ds_list_add(waves, [0, obj_basic_ranged_tutorial, 0, 0]);

// Wave 2
ds_list_add(waves, [1, obj_basic_ranged_tutorial, 0, room_speed * 1]);
ds_list_add(waves, [1, obj_basic_ranged_tutorial, 1, room_speed * 1]);
